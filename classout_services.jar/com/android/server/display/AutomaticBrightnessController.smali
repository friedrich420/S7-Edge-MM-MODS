.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;,
        Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;,
        Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final HBM_LEVEL_SYSFS_PATH:Ljava/lang/String; = "/sys/class/backlight/panel/auto_brightness_level"

.field public static HBM_USER_ENABLE:Z = false

.field private static final MANUAL_LUX_LIMIT:I = 0x64

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_PRINT_LAST_LIGHT_SENSOR_EVENT:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static SPECIFIC_HBM_FEATURE:Z = false

.field private static final SPECIFIC_HBM_LUX:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TAG_PAB:Ljava/lang/String; = "[PAB] "

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710


# instance fields
.field private final AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final COMMON_LUX_PATH:Ljava/lang/String;

.field private final MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

.field private final OFFSET_FIX:I

.field private final OFFSET_SUB:I

.field private final OFFSET_USER:I

.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private final TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final TCON_LUX_PATH:Ljava/lang/String;

.field private lastLightSensorEventTime:J

.field private lastLightSensorValue:F

.field private lastRawBrightnessValue:F

.field private mAmbientCandela:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAutoBrightnessForEbookOnly:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

.field private mExistAutoBrightnessLevelPath:Z

.field private mExistCommonLuxPath:Z

.field private mExistMdnieAutoBrightnessLevelPath:Z

.field private mExistTconBrightnessModePath:Z

.field private mExistTconLuxPath:Z

.field private mHBMDisableLevel:I

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHandlerRegisterInSeperate:Landroid/os/Handler;

.field private mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

.field private mHasRetailModeApp:Z

.field private mHighHysteresis:F

.field private mIsLockZone:Z

.field private mIsSupportedSensorHubAutoBrightness:Z

.field private mLastHBM:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastObservedSensorHubLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLastTemporaryScreenBrightnessSettingOverride:I

.field private mLatestAnimationTarget:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLockPAB:Ljava/lang/Object;

.field private mLowHysteresis:F

.field private mManualAdjustment:F

.field private mNeedToAddPersonalAutoBrightnessPoint:Z

.field private mPendingScreenAutoBrightness:Z

.field private mPendingScreenBrightnessSetting:I

.field private mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

.field private mPrevAutoBrightnessLevel:I

.field private mPrevCommonLux:I

.field private mPrevTconBrightnessMode:Z

.field private mPrevTconLuxLevel:I

.field private mPrevUsingVariableMaxManualBrightness:Z

.field private mRecentLightSamples:I

.field private mRecentSensorHubSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSECAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mScreenBrightnessModeSetting:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private final mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

.field private final mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingAutoBrightness:Z

.field private mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTiltAngle:F

.field private final mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mUseAutoBrightness:Z

.field private mUseManualAutoBrightness:Z

.field private mUseSystemPowerSaveMode:Z

.field private mUserSwitched:Z

.field private mUsingVariableMaxManualBrightness:Z

.field private mWasTconMaxLevel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 134
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, USE_TWILIGHT_ADJUSTMENT:Z

    .line 336
    const/4 v0, 0x1

    sput-boolean v0, HBM_USER_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/hardware/scontext/SContextManager;ZLcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Landroid/content/Context;)V
    .registers 28
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "brighteningLightDebounceConfig"    # J
    .param p12, "darkeningLightDebounceConfig"    # J
    .param p14, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p15, "sContextManager"    # Landroid/hardware/scontext/SContextManager;
    .param p16, "isSupportedSensorHubAutoBrightness"    # Z
    .param p17, "dynamicAutoBrightnessConfig"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p18, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const-string v4, "[DAB] "

    iput-object v4, p0, TAG_DAB:Ljava/lang/String;

    .line 238
    const-string v4, "[sensor] "

    iput-object v4, p0, TAG_SENSOR:Ljava/lang/String;

    .line 242
    const/4 v4, 0x0

    iput-boolean v4, p0, mAutoBrightnessForEbookOnly:Z

    .line 243
    const/4 v4, 0x0

    iput-boolean v4, p0, mUseAutoBrightness:Z

    .line 244
    const/4 v4, 0x0

    iput-boolean v4, p0, mUseSystemPowerSaveMode:Z

    .line 247
    const/4 v4, -0x1

    iput v4, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 248
    const/4 v4, -0x1

    iput v4, p0, mLastTemporaryScreenBrightnessSettingOverride:I

    .line 252
    const-string v4, "/sys/class/backlight/panel/auto_brightness"

    iput-object v4, p0, AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 253
    const-string v4, "/sys/class/tcon/tcon/auto_br"

    iput-object v4, p0, TCON_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    .line 254
    const-string v4, "/sys/class/tcon/tcon/lux"

    iput-object v4, p0, TCON_LUX_PATH:Ljava/lang/String;

    .line 255
    const-string v4, "/sys/class/lcd/panel/lux"

    iput-object v4, p0, COMMON_LUX_PATH:Ljava/lang/String;

    .line 256
    const-string v4, "/sys/class/mdnie/mdnie/auto_brightness"

    iput-object v4, p0, MDNIE_AUTO_BRIGHTNESS_LEVEL_PATH:Ljava/lang/String;

    .line 257
    const/4 v4, 0x1

    iput-boolean v4, p0, mExistAutoBrightnessLevelPath:Z

    .line 258
    const/4 v4, 0x1

    iput-boolean v4, p0, mExistTconBrightnessModePath:Z

    .line 259
    const/4 v4, 0x1

    iput-boolean v4, p0, mExistTconLuxPath:Z

    .line 260
    const/4 v4, 0x1

    iput-boolean v4, p0, mExistCommonLuxPath:Z

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, mExistMdnieAutoBrightnessLevelPath:Z

    .line 262
    const/4 v4, -0x1

    iput v4, p0, mPrevTconLuxLevel:I

    .line 263
    const/4 v4, 0x0

    iput-boolean v4, p0, mPrevTconBrightnessMode:Z

    .line 264
    const/4 v4, -0x1

    iput v4, p0, mPrevCommonLux:I

    .line 265
    const/4 v4, -0x1

    iput v4, p0, mPrevAutoBrightnessLevel:I

    .line 269
    const/4 v4, 0x0

    iput-boolean v4, p0, mHasRetailModeApp:Z

    .line 278
    const/4 v4, -0x1

    iput v4, p0, mLatestAnimationTarget:I

    .line 279
    const/4 v4, 0x0

    iput-boolean v4, p0, mPendingScreenAutoBrightness:Z

    .line 289
    const/4 v4, 0x5

    iput v4, p0, mHBMDisableLevel:I

    .line 293
    const/4 v4, 0x0

    iput-boolean v4, p0, mUsingVariableMaxManualBrightness:Z

    .line 294
    const/4 v4, 0x0

    iput-boolean v4, p0, mPrevUsingVariableMaxManualBrightness:Z

    .line 299
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsSupportedSensorHubAutoBrightness:Z

    .line 315
    const/4 v4, -0x1

    iput v4, p0, mScreenAutoBrightness:I

    .line 318
    const/4 v4, 0x0

    iput v4, p0, mScreenAutoBrightnessAdjustment:F

    .line 321
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, mLastScreenAutoBrightnessGamma:F

    .line 711
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    .line 736
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    .line 1027
    const/4 v4, 0x0

    iput v4, p0, mLowHysteresis:F

    .line 1028
    const/4 v4, 0x0

    iput v4, p0, mHighHysteresis:F

    .line 1084
    const/high16 v4, 0x437f0000    # 255.0f

    iput v4, p0, lastRawBrightnessValue:F

    .line 1085
    const/4 v4, 0x0

    iput-boolean v4, p0, mLastHBM:Z

    .line 1086
    const/4 v4, 0x0

    iput-boolean v4, p0, mWasTconMaxLevel:Z

    .line 1249
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, mTiltAngle:F

    .line 1250
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsLockZone:Z

    .line 1252
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mTiltListener:Landroid/hardware/SensorEventListener;

    .line 1439
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1479
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    .line 1512
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 1784
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, mLockPAB:Ljava/lang/Object;

    .line 1800
    const/4 v4, 0x0

    iput v4, p0, OFFSET_FIX:I

    .line 1801
    const/4 v4, 0x1

    iput v4, p0, OFFSET_USER:I

    .line 1802
    const/4 v4, 0x2

    iput v4, p0, OFFSET_SUB:I

    .line 1803
    const/4 v4, 0x0

    iput-boolean v4, p0, mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1804
    const/4 v4, -0x1

    iput v4, p0, mPendingScreenBrightnessSetting:I

    .line 359
    move-object/from16 v0, p18

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 362
    iput-object p1, p0, mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 363
    const-class v4, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/twilight/TwilightManager;

    iput-object v4, p0, mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 364
    iput-object p3, p0, mSensorManager:Landroid/hardware/SensorManager;

    .line 365
    iput-object p4, p0, mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 366
    iput p6, p0, mScreenBrightnessRangeMinimum:I

    .line 367
    move/from16 v0, p7

    iput v0, p0, mScreenBrightnessRangeMaximum:I

    .line 368
    iput p5, p0, mLightSensorWarmUpTimeConfig:I

    .line 369
    move/from16 v0, p8

    iput v0, p0, mDozeScaleFactor:F

    .line 370
    move/from16 v0, p9

    iput v0, p0, mLightSensorRate:I

    .line 371
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, mBrighteningLightDebounceConfig:J

    .line 372
    const-wide/16 v4, 0xbb8

    iput-wide v4, p0, mDarkeningLightDebounceConfig:J

    .line 373
    move/from16 v0, p14

    iput-boolean v0, p0, mResetAmbientLuxAfterWarmUpConfig:Z

    .line 375
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v4, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v4, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 376
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v5, p0, mLightSensorRate:I

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(J)V

    iput-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 379
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, mLightSensor:Landroid/hardware/Sensor;

    .line 381
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, mTiltSensor:Landroid/hardware/Sensor;

    .line 385
    sget-boolean v4, USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_11f

    .line 386
    iget-object v4, p0, mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v5, p0, mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v6, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v4, v5, v6}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 389
    :cond_11f
    move-object/from16 v0, p15

    iput-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 390
    move/from16 v0, p16

    iput-boolean v0, p0, mIsSupportedSensorHubAutoBrightness:Z

    .line 391
    move-object/from16 v0, p17

    iput-object v0, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 392
    new-instance v4, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v4, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 394
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RegisterInSeperateThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    .line 395
    iget-object v4, p0, mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, mHandlerRegisterInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    .line 401
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 402
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v5, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Handler;)V

    iput-object v4, p0, mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    .line 407
    invoke-virtual {p0}, check_HBM_Detail()V

    .line 411
    iget-object v5, p0, mLockPAB:Ljava/lang/Object;

    monitor-enter v5

    .line 412
    :try_start_162
    new-instance v4, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-direct {v4, p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v4, p0, mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    .line 413
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 414
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v4

    iput v4, p0, mScreenBrightnessSettingDefault:I

    .line 415
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, mSettingsObserver:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 418
    const/4 v4, 0x0

    invoke-direct {p0, v4}, updatePersonalScreenAutoBrightnessTableLocked(Z)V

    .line 419
    monitor-exit v5

    .line 422
    return-void

    .line 419
    .end local v2    # "pm":Landroid/os/PowerManager;
    :catchall_18e
    move-exception v4

    monitor-exit v5
    :try_end_190
    .catchall {:try_start_162 .. :try_end_190} :catchall_18e

    throw v4
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mLockPAB:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, updatePersonalScreenAutoBrightnessTableLocked(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, mLightSensorRate:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mTiltListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mTiltSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/AutomaticBrightnessController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, mTiltAngle:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, mTiltAngle:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/AutomaticBrightnessController;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, updateAmbientLuxSEC(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    invoke-direct {p0}, printLastLightSensorEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, mNeedToAddPersonalAutoBrightnessPoint:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, mNeedToAddPersonalAutoBrightnessPoint:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/display/AutomaticBrightnessController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, mPendingScreenBrightnessSetting:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, updateAutoBrightnessSEC(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/AutomaticBrightnessController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$2512(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iget v0, p0, mRecentLightSamples:I

    add-int/2addr v0, p1

    iput v0, p0, mRecentLightSamples:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, lastLightSensorEventTime:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, lastLightSensorValue:F

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/AutomaticBrightnessController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, mAmbientLux:F

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, mAmbientLux:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/AutomaticBrightnessController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget v0, p0, mAmbientCandela:F

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, mAmbientCandela:F

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, mLastObservedSensorHubLuxTime:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, mAmbientLuxValid:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, mUserSwitched:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .prologue
    .line 97
    iput-wide p1, p0, mLightSensorEnableTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, mIsSupportedSensorHubAutoBrightness:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-boolean v0, p0, mAutoBrightnessForEbookOnly:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 97
    iget-object v0, p0, mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 814
    iget v0, p0, mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mRecentLightSamples:I

    .line 815
    iget-object v0, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 816
    iget-object v0, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 819
    iput p3, p0, mLastObservedLux:F

    .line 820
    iput-wide p1, p0, mLastObservedLuxTime:J

    .line 821
    return-void
.end method

.method private applyLightSensorMeasurementSEC(JF)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 769
    iget v4, p0, mRecentLightSamples:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mRecentLightSamples:I

    .line 770
    iget v4, p0, mRecentLightSamples:I

    if-ne v4, v7, :cond_13

    .line 771
    iput p3, p0, mSECAverageLux:F

    .line 808
    :goto_e
    iput p3, p0, mLastObservedLux:F

    .line 809
    iput-wide p1, p0, mLastObservedLuxTime:J

    .line 810
    return-void

    .line 775
    :cond_13
    const/4 v1, 0x1

    .line 777
    .local v1, "useLockZone":Z
    const/high16 v4, 0x43960000    # 300.0f

    cmpl-float v4, p3, v4

    if-lez v4, :cond_72

    .line 778
    const/4 v1, 0x0

    .line 784
    :goto_1b
    if-eqz v1, :cond_65

    .line 785
    iget-boolean v0, p0, mIsLockZone:Z

    .line 786
    .local v0, "prevLockZone":Z
    iget v4, p0, mTiltAngle:F

    const/high16 v5, 0x428c0000    # 70.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_74

    .line 787
    iput-boolean v7, p0, mIsLockZone:Z

    .line 791
    :goto_29
    iget-boolean v4, p0, mIsLockZone:Z

    if-eqz v4, :cond_3b

    iget-boolean v4, p0, mLastHBM:Z

    if-eqz v4, :cond_3b

    iget v4, p0, mLowHysteresis:F

    cmpg-float v4, p3, v4

    if-gez v4, :cond_3b

    .line 792
    iput-boolean v6, p0, mIsLockZone:Z

    .line 793
    iget p3, p0, mLowHysteresis:F

    .line 795
    :cond_3b
    iget-boolean v4, p0, mIsLockZone:Z

    if-eqz v4, :cond_47

    iget v4, p0, mAmbientLux:F

    cmpg-float v4, p3, v4

    if-gez v4, :cond_47

    .line 796
    iget p3, p0, mAmbientLux:F

    .line 798
    :cond_47
    iget-boolean v4, p0, mIsLockZone:Z

    if-eq v0, v4, :cond_65

    .line 799
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyLightSensorMeasurementSEC : mIsLockZone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, mIsLockZone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .end local v0    # "prevLockZone":Z
    :cond_65
    iget-wide v4, p0, mLastObservedLuxTime:J

    sub-long v2, p1, v4

    .line 804
    .local v2, "timeDelta":J
    iget v4, p0, mLastObservedLux:F

    add-float/2addr v4, p3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iput v4, p0, mSECAverageLux:F

    goto :goto_e

    .line 780
    .end local v2    # "timeDelta":J
    :cond_72
    const/4 v1, 0x1

    goto :goto_1b

    .line 789
    .restart local v0    # "prevLockZone":Z
    :cond_74
    iput-boolean v6, p0, mIsLockZone:Z

    goto :goto_29
.end method

.method private calculateAmbientLux(J)F
    .registers 16
    .param p1, "now"    # J

    .prologue
    .line 838
    iget-object v10, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 839
    .local v0, "N":I
    if-nez v0, :cond_12

    .line 840
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/high16 v10, -0x40800000    # -1.0f

    .line 863
    :goto_11
    return v10

    .line 843
    :cond_12
    const/4 v5, 0x0

    .line 844
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 845
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 846
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_39

    .line 847
    iget-object v10, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 848
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, calculateWeight(JJ)F

    move-result v9

    .line 849
    .local v9, "weight":F
    iget-object v10, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 855
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 856
    iget-object v10, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 857
    move-wide v2, v6

    .line 846
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 863
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_39
    div-float v10, v5, v8

    goto :goto_11
.end method

.method private static calculateWeight(JJ)F
    .registers 6
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 867
    invoke-static {p2, p3}, weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .registers 3

    .prologue
    .line 1347
    iget-boolean v0, p0, mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_d

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, mBrightnessAdjustmentSamplePending:Z

    .line 1349
    iget-object v0, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1351
    :cond_d
    return-void
.end method

.method private changeModeInSensorHubAutoBrightness(I)V
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 664
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 665
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v1, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x27

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 666
    return-void
.end method

.method private checkMarkerUserDetach(I)V
    .registers 5
    .param p1, "temporaryScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v2, -0x1

    .line 652
    iget-object v1, p0, mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_4
    iget v0, p0, mTemporaryScreenBrightnessSettingOverride:I

    iput v0, p0, mLastTemporaryScreenBrightnessSettingOverride:I

    .line 654
    iput p1, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 655
    iget v0, p0, mLastTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, v2, :cond_16

    iget v0, p0, mTemporaryScreenBrightnessSettingOverride:I

    if-ne v0, v2, :cond_16

    .line 656
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updatePersonalScreenAutoBrightnessTableLocked(Z)V

    .line 658
    :cond_16
    monitor-exit v1

    .line 659
    return-void

    .line 658
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private clampScreenBrightness(I)I
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 1327
    iget v0, p0, mScreenBrightnessRangeMinimum:I

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1354
    iget-boolean v0, p0, mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_60

    .line 1355
    iput-boolean v3, p0, mBrightnessAdjustmentSamplePending:Z

    .line 1356
    iget-boolean v0, p0, mAmbientLuxValid:Z

    if-eqz v0, :cond_60

    iget v0, p0, mScreenAutoBrightness:I

    if-ltz v0, :cond_60

    .line 1366
    const v0, 0x88b8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, mScreenAutoBrightnessAdjustment:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, mAmbientLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, mScreenAutoBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, mLastScreenAutoBrightnessGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1377
    :cond_60
    return-void
.end method

.method private getAmbientLuxAndCandelaFromSensorHub()V
    .registers 6

    .prologue
    .line 1846
    const/4 v1, 0x2

    .line 1847
    .local v1, "mode":I
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    .line 1848
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;

    const/16 v4, 0x27

    invoke-virtual {v2, v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 1850
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[PAB] request AmbientLuxAndCandelaFromSensorHub"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    return-void
.end method

.method private static getTwilightGamma(JJJ)F
    .registers 16
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1380
    cmp-long v2, p2, v6

    if-ltz v2, :cond_1c

    cmp-long v2, p4, v6

    if-ltz v2, :cond_1c

    cmp-long v2, p0, p2

    if-ltz v2, :cond_1c

    cmp-long v2, p0, p4

    if-lez v2, :cond_1e

    :cond_1c
    move v0, v1

    .line 1395
    :cond_1d
    :goto_1d
    return v0

    .line 1385
    :cond_1e
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_2d

    .line 1386
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_1d

    .line 1390
    :cond_2d
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1d

    .line 1391
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_1d
.end method

.method private handleLightSensorEvent(JF)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 754
    iget-object v0, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 760
    invoke-direct {p0, p1, p2, p3}, applyLightSensorMeasurementSEC(JF)V

    .line 761
    invoke-direct {p0, p1, p2}, updateAmbientLuxSEC(J)V

    .line 763
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 877
    iget-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 878
    .local v0, "N":I
    move-wide v2, p1

    .line 879
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_17

    .line 880
    iget-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1b

    .line 885
    :cond_17
    iget-wide v4, p0, mBrighteningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 883
    :cond_1b
    iget-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 879
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 889
    iget-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 890
    .local v0, "N":I
    move-wide v2, p1

    .line 891
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_17

    .line 892
    iget-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1b

    .line 897
    :cond_17
    iget-wide v4, p0, mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 895
    :cond_1b
    iget-object v4, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 891
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method private notifySurfaceFlinger()V
    .registers 6

    .prologue
    .line 1764
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1765
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1f

    .line 1766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1767
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1768
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    const/16 v2, 0x3ee

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 1777
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    :cond_1f
    :goto_1f
    return-void

    .line 1772
    :catch_20
    move-exception v2

    goto :goto_1f
.end method

.method private prepareBrightnessAdjustmentSample()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 1332
    iget-boolean v0, p0, mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_27

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, mBrightnessAdjustmentSamplePending:Z

    .line 1334
    iget v0, p0, mScreenAutoBrightnessAdjustment:F

    iput v0, p0, mBrightnessAdjustmentSampleOldAdjustment:F

    .line 1335
    iget-boolean v0, p0, mAmbientLuxValid:Z

    if-eqz v0, :cond_24

    iget v0, p0, mAmbientLux:F

    :goto_12
    iput v0, p0, mBrightnessAdjustmentSampleOldLux:F

    .line 1336
    iget v0, p0, mScreenAutoBrightness:I

    iput v0, p0, mBrightnessAdjustmentSampleOldBrightness:I

    .line 1337
    iget v0, p0, mLastScreenAutoBrightnessGamma:F

    iput v0, p0, mBrightnessAdjustmentSampleOldGamma:F

    .line 1342
    :goto_1c
    iget-object v0, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1344
    return-void

    .line 1335
    :cond_24
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_12

    .line 1339
    :cond_27
    iget-object v0, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1c
.end method

.method private printLastLightSensorEvent()V
    .registers 5

    .prologue
    .line 1432
    iget-boolean v0, p0, mLightSensorEnabled:Z

    if-eqz v0, :cond_2a

    .line 1433
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DAB] printLastLightSensorEvent : lastLightSensorEventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, lastLightSensorEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastLightSensorValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, lastLightSensorValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_2a
    return-void
.end method

.method private sendLuxLevel(FZ)V
    .registers 12
    .param p1, "lux"    # F
    .param p2, "isAutoBrightnessEnabled"    # Z

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v6, 0x43160000    # 150.0f

    const/4 v5, 0x6

    const v4, 0x471c4000    # 40000.0f

    .line 1658
    const/4 v1, 0x0

    .line 1659
    .local v1, "tconLuxLevel":I
    cmpg-float v2, p1, v6

    if-gez v2, :cond_a0

    const/4 v1, 0x0

    .line 1662
    :goto_10
    iget-boolean v2, p0, mExistTconLuxPath:Z

    if-eqz v2, :cond_1f

    iget v2, p0, mPrevTconLuxLevel:I

    if-eq v2, v1, :cond_1f

    .line 1663
    iput v1, p0, mPrevTconLuxLevel:I

    .line 1664
    const-string v2, "/sys/class/tcon/tcon/lux"

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1668
    :cond_1f
    iget-boolean v2, p0, mExistTconBrightnessModePath:Z

    if-eqz v2, :cond_31

    iget-boolean v2, p0, mPrevTconBrightnessMode:Z

    if-eq v2, p2, :cond_31

    .line 1669
    iput-boolean p2, p0, mPrevTconBrightnessMode:Z

    .line 1670
    const-string v3, "/sys/class/tcon/tcon/auto_br"

    if-eqz p2, :cond_ad

    const/4 v2, 0x1

    :goto_2e
    invoke-static {v3, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1674
    :cond_31
    iget-boolean v2, p0, mExistCommonLuxPath:Z

    if-eqz v2, :cond_43

    iget v2, p0, mPrevCommonLux:I

    float-to-int v3, p1

    if-eq v2, v3, :cond_43

    .line 1675
    float-to-int v2, p1

    iput v2, p0, mPrevCommonLux:I

    .line 1676
    const-string v2, "/sys/class/lcd/panel/lux"

    float-to-int v3, p1

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1680
    :cond_43
    const/4 v0, 0x0

    .line 1683
    .local v0, "autoBrightnessLevel":I
    sget-boolean v2, SPECIFIC_HBM_FEATURE:Z

    if-eqz v2, :cond_10a

    .line 1684
    if-eqz p2, :cond_107

    .line 1685
    cmpg-float v2, p1, v7

    if-gez v2, :cond_af

    const/4 v0, 0x1

    .line 1700
    :cond_4f
    :goto_4f
    if-lt v0, v5, :cond_5b

    iget-boolean v2, p0, mUseSystemPowerSaveMode:Z

    if-eqz v2, :cond_5b

    .line 1701
    add-int/lit8 v2, v0, -0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1717
    :cond_5b
    :goto_5b
    sget-boolean v2, HBM_USER_ENABLE:Z

    if-nez v2, :cond_6a

    if-lt v0, v5, :cond_6a

    .line 1718
    iget v0, p0, mHBMDisableLevel:I

    .line 1719
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[DAB] HBM is not working cause user request "

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_6a
    iget-boolean v2, p0, mSettingAutoBrightness:Z

    if-nez v2, :cond_84

    iget-boolean v2, p0, mUsingVariableMaxManualBrightness:Z

    if-nez v2, :cond_84

    if-lt v0, v5, :cond_84

    .line 1729
    iget v0, p0, mHBMDisableLevel:I

    .line 1730
    iget-boolean v2, p0, mPrevUsingVariableMaxManualBrightness:Z

    if-eqz v2, :cond_84

    .line 1731
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "[DAB] HBM is not working in (manualmode) && (brightness < 255)"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v2, 0x0

    iput-boolean v2, p0, mPrevUsingVariableMaxManualBrightness:Z

    .line 1739
    :cond_84
    cmpl-float v2, p1, v4

    if-nez v2, :cond_8b

    if-nez p2, :cond_8b

    .line 1740
    const/4 v0, 0x6

    .line 1743
    :cond_8b
    iget v2, p0, mPrevAutoBrightnessLevel:I

    if-eq v2, v0, :cond_9f

    .line 1744
    iput v0, p0, mPrevAutoBrightnessLevel:I

    .line 1745
    iget-boolean v2, p0, mExistAutoBrightnessLevelPath:Z

    if-eqz v2, :cond_9a

    .line 1746
    const-string v2, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v2, v0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1750
    :cond_9a
    const-string v2, "/sys/class/mdnie/mdnie/auto_brightness"

    invoke-static {v2, v0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1758
    :cond_9f
    return-void

    .line 1660
    .end local v0    # "autoBrightnessLevel":I
    :cond_a0
    const v2, 0x469c4000    # 20000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_aa

    const/4 v1, 0x1

    goto/16 :goto_10

    .line 1661
    :cond_aa
    const/4 v1, 0x2

    goto/16 :goto_10

    .line 1670
    :cond_ad
    const/4 v2, 0x0

    goto :goto_2e

    .line 1686
    .restart local v0    # "autoBrightnessLevel":I
    :cond_af
    cmpg-float v2, p1, v6

    if-gez v2, :cond_b5

    const/4 v0, 0x2

    goto :goto_4f

    .line 1687
    :cond_b5
    cmpg-float v2, p1, v8

    if-gez v2, :cond_bb

    const/4 v0, 0x3

    goto :goto_4f

    .line 1688
    :cond_bb
    const v2, 0x453b8000    # 3000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_c4

    const/4 v0, 0x4

    goto :goto_4f

    .line 1689
    :cond_c4
    const/high16 v2, 0x457a0000    # 4000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_cc

    const/4 v0, 0x6

    goto :goto_4f

    .line 1690
    :cond_cc
    const v2, 0x459c4000    # 5000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_d6

    const/4 v0, 0x7

    goto/16 :goto_4f

    .line 1691
    :cond_d6
    const v2, 0x461c4000    # 10000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_e1

    const/16 v0, 0x8

    goto/16 :goto_4f

    .line 1692
    :cond_e1
    const v2, 0x469c4000    # 20000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_ec

    const/16 v0, 0x9

    goto/16 :goto_4f

    .line 1693
    :cond_ec
    const v2, 0x46ea6000    # 30000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_f7

    const/16 v0, 0xa

    goto/16 :goto_4f

    .line 1694
    :cond_f7
    cmpg-float v2, p1, v4

    if-gez v2, :cond_ff

    const/16 v0, 0xb

    goto/16 :goto_4f

    .line 1695
    :cond_ff
    cmpl-float v2, p1, v4

    if-ltz v2, :cond_4f

    const/16 v0, 0xc

    goto/16 :goto_4f

    .line 1697
    :cond_107
    const/4 v0, 0x0

    goto/16 :goto_4f

    .line 1706
    :cond_10a
    if-eqz p2, :cond_135

    .line 1707
    cmpg-float v2, p1, v7

    if-gez v2, :cond_113

    const/4 v0, 0x1

    goto/16 :goto_5b

    .line 1708
    :cond_113
    cmpg-float v2, p1, v6

    if-gez v2, :cond_11a

    const/4 v0, 0x2

    goto/16 :goto_5b

    .line 1709
    :cond_11a
    cmpg-float v2, p1, v8

    if-gez v2, :cond_121

    const/4 v0, 0x3

    goto/16 :goto_5b

    .line 1710
    :cond_121
    const v2, 0x459c4000    # 5000.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_12b

    const/4 v0, 0x4

    goto/16 :goto_5b

    .line 1711
    :cond_12b
    cmpg-float v2, p1, v4

    if-gez v2, :cond_132

    const/4 v0, 0x5

    goto/16 :goto_5b

    .line 1712
    :cond_132
    const/4 v0, 0x6

    goto/16 :goto_5b

    .line 1714
    :cond_135
    const/4 v0, 0x0

    goto/16 :goto_5b
.end method

.method private setAmbientLux(F)V
    .registers 4
    .param p1, "lux"    # F

    .prologue
    .line 832
    iput p1, p0, mAmbientLux:F

    .line 833
    iget v0, p0, mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, mBrighteningLuxThreshold:F

    .line 834
    iget v0, p0, mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, mDarkeningLuxThreshold:F

    .line 835
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "sensorSwitched":Z
    if-eqz p1, :cond_2d

    .line 672
    iget-boolean v1, p0, mLightSensorEnabled:Z

    if-nez v1, :cond_21

    .line 673
    iput-boolean v2, p0, mLightSensorEnabled:Z

    .line 681
    iget-object v1, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v1, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 683
    iget-object v1, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    const/4 v0, 0x1

    .line 706
    :cond_21
    :goto_21
    iget v1, p0, mAmbientLux:F

    if-eqz p1, :cond_65

    iget-boolean v4, p0, mAmbientLuxValid:Z

    if-eqz v4, :cond_65

    :goto_29
    invoke-direct {p0, v1, v2}, sendLuxLevel(FZ)V

    .line 707
    return v0

    .line 688
    :cond_2d
    iget-boolean v1, p0, mLightSensorEnabled:Z

    if-eqz v1, :cond_21

    .line 689
    iput-boolean v3, p0, mLightSensorEnabled:Z

    .line 690
    iget-boolean v1, p0, mResetAmbientLuxAfterWarmUpConfig:Z

    if-nez v1, :cond_63

    move v1, v2

    :goto_38
    iput-boolean v1, p0, mAmbientLuxValid:Z

    .line 691
    iput v3, p0, mRecentLightSamples:I

    .line 692
    iget-object v1, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 693
    iget-object v1, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 698
    iget-object v1, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, mSensorListenerRegistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    iget-object v1, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    iget-object v1, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    iget-object v4, p0, mSensorListenerUnregistrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    iget-object v1, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 702
    const/4 v0, 0x1

    goto :goto_21

    :cond_63
    move v1, v3

    .line 690
    goto :goto_38

    :cond_65
    move v2, v3

    .line 706
    goto :goto_29
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .registers 3
    .param p1, "adjustment"    # F

    .prologue
    .line 824
    iget v0, p0, mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_a

    .line 825
    iput p1, p0, mScreenAutoBrightnessAdjustment:F

    .line 826
    const/4 v0, 0x1

    .line 828
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private updateAmbientLux()V
    .registers 7

    .prologue
    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 902
    .local v0, "time":J
    iget-object v2, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 903
    invoke-direct {p0, v0, v1}, updateAmbientLux(J)V

    .line 904
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 18
    .param p1, "time"    # J

    .prologue
    .line 909
    iget-boolean v1, p0, mAmbientLuxValid:Z

    if-nez v1, :cond_24

    .line 910
    iget v1, p0, mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v1

    iget-wide v12, p0, mLightSensorEnableTime:J

    add-long v8, v10, v12

    .line 912
    .local v8, "timeWhenSensorWarmedUp":J
    cmp-long v1, p1, v8

    if-gez v1, :cond_16

    .line 918
    iget-object v1, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 964
    .end local v8    # "timeWhenSensorWarmedUp":J
    :goto_15
    return-void

    .line 922
    .restart local v8    # "timeWhenSensorWarmedUp":J
    :cond_16
    invoke-direct/range {p0 .. p2}, calculateAmbientLux(J)F

    move-result v1

    invoke-direct {p0, v1}, setAmbientLux(F)V

    .line 923
    const/4 v1, 0x1

    iput-boolean v1, p0, mAmbientLuxValid:Z

    .line 929
    const/4 v1, 0x1

    invoke-direct {p0, v1}, updateAutoBrightness(Z)V

    .line 932
    .end local v8    # "timeWhenSensorWarmedUp":J
    :cond_24
    invoke-direct/range {p0 .. p2}, nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 933
    .local v2, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 934
    .local v4, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, calculateAmbientLux(J)F

    move-result v0

    .line 936
    .local v0, "ambientLux":F
    iget v1, p0, mBrighteningLuxThreshold:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3a

    cmp-long v1, v2, p1

    if-lez v1, :cond_44

    :cond_3a
    iget v1, p0, mDarkeningLuxThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_53

    cmp-long v1, v4, p1

    if-gtz v1, :cond_53

    .line 938
    :cond_44
    invoke-direct {p0, v0}, setAmbientLux(F)V

    .line 946
    const/4 v1, 0x1

    invoke-direct {p0, v1}, updateAutoBrightness(Z)V

    .line 947
    invoke-direct/range {p0 .. p2}, nextAmbientLightBrighteningTransition(J)J

    move-result-wide v2

    .line 948
    invoke-direct/range {p0 .. p2}, nextAmbientLightDarkeningTransition(J)J

    move-result-wide v4

    .line 950
    :cond_53
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 957
    .local v6, "nextTransitionTime":J
    cmp-long v1, v6, p1

    if-lez v1, :cond_62

    .line 963
    :goto_5b
    iget-object v1, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_15

    .line 957
    :cond_62
    iget v1, p0, mLightSensorRate:I

    int-to-long v10, v1

    add-long v6, p1, v10

    goto :goto_5b
.end method

.method private updateAmbientLuxSEC(J)V
    .registers 12
    .param p1, "time"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1033
    iget-boolean v2, p0, mAmbientLuxValid:Z

    if-eqz v2, :cond_11

    iget-wide v2, p0, mLightSensorEnableTime:J

    sub-long v2, p1, v2

    iget v4, p0, mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1f

    .line 1035
    :cond_11
    iget v2, p0, mSECAverageLux:F

    iput v2, p0, mAmbientLux:F

    .line 1036
    iput-boolean v6, p0, mAmbientLuxValid:Z

    .line 1037
    iput v7, p0, mDebounceLuxDirection:I

    .line 1038
    iput-wide p1, p0, mDebounceLuxTime:J

    .line 1039
    invoke-direct {p0, v6}, updateAutoBrightnessSEC(Z)V

    .line 1082
    :cond_1e
    :goto_1e
    return-void

    .line 1044
    :cond_1f
    iget v2, p0, mSECAverageLux:F

    iget v3, p0, mHighHysteresis:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_47

    .line 1045
    iget v2, p0, mDebounceLuxDirection:I

    if-gtz v2, :cond_2f

    .line 1046
    iput v6, p0, mDebounceLuxDirection:I

    .line 1047
    iput-wide p1, p0, mDebounceLuxTime:J

    .line 1049
    :cond_2f
    iget-wide v2, p0, mDebounceLuxTime:J

    iget-wide v4, p0, mBrighteningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1050
    .local v0, "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_41

    .line 1051
    iget v2, p0, mSECAverageLux:F

    iput v2, p0, mAmbientLux:F

    .line 1052
    invoke-direct {p0, v6}, updateAutoBrightnessSEC(Z)V

    goto :goto_1e

    .line 1054
    :cond_41
    iget-object v2, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1e

    .line 1060
    .end local v0    # "debounceTime":J
    :cond_47
    iget v2, p0, mSECAverageLux:F

    iget v3, p0, mLowHysteresis:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_78

    iget v2, p0, mAmbientLux:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_78

    .line 1061
    iget v2, p0, mDebounceLuxDirection:I

    if-ltz v2, :cond_60

    .line 1062
    const/4 v2, -0x1

    iput v2, p0, mDebounceLuxDirection:I

    .line 1063
    iput-wide p1, p0, mDebounceLuxTime:J

    .line 1065
    :cond_60
    iget-wide v2, p0, mDebounceLuxTime:J

    iget-wide v4, p0, mDarkeningLightDebounceConfig:J

    add-long v0, v2, v4

    .line 1066
    .restart local v0    # "debounceTime":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_72

    .line 1069
    iget v2, p0, mSECAverageLux:F

    iput v2, p0, mAmbientLux:F

    .line 1070
    invoke-direct {p0, v6}, updateAutoBrightnessSEC(Z)V

    goto :goto_1e

    .line 1072
    :cond_72
    iget-object v2, p0, mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1e

    .line 1078
    .end local v0    # "debounceTime":J
    :cond_78
    iget v2, p0, mDebounceLuxDirection:I

    if-eqz v2, :cond_1e

    .line 1079
    iput v7, p0, mDebounceLuxDirection:I

    .line 1080
    iput-wide p1, p0, mDebounceLuxTime:J

    goto :goto_1e
.end method

.method private updateAutoBrightness(Z)V
    .registers 16
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 967
    iget-boolean v2, p0, mAmbientLuxValid:Z

    if-nez v2, :cond_5

    .line 1024
    :cond_4
    :goto_4
    return-void

    .line 971
    :cond_5
    iget-object v2, p0, mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 972
    .local v13, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 974
    .local v8, "gamma":F
    iget v2, p0, mScreenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2c

    .line 976
    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, mScreenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    .line 978
    .local v6, "adjGamma":F
    mul-float/2addr v8, v6

    .line 984
    .end local v6    # "adjGamma":F
    :cond_2c
    sget-boolean v2, USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_5d

    .line 985
    iget-object v2, p0, mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v12

    .line 986
    .local v12, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v12, :cond_5d

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 988
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, getTwilightGamma(JJJ)F

    move-result v7

    .line 990
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, getTwilightGamma(JJJ)F

    move-result v10

    .line 992
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 1000
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_5d
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_68

    .line 1001
    move v9, v13

    .line 1002
    .local v9, "in":F
    invoke-static {v13, v8}, Landroid/util/MathUtils;->pow(FF)F

    move-result v13

    .line 1009
    .end local v9    # "in":F
    :cond_68
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, clampScreenBrightness(I)I

    move-result v11

    .line 1011
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, mScreenAutoBrightness:I

    if-eq v2, v11, :cond_4

    .line 1018
    iput v11, p0, mScreenAutoBrightness:I

    .line 1019
    iput v8, p0, mLastScreenAutoBrightnessGamma:F

    .line 1020
    if-eqz p1, :cond_4

    .line 1021
    iget-object v2, p0, mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    goto :goto_4
.end method

.method private updateAutoBrightnessSEC(Z)V
    .registers 8
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1101
    iget-boolean v3, p0, mAmbientLuxValid:Z

    if-nez v3, :cond_f

    .line 1102
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[DAB] no lux value from sensor manager"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iput-boolean v5, p0, mUseManualAutoBrightness:Z

    .line 1140
    :goto_e
    return-void

    .line 1110
    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1111
    .local v1, "gamma":F
    iget-object v3, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v4, p0, mAmbientLux:F

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    .line 1112
    .local v2, "value":F
    iget-object v3, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v3

    iput v3, p0, mLowHysteresis:F

    .line 1113
    iget-object v3, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v3

    iput v3, p0, mHighHysteresis:F

    .line 1115
    iget v0, p0, mScreenAutoBrightnessAdjustment:F

    .line 1117
    .local v0, "autoBrightnessAdj":F
    const/4 v0, 0x0

    .line 1122
    invoke-direct {p0, p1, v2, v1, v0}, updateFinalAutoBrightness(ZFFF)V

    goto :goto_e
.end method

.method private updateFinalAutoBrightness(ZFFF)V
    .registers 20
    .param p1, "sendUpdate"    # Z
    .param p2, "value"    # F
    .param p3, "gamma"    # F
    .param p4, "autoBrightnessAdj"    # F

    .prologue
    .line 1144
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_5

    :cond_5
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-eqz v12, :cond_1b7

    invoke-virtual {p0}, isManualAutoBrightnessValid()Z

    move-result v12

    if-eqz v12, :cond_1b7

    .line 1146
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    move/from16 v0, p4

    neg-float v14, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x3f600000    # -5.0f

    mul-float v2, v12, v13

    .line 1147
    .local v2, "adjLevel":F
    const/4 v3, 0x0

    .line 1149
    .local v3, "autoBrightnessLevelStepRatio":F
    iget-boolean v12, p0, mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_185

    .line 1150
    iget-object v12, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioForEbook:F

    .line 1161
    :goto_2c
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_1aa

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v3

    move v13, v12

    :goto_35
    const/4 v12, 0x0

    cmpl-float v12, v2, v12

    if-lez v12, :cond_1b0

    move v12, v2

    :goto_3b
    invoke-static {v13, v12}, Landroid/util/FloatMath;->pow(FF)F

    move-result v1

    .line 1162
    .local v1, "adjGamma":F
    mul-float p3, p3, v1

    .line 1168
    iget-object v12, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v12, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v12, v12

    sub-float v12, p2, v12

    mul-float v12, v12, p3

    iget-object v13, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v13, v13, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    int-to-float v13, v13

    add-float v10, v12, v13

    .line 1169
    .local v10, "valueFromGamma":F
    iget-object v12, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v7, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    .line 1170
    .local v7, "minBrightnessStep":I
    float-to-int v12, v2

    mul-int/2addr v12, v7

    move/from16 v0, p2

    float-to-int v13, v0

    add-int v11, v12, v13

    .line 1171
    .local v11, "valueFromOffset":I
    const/4 v12, 0x0

    cmpl-float v12, p4, v12

    if-lez v12, :cond_66

    int-to-float v12, v11

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_70

    :cond_66
    const/4 v12, 0x0

    cmpg-float v12, p4, v12

    if-gez v12, :cond_1b3

    int-to-float v12, v11

    cmpl-float v12, v10, v12

    if-lez v12, :cond_1b3

    .line 1173
    :cond_70
    int-to-float v0, v11

    move/from16 p2, v0

    .line 1185
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :goto_73
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {p0, v12}, clampScreenBrightness(I)I

    move-result v9

    .line 1187
    .local v9, "newScreenAutoBrightness":I
    iget v12, p0, lastRawBrightnessValue:F

    cmpl-float v12, p2, v12

    if-nez v12, :cond_86

    iget v12, p0, mRecentLightSamples:I

    const/4 v13, 0x1

    if-gt v12, v13, :cond_ea

    .line 1188
    :cond_86
    const-string v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DAB] updateAutoBrightnessSEC : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, mLowHysteresis:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " < "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, mAmbientLux:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " < "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, p0, mHighHysteresis:F

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v12, p0, mAutoBrightnessForEbookOnly:Z

    if-eqz v12, :cond_1c3

    const-string v12, " (ebook)"

    :goto_df
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_ea
    iget v12, p0, mAmbientLux:F

    const v13, 0x471c4000    # 40000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1c7

    const/4 v8, 0x1

    .line 1194
    .local v8, "needHBM":Z
    :goto_f4
    const/4 v4, 0x0

    .line 1197
    .local v4, "isHBMChanged":Z
    sget-boolean v12, SPECIFIC_HBM_FEATURE:Z

    if-eqz v12, :cond_103

    .line 1198
    iget v12, p0, mAmbientLux:F

    const v13, 0x453b8000    # 3000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1ca

    const/4 v8, 0x1

    .line 1201
    :cond_103
    :goto_103
    iget-boolean v12, p0, mLastHBM:Z

    if-eq v12, v8, :cond_13f

    .line 1202
    const-string v13, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DAB] HBM is "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v8, :cond_1cd

    const-string v12, "Enabled"

    :goto_118
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ". mScreenAutoBrightness = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iput-boolean v8, p0, mLastHBM:Z

    .line 1206
    const/4 v4, 0x1

    .line 1208
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "high_brightness_mode_pms_enter"

    if-eqz v8, :cond_1d1

    const/4 v12, 0x1

    :goto_13c
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1212
    :cond_13f
    iget v12, p0, mAmbientLux:F

    const v13, 0x469c4000    # 20000.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1d4

    const/4 v6, 0x1

    .line 1213
    .local v6, "isTconMaxLevel":Z
    :goto_149
    const/4 v5, 0x0

    .line 1214
    .local v5, "isTconLevelChanged":Z
    iget-boolean v12, p0, mWasTconMaxLevel:Z

    if-eq v12, v6, :cond_15a

    .line 1215
    if-eqz v6, :cond_1d7

    .line 1216
    const-string v12, "AutomaticBrightnessController"

    const-string v13, "[DAB] The Ambient Lux has gone over 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_157
    iput-boolean v6, p0, mWasTconMaxLevel:Z

    .line 1222
    const/4 v5, 0x1

    .line 1225
    :cond_15a
    iget v12, p0, mScreenAutoBrightness:I

    if-ne v12, v9, :cond_164

    iget v12, p0, mScreenAutoBrightness:I

    iget v13, p0, mLatestAnimationTarget:I

    if-eq v12, v13, :cond_1e0

    .line 1227
    :cond_164
    iput v9, p0, mScreenAutoBrightness:I

    .line 1228
    move/from16 v0, p3

    iput v0, p0, mLastScreenAutoBrightnessGamma:F

    .line 1229
    if-eqz p1, :cond_180

    .line 1230
    const-string v12, "AutomaticBrightnessController"

    const-string/jumbo v13, "mCallbacks.updateBrightness()"

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v12, p0, mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1232
    iget v12, p0, mAmbientLux:F

    iget-boolean v13, p0, mUseAutoBrightness:Z

    invoke-direct {p0, v12, v13}, sendLuxLevel(FZ)V

    .line 1244
    :cond_180
    :goto_180
    move/from16 v0, p2

    iput v0, p0, lastRawBrightnessValue:F

    .line 1245
    return-void

    .line 1153
    .end local v4    # "isHBMChanged":Z
    .end local v5    # "isTconLevelChanged":Z
    .end local v6    # "isTconMaxLevel":Z
    .end local v8    # "needHBM":Z
    .end local v9    # "newScreenAutoBrightness":I
    .restart local v2    # "adjLevel":F
    .restart local v3    # "autoBrightnessLevelStepRatio":F
    :cond_185
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-nez v12, :cond_191

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v12, :cond_191

    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-eqz v12, :cond_1a4

    :cond_191
    iget v12, p0, mAmbientLux:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1a4

    const/4 v12, 0x0

    cmpg-float v12, v2, v12

    if-gez v12, :cond_1a4

    .line 1155
    iget-object v12, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatioAt0Lux:F

    goto/16 :goto_2c

    .line 1157
    :cond_1a4
    iget-object v12, p0, mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    iget v3, v12, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mAutoBrightnessLevelStepRatio:F

    goto/16 :goto_2c

    .line 1161
    :cond_1aa
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v3

    move v13, v12

    goto/16 :goto_35

    :cond_1b0
    neg-float v12, v2

    goto/16 :goto_3b

    .line 1175
    .restart local v1    # "adjGamma":F
    .restart local v7    # "minBrightnessStep":I
    .restart local v10    # "valueFromGamma":F
    .restart local v11    # "valueFromOffset":I
    :cond_1b3
    move/from16 p2, v10

    goto/16 :goto_73

    .line 1178
    .end local v1    # "adjGamma":F
    .end local v2    # "adjLevel":F
    .end local v3    # "autoBrightnessLevelStepRatio":F
    .end local v7    # "minBrightnessStep":I
    .end local v10    # "valueFromGamma":F
    .end local v11    # "valueFromOffset":I
    :cond_1b7
    iget-object v12, p0, mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    iget v13, p0, mAmbientLux:F

    invoke-virtual {v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v12

    add-float p2, p2, v12

    goto/16 :goto_73

    .line 1188
    .restart local v9    # "newScreenAutoBrightness":I
    :cond_1c3
    const-string v12, ""

    goto/16 :goto_df

    .line 1193
    :cond_1c7
    const/4 v8, 0x0

    goto/16 :goto_f4

    .line 1198
    .restart local v4    # "isHBMChanged":Z
    .restart local v8    # "needHBM":Z
    :cond_1ca
    const/4 v8, 0x0

    goto/16 :goto_103

    .line 1202
    :cond_1cd
    const-string v12, "Disabled"

    goto/16 :goto_118

    .line 1208
    :cond_1d1
    const/4 v12, 0x0

    goto/16 :goto_13c

    .line 1212
    :cond_1d4
    const/4 v6, 0x0

    goto/16 :goto_149

    .line 1218
    .restart local v5    # "isTconLevelChanged":Z
    .restart local v6    # "isTconMaxLevel":Z
    :cond_1d7
    const-string v12, "AutomaticBrightnessController"

    const-string v13, "[DAB] The Ambient Lux has dropped below 20000."

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_157

    .line 1237
    :cond_1e0
    if-eqz p1, :cond_180

    if-nez v4, :cond_1e6

    if-eqz v5, :cond_180

    .line 1238
    :cond_1e6
    iget-object v12, p0, mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v12}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1239
    iget v12, p0, mAmbientLux:F

    iget-boolean v13, p0, mUseAutoBrightness:Z

    invoke-direct {p0, v12, v13}, sendLuxLevel(FZ)V

    goto :goto_180
.end method

.method private updatePersonalScreenAutoBrightnessTableLocked(Z)V
    .registers 10
    .param p1, "needUpdate"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x1

    .line 1811
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1812
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, mScreenBrightnessSetting:I

    .line 1813
    .local v1, "oldScreenBrightnessSetting":I
    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, mScreenBrightnessSettingDefault:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, mScreenBrightnessSetting:I

    .line 1816
    iget v0, p0, mScreenBrightnessModeSetting:I

    .line 1817
    .local v0, "oldScreenBrightnessModeSetting":I
    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, mScreenBrightnessModeSetting:I

    .line 1821
    if-eqz p1, :cond_6a

    iget v3, p0, mScreenBrightnessModeSetting:I

    if-ne v3, v6, :cond_6a

    .line 1822
    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB] Settings changed. Mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mScreenBrightnessModeSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mLastTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iput-boolean v6, p0, mNeedToAddPersonalAutoBrightnessPoint:Z

    .line 1826
    iget-boolean v3, p0, mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v3, :cond_5b

    .line 1827
    invoke-direct {p0}, getAmbientLuxAndCandelaFromSensorHub()V

    .line 1832
    :goto_56
    iget v3, p0, mLastTemporaryScreenBrightnessSettingOverride:I

    iput v3, p0, mPendingScreenBrightnessSetting:I

    .line 1842
    :cond_5a
    :goto_5a
    return-void

    .line 1829
    :cond_5b
    iget-object v3, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, mLightSensor:Landroid/hardware/Sensor;

    const v6, 0xc350

    iget-object v7, p0, mHandlerRegisterInSeperate:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_56

    .line 1834
    :cond_6a
    iget v3, p0, mScreenBrightnessModeSetting:I

    if-nez v3, :cond_5a

    if-ne v0, v6, :cond_5a

    .line 1836
    iget-boolean v3, p0, mUseAutoBrightness:Z

    if-eqz v3, :cond_77

    .line 1837
    invoke-direct {p0}, getAmbientLuxAndCandelaFromSensorHub()V

    .line 1839
    :cond_77
    iget-object v3, p0, mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    .line 1840
    const-string v3, "AutomaticBrightnessController"

    const-string v4, "[PAB] Setting : It\'s manual. So Reset Personal Auto Brightness."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method private static weightIntegral(J)F
    .registers 6
    .param p0, "x"    # J

    .prologue
    .line 873
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public check_HBM_Detail()V
    .registers 5

    .prologue
    .line 468
    const-string v1, "/sys/class/backlight/panel/auto_brightness_level"

    invoke-virtual {p0, v1}, readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "sys_hbm_level":Ljava/lang/String;
    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 470
    const/4 v1, 0x1

    sput-boolean v1, SPECIFIC_HBM_FEATURE:Z

    .line 471
    const/4 v1, 0x4

    iput v1, p0, mHBMDisableLevel:I

    .line 472
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ SPECIFIC_HBM_FEATURE = true, sys_hbm_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_2c
    return-void

    .line 474
    :cond_2d
    const/4 v1, 0x0

    sput-boolean v1, SPECIFIC_HBM_FEATURE:Z

    .line 475
    const/4 v1, 0x5

    iput v1, p0, mHBMDisableLevel:I

    .line 476
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ SPECIFIC_HBM_FEATURE = false, sys_hbm_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public configure(ZFZZZZFZZI)V
    .registers 15
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z
    .param p5, "autoBrightnessForEbookOnly"    # Z
    .param p6, "useSystemPowerSaveMode"    # Z
    .param p7, "manualAdjustment"    # F
    .param p8, "settingAutoBrightness"    # Z
    .param p9, "UsingVariableMaxManualBrightness"    # Z
    .param p10, "temporaryScreenBrightnessSettingOverride"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 552
    iget-boolean v1, p0, mIsSupportedSensorHubAutoBrightness:Z

    if-nez v1, :cond_12

    iget-object v1, p0, mLightSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_12

    .line 553
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "[DAB] mLightSensor is null."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_11
    :goto_11
    return-void

    .line 556
    :cond_12
    iput-boolean p6, p0, mUseSystemPowerSaveMode:Z

    .line 559
    invoke-direct {p0, p10}, checkMarkerUserDetach(I)V

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "changed":Z
    iget-boolean v1, p0, mAutoBrightnessForEbookOnly:Z

    if-eq v1, p5, :cond_2c

    .line 564
    iput-boolean p5, p0, mAutoBrightnessForEbookOnly:Z

    .line 565
    iget-boolean v1, p0, mIsSupportedSensorHubAutoBrightness:Z

    if-eqz v1, :cond_2a

    .line 567
    iget-boolean v1, p0, mAutoBrightnessForEbookOnly:Z

    if-eqz v1, :cond_69

    move v1, v2

    :goto_27
    invoke-direct {p0, v1}, changeModeInSensorHubAutoBrightness(I)V

    .line 571
    :cond_2a
    or-int/lit8 v0, v0, 0x1

    .line 574
    .end local v0    # "changed":Z
    :cond_2c
    iget-boolean v1, p0, mUseAutoBrightness:Z

    if-ne v1, p1, :cond_3e

    iget v1, p0, mManualAdjustment:F

    cmpl-float v1, v1, p7

    if-nez v1, :cond_3e

    iget-boolean v1, p0, mSettingAutoBrightness:Z

    if-ne v1, p8, :cond_3e

    iget-boolean v1, p0, mUsingVariableMaxManualBrightness:Z

    if-eq v1, p9, :cond_4c

    .line 579
    :cond_3e
    iput p7, p0, mManualAdjustment:F

    .line 580
    iput-boolean p8, p0, mSettingAutoBrightness:Z

    .line 581
    iget-boolean v1, p0, mUsingVariableMaxManualBrightness:Z

    iput-boolean v1, p0, mPrevUsingVariableMaxManualBrightness:Z

    .line 582
    iput-boolean p9, p0, mUsingVariableMaxManualBrightness:Z

    .line 584
    iput-boolean p1, p0, mUseAutoBrightness:Z

    .line 585
    or-int/lit8 v0, v0, 0x1

    .line 587
    :cond_4c
    if-eqz p1, :cond_6b

    if-nez p3, :cond_6b

    :goto_50
    invoke-direct {p0, v2}, setLightSensorEnabled(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 588
    .restart local v0    # "changed":Z
    invoke-direct {p0, p2}, setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 590
    if-eqz v0, :cond_5f

    .line 591
    invoke-direct {p0, v3}, updateAutoBrightnessSEC(Z)V

    .line 593
    :cond_5f
    if-eqz p1, :cond_11

    if-nez p3, :cond_11

    if-eqz p4, :cond_11

    .line 594
    invoke-direct {p0}, prepareBrightnessAdjustmentSample()V

    goto :goto_11

    :cond_69
    move v1, v3

    .line 567
    goto :goto_27

    .end local v0    # "changed":Z
    :cond_6b
    move v2, v3

    .line 587
    goto :goto_50
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 601
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 611
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 630
    const-string v0, "Automatic Brightness in Sensorhub:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedSensorHubAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsSupportedSensorHubAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientCandela="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mAmbientCandela:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedSensorHubLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mLastObservedSensorHubLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentSensorHubSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRecentSensorHubSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->dump(Ljava/io/PrintWriter;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  HBM_USER_ENABLE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, HBM_USER_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastHBM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mLastHBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SPECIFIC_HBM_FEATURE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, SPECIFIC_HBM_FEATURE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public getAmbientLux()F
    .registers 2

    .prologue
    .line 519
    iget v0, p0, mAmbientLux:F

    return v0
.end method

.method public getAutomaticScreenBrightness()I
    .registers 3

    .prologue
    .line 511
    iget-boolean v0, p0, mDozing:Z

    if-eqz v0, :cond_c

    .line 512
    iget v0, p0, mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 514
    :goto_b
    return v0

    :cond_c
    iget v0, p0, mScreenAutoBrightness:I

    goto :goto_b
.end method

.method public isAmbientLuxValid()Z
    .registers 2

    .prologue
    .line 1090
    iget-boolean v0, p0, mAmbientLuxValid:Z

    return v0
.end method

.method public isHbmEnabled()Z
    .registers 2

    .prologue
    .line 523
    iget-boolean v0, p0, mLastHBM:Z

    return v0
.end method

.method public isManualAutoBrightnessValid()Z
    .registers 2

    .prologue
    .line 1096
    iget-boolean v0, p0, mUseManualAutoBrightness:Z

    return v0
.end method

.method public isPabUpdatePending()Z
    .registers 3

    .prologue
    .line 426
    iget-object v1, p0, mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_3
    iget-boolean v0, p0, mNeedToAddPersonalAutoBrightnessPoint:Z

    monitor-exit v1

    return v0

    .line 428
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 483
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 486
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_ad
    .catchall {:try_start_7 .. :try_end_11} :catchall_88

    .line 488
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_11
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 489
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_21
    .catchall {:try_start_11 .. :try_end_20} :catchall_aa

    goto :goto_11

    .line 492
    :catch_21
    move-exception v0

    move-object v2, v3

    .line 494
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_23
    :try_start_23
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to read file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_88

    .line 496
    if-eqz v2, :cond_41

    .line 498
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_6d

    .line 505
    .end local v0    # "e":Ljava/io/IOException;
    :cond_41
    :goto_41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 496
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_4a
    if-eqz v3, :cond_b0

    .line 498
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_51

    move-object v2, v3

    .line 502
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_41

    .line 499
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_51
    move-exception v0

    .line 501
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 502
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_41

    .line 499
    :catch_6d
    move-exception v0

    .line 501
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to close file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_88
    move-exception v5

    :goto_89
    if-eqz v2, :cond_8e

    .line 498
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 502
    :cond_8e
    :goto_8e
    throw v5

    .line 499
    :catch_8f
    move-exception v0

    .line 501
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to close file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_aa
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_89

    .line 492
    :catch_ad
    move-exception v0

    goto/16 :goto_23

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_b0
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_41
.end method

.method public setOutdoorMode(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1653
    if-eqz p1, :cond_a

    const v0, 0x471c4000    # 40000.0f

    :goto_5
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, sendLuxLevel(FZ)V

    .line 1654
    return-void

    .line 1653
    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method
