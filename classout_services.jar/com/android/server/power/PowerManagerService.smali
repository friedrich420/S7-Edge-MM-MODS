.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;,
        Lcom/android/server/power/PowerManagerService$UserActivityTask;,
        Lcom/android/server/power/PowerManagerService$InputDeviceLightState;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$DozeLock;,
        Lcom/android/server/power/PowerManagerService$AlpmLock;,
        Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field public static final COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final COVER_SYSFS:Ljava/lang/String; = "/sys/class/sec/sec_key/hall_detect"

.field private static final CRITICAL_LOW_BATTERY_LEVEL:I = 0x5

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_KEYBOARD_OFF_TIMEOUT:I = 0xbb8

.field private static final DEFAULT_KEY_NIGHT_MODE:I = 0x1

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ALPM_MODE:I = 0x40000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_BUTTON_EVENT:I = 0x4000

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_DUAL_SCREEN_EVENT:I = 0x80000

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_FOLDER:I = 0x10000

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_SCREEN:I = 0x8000

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_TOUCHKEY_EVENT:I = 0x1000

.field private static final DIRTY_TOUCHSCREEN_EVENT:I = 0x2000

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field public static final DUAL_SCREEN_ALL_OFF:I = 0x0

.field public static final DUAL_SCREEN_ALL_ON:I = 0x3

.field public static final DUAL_SCREEN_MAIN_SINGLE:I = 0x1

.field public static final DUAL_SCREEN_MODEL:Z = false

.field public static final DUAL_SCREEN_SUB_SINGLE:I = 0x2

.field private static final FAMILY_CONNECTED_PKG:Ljava/lang/String; = "com.samsung.android.familyshare.dashboard"

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field private static final FORCE_BLANK:I = 0x0

.field private static final FORCE_DISPLAY_NONE:I = -0x1

.field private static final FORCE_UNBLANK:I = 0x1

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final LAST_PERCENT_BATTERY_LEVEL:I = 0x1

.field private static final MSG_KEY_LIGHT_ONOFF_BY_SCREEN:I = 0x4

.field private static final MSG_PRE_SMART_STAY:I = 0x2

.field private static final MSG_REGISTER_POCKET_SENSOR:I = 0x1

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_SMART_STAY:I = 0x1

.field private static final MSG_UNREGISTER_POCKET_SENSOR:I = 0x2

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final OUTDOOR_MODE_SETTING:Ljava/lang/String; = "display_outdoor_mode"

.field private static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SEC_USE_FACTORY_BINARY:Z

.field private static final SYSTEM_SHUTDOWN:Ljava/lang/String; = "system_shutdown"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field private static final TAG_BRIGHTNESS:Ljava/lang/String; = "[BRIGHTNESS] "

.field private static final TAG_ETC:Ljava/lang/String; = ""

.field private static final TAG_INPUT_DEVICE_LIGHT:Ljava/lang/String; = "[input device light] "

.field public static final TAG_LOG_TO_KERNEL:Ljava/lang/String; = "!@"

.field private static final TAG_POWER_SAVE_MODE:Ljava/lang/String; = "[PSM] "

.field public static final TAG_POWER_STATE:Ljava/lang/String; = "[ps] "

.field public static final TAG_POWER_STATE_V:Ljava/lang/String; = "[s] "

.field private static final TAG_PRINT_WAKE_LOCK:Ljava/lang/String; = "[PWL] "

.field private static final TAG_SMART_STAY:Ljava/lang/String; = "[smart stay] "

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static final ifNotifierInSeperateThread:Z = true


# instance fields
.field private final COUNT_FOR_LOGGING_FREQUENT_EVENT:I

.field private final COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

.field private final USE_DEVICE_LOCK_TIME:Z

.field private final USE_PRE_SMART_STAY:Z

.field private final USE_SMART_STAY:Z

.field private mAlpmHlpmMode:I

.field private mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

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

.field private mBootCompleted:Z

.field private mClearViewBrightnessModeCount:I

.field private mClearViewBrightnessModeEnabled:Z

.field private mColorFadeExit:Z

.field private mColorWeaknessModeCount:I

.field private mColorWeaknessModeEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverIsUpdatedFromCoverManager:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field private mCoverType:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDelayTimePrintWakeLock:J

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mEmergencyMode:Z

.field private mFTAMode:Z

.field private mFaceDetected:Z

.field private mFaceDetectedFailIntent:Landroid/content/Intent;

.field private mFeatureCoverSysfs:Z

.field private mFeatureNotifyScreenOffTimeout:Z

.field private final mForceBlankDisplayRunnable:Ljava/lang/Runnable;

.field private mForceDoze:Z

.field private final mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

.field private mHandlerSmartStay:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHandlerThreadSmartStay:Landroid/os/HandlerThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInputDeviceEnabled:Z

.field private mIsAlpmMode:Z

.field private final mIsBadCurrentConsumptionDevice:Z

.field private mIsCocktailBarCover:Z

.field public mIsCoverClosed:Z

.field mIsDeviceMoving:Z

.field private mIsFolderType:Z

.field private mIsInPocket:Z

.field private mIsInPocketOrBagAvailable:Z

.field private mIsKeyboardVisible:Z

.field public mIsLidClosed:Z

.field private mIsPocketSensorEnabled:Z

.field private mIsPowered:Z

.field private mIsSettingChangedAfterLowBattery:Z

.field public mIsSipVisible:Z

.field private mIsSupportedLightSensor:Z

.field private mIsSupportedSensorHub:Z

.field mIsWirelessChargerSContextEnabled:Z

.field mIsWirelessChargerSContextRegistered:Z

.field mIsWirelessCharging:Z

.field private mKeyLedOffNightModeSetting:I

.field private mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mKeyboardOffTimeoutSetting:I

.field private mLastAndroidAutoBoostTime:J

.field private mLastBrightnessOverrideState:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastOutdoorModeEnblaedTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastScreenTimeout:I

.field private mLastSleepTime:J

.field private mLastUserActivitySummary:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWakeUpReason:I

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryTriggerLevel:I

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMainScreenState:I

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mMultiScreenState:I

.field private mMultiScreenStateChangeReason:I

.field private mMultiScreenStateOverride:I

.field private mNativeUserActivityCount:I

.field private mNextTimeoutForPreSmartStay:J

.field private mNextTimeoutForSmartStay:J

.field private mNoUserActivityIntent:Landroid/content/Intent;

.field private mNoUserActivitySent:Z

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mOutdoorModeSetting:Z

.field private mOutdoorModeTimeout:I

.field private mPendingForceUnblankDisplayState:I

.field private mPendingMessagePreSmartStay:Z

.field private mPendingMessageSmartStay:Z

.field private mPlugType:I

.field private mPocketHandler:Landroid/os/Handler;

.field private mPocketHandlerThread:Landroid/os/HandlerThread;

.field private mPocketQueryDone:Z

.field private final mPocketQueryLock:Ljava/lang/Object;

.field private mPocketSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mPreSmartStayDelay:I

.field private mPrevMultiScreenState:I

.field private mPrevReleasedWakeLock:Ljava/lang/String;

.field private mPrevTouchKeyForceDisable:Z

.field private final mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenDimDurationOverrideFromWindowManager:J

.field private mScreenOffReason:Ljava/lang/String;

.field private mScreenOffTimeoutIntent:Landroid/content/Intent;

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnOffCount:I

.field private mScreenOnReason:Ljava/lang/String;

.field private mSecuredLockEnableSetting:I

.field private mSecuredLockTimeoutSetting:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSleepTimeoutSetting:I

.field private mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field private final mSmartStayDelay:I

.field private mSmartStayEnabledSetting:Z

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSubScreenPolicyOverride:I

.field private mSubScreenState:I

.field private mSubTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryMarkerScreenBrightnessSettingOverride:I

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTheaterModeEnabled:Z

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mTouchKeyForceDisable:Z

.field private mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

.field private mTouchKeyOffTimeoutOverrideFromWindowManager:J

.field private mTouchKeyOffTimeoutSetting:I

.field private mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mTspMainLpmEnabled:Z

.field private mTspSubLpmEnabled:Z

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUserActivityIntent:Landroid/content/Intent;

.field private mUserActivitySummary:I

.field private final mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserActivityTimeoutSetting:I

.field private final mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

.field private mUserSwitched:Z

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field mWakeUpEvenThoughProximityPositive:Z

.field private mWakeUpPreventionForNotificationSetting:Z

.field private mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private final mWhenCheckSmartStay:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

.field mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mlastSetCoverTypeTime:J

.field private mlastUpdateCoverStateReason:Ljava/lang/String;

.field private mlastUpdateCoverStateTime:J

.field private mlastUpdateCoverTypeReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 682
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, SEC_USE_FACTORY_BINARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 747
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 307
    iput-object v6, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 308
    iput-object v6, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 310
    iput-object v6, p0, mSubTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 313
    iput-wide v8, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 315
    const/16 v0, 0x7d0

    iput v0, p0, mKeyboardOffTimeoutSetting:I

    .line 318
    iput-boolean v5, p0, mColorFadeExit:Z

    .line 320
    iput-boolean v3, p0, mPrevTouchKeyForceDisable:Z

    .line 321
    iput-boolean v3, p0, mInputDeviceEnabled:Z

    .line 322
    iput-boolean v3, p0, mTouchKeyForceDisable:Z

    .line 323
    iput-boolean v3, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    .line 327
    iput-boolean v3, p0, mEmergencyMode:Z

    .line 332
    iput v4, p0, mDynamicAutoBrightnessRatioValueSetting:I

    .line 335
    iput-object v6, p0, mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 336
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, USE_DEVICE_LOCK_TIME:Z

    .line 338
    iput v3, p0, mSecuredLockEnableSetting:I

    .line 339
    iput v4, p0, mSecuredLockTimeoutSetting:I

    .line 343
    iput-boolean v3, p0, mIsAlpmMode:Z

    .line 344
    iput-object v6, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 348
    iput v4, p0, mPendingForceUnblankDisplayState:I

    .line 353
    iput v3, p0, mUserActivityTimeoutSetting:I

    .line 354
    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-direct {v0, p0, v6}, Lcom/android/server/power/PowerManagerService$UserActivityTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    .line 355
    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-direct {v0, p0, v6}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    .line 371
    iput v4, p0, mBatteryStatus:I

    .line 373
    iput-boolean v3, p0, mIsSettingChangedAfterLowBattery:Z

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSuspendBlockers:Ljava/util/ArrayList;

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 442
    iput-boolean v5, p0, mIsSupportedLightSensor:Z

    .line 493
    iput v3, p0, mDockState:I

    .line 575
    const v0, 0x7fffffff

    iput v0, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 594
    iput v4, p0, mScreenBrightnessSetting:I

    .line 607
    iput v4, p0, mScreenBrightnessOverrideFromWindowManager:I

    .line 612
    iput-wide v8, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    .line 617
    iput v4, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 621
    iput v4, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    .line 628
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 631
    iput v3, p0, mDozeScreenStateOverrideFromDreamManager:I

    .line 634
    iput v4, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 637
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mLastWarningAboutUserActivityPermission:J

    .line 654
    iput v4, p0, mLowBatteryTriggerLevel:I

    .line 661
    new-array v0, v3, [I

    iput-object v0, p0, mDeviceIdleWhitelist:[I

    .line 664
    new-array v0, v3, [I

    iput-object v0, p0, mDeviceIdleTempWhitelist:[I

    .line 666
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mUidState:Landroid/util/SparseIntArray;

    .line 669
    iput-boolean v3, p0, mUserSwitched:Z

    .line 681
    iput-boolean v3, p0, mFTAMode:Z

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLowPowerModeListeners:Ljava/util/ArrayList;

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mBlockedUids:Ljava/util/ArrayList;

    .line 696
    iput-boolean v3, p0, mIsFolderType:Z

    .line 700
    iput-boolean v3, p0, mWakeUpEvenThoughProximityPositive:Z

    .line 704
    iput-boolean v3, p0, mLastBrightnessOverrideState:Z

    .line 709
    iput-boolean v3, p0, mOutdoorModeSetting:Z

    .line 711
    const v0, 0xdbba0

    iput v0, p0, mOutdoorModeTimeout:I

    .line 715
    iput v3, p0, mClearViewBrightnessModeCount:I

    .line 716
    iput-boolean v3, p0, mClearViewBrightnessModeEnabled:Z

    .line 717
    iput v3, p0, mColorWeaknessModeCount:I

    .line 718
    iput-boolean v3, p0, mColorWeaknessModeEnabled:Z

    .line 721
    iput-boolean v3, p0, mForceDoze:Z

    .line 722
    iput-object v6, p0, mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    .line 723
    iput v4, p0, mAlpmHlpmMode:I

    .line 727
    iput-object v6, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 728
    iput-boolean v3, p0, mIsWirelessChargerSContextEnabled:Z

    .line 729
    iput-boolean v3, p0, mIsWirelessChargerSContextRegistered:Z

    .line 730
    iput-boolean v5, p0, mIsDeviceMoving:Z

    .line 731
    iput-boolean v3, p0, mIsWirelessCharging:Z

    .line 1787
    iput-wide v8, p0, mLastAndroidAutoBoostTime:J

    .line 2002
    iput-boolean v3, p0, mIsCocktailBarCover:Z

    .line 2003
    iput v3, p0, mLastWakeUpReason:I

    .line 2005
    iput-boolean v3, p0, mWakeUpPreventionForNotificationSetting:Z

    .line 2006
    const-string v0, ""

    iput-object v0, p0, mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    .line 2009
    iput-boolean v3, p0, mIsInPocketOrBagAvailable:Z

    .line 2012
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mPocketQueryLock:Ljava/lang/Object;

    .line 2013
    iput-boolean v3, p0, mPocketQueryDone:Z

    .line 2014
    iput-boolean v3, p0, mIsInPocket:Z

    .line 2016
    iput-object v6, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 2018
    iput-boolean v3, p0, mIsPocketSensorEnabled:Z

    .line 2088
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mPocketSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 3254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.server.PowerManagerService.action.SCREEN_OFF_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mScreenOffTimeoutIntent:Landroid/content/Intent;

    .line 3256
    iput-boolean v3, p0, mFeatureNotifyScreenOffTimeout:Z

    .line 3277
    iput-wide v8, p0, mScreenDimDurationOverrideFromWindowManager:J

    .line 3294
    iput-boolean v3, p0, mIsLidClosed:Z

    .line 3760
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    .line 3768
    new-instance v0, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    .line 3832
    new-instance v0, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 6828
    iput-boolean v3, p0, mIsSipVisible:Z

    .line 6829
    new-instance v0, Lcom/android/server/power/PowerManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6845
    iput-boolean v3, p0, mIsCoverClosed:Z

    .line 6846
    const-string v0, ""

    iput-object v0, p0, mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 6847
    iput-wide v8, p0, mlastUpdateCoverStateTime:J

    .line 6848
    const-string v0, ""

    iput-object v0, p0, mlastUpdateCoverTypeReason:Ljava/lang/String;

    .line 6849
    iput-wide v8, p0, mlastSetCoverTypeTime:J

    .line 6850
    iput-boolean v5, p0, mFeatureCoverSysfs:Z

    .line 6851
    iput-object v6, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 6852
    const/4 v0, 0x2

    iput v0, p0, mCoverType:I

    .line 6853
    iput-boolean v3, p0, mCoverIsUpdatedFromCoverManager:Z

    .line 6909
    new-instance v0, Lcom/android/server/power/PowerManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$9;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 6939
    iput-object v6, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 6948
    iput-boolean v5, p0, USE_SMART_STAY:Z

    .line 6949
    invoke-direct {p0}, isTablet()Z

    move-result v0

    iput-boolean v0, p0, USE_PRE_SMART_STAY:Z

    .line 6950
    const-string v0, "2950"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSmartStayDelay:I

    .line 6951
    const/16 v0, 0x1770

    iput v0, p0, mPreSmartStayDelay:I

    .line 6955
    iput-boolean v5, p0, mIsBadCurrentConsumptionDevice:Z

    .line 6957
    iput v5, p0, mWhenCheckSmartStay:I

    .line 6961
    iput-boolean v3, p0, mSmartStayEnabledSetting:Z

    .line 6962
    iput-boolean v3, p0, mPendingMessageSmartStay:Z

    .line 6963
    iput-boolean v3, p0, mPendingMessagePreSmartStay:Z

    .line 6964
    iput-boolean v3, p0, mFaceDetected:Z

    .line 6965
    iput-wide v8, p0, mNextTimeoutForSmartStay:J

    .line 6966
    iput-wide v8, p0, mNextTimeoutForPreSmartStay:J

    .line 7155
    const-string v0, ""

    iput-object v0, p0, mScreenOffReason:Ljava/lang/String;

    .line 7156
    const-string v0, ""

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    .line 7157
    const-string v0, ""

    iput-object v0, p0, mPrevReleasedWakeLock:Ljava/lang/String;

    .line 7158
    iput v3, p0, mScreenOnOffCount:I

    .line 7161
    iput v4, p0, mLastUserActivitySummary:I

    .line 7162
    iput v4, p0, mLastScreenTimeout:I

    .line 7165
    const/16 v0, 0xa

    iput v0, p0, COUNT_FOR_LOGGING_FREQUENT_EVENT:I

    .line 7166
    const/16 v0, 0x1388

    iput v0, p0, COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

    .line 7167
    iput v3, p0, mNativeUserActivityCount:I

    .line 7232
    iput-wide v8, p0, mDelayTimePrintWakeLock:J

    .line 7233
    new-instance v0, Lcom/android/server/power/PowerManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$11;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    .line 7358
    const/4 v0, 0x3

    iput v0, p0, mSubScreenPolicyOverride:I

    .line 7359
    const/4 v0, 0x3

    iput v0, p0, mMultiScreenState:I

    .line 7360
    iget v0, p0, mMultiScreenState:I

    iput v0, p0, mPrevMultiScreenState:I

    .line 7361
    const/4 v0, 0x2

    iput v0, p0, mMainScreenState:I

    .line 7362
    const/4 v0, 0x2

    iput v0, p0, mSubScreenState:I

    .line 7363
    iput v4, p0, mMultiScreenStateOverride:I

    .line 7364
    iput v3, p0, mMultiScreenStateChangeReason:I

    .line 7365
    iput-boolean v3, p0, mTspMainLpmEnabled:Z

    .line 7366
    iput-boolean v3, p0, mTspSubLpmEnabled:Z

    .line 7435
    new-instance v0, Lcom/android/server/power/PowerManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$13;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 750
    const-string v0, "PowerManagerService"

    const-string v1, "[api] PowerManagerService()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 754
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PowerManagerService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    .line 756
    iget-object v0, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 757
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 760
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 765
    invoke-direct {p0}, initSmartStay()V

    .line 769
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :try_start_1e3
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 771
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 772
    iget-object v0, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoldingDisplaySuspendBlocker:Z

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, mHalAutoSuspendModeEnabled:Z

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, mHalInteractiveModeEnabled:Z

    .line 777
    const/4 v0, 0x1

    iput v0, p0, mWakefulness:I

    .line 779
    const-string v0, "PowerManagerService"

    const-string v2, "[s] PowerManagerService() : WAKEFULNESS_AWAKE"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-direct {p0}, nativeInit()V

    .line 783
    const/4 v0, 0x0

    invoke-static {v0}, nativeSetAutoSuspend(Z)V

    .line 784
    const/4 v0, 0x1

    invoke-static {v0}, nativeSetInteractive(Z)V

    .line 785
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, nativeSetFeature(II)V

    .line 786
    monitor-exit v1

    .line 787
    return-void

    .line 786
    :catchall_21d
    move-exception v0

    monitor-exit v1
    :try_end_21f
    .catchall {:try_start_1e3 .. :try_end_21f} :catchall_21d

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mPendingForceUnblankDisplayState:I

    return v0
.end method

.method static synthetic access$10002(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mPendingForceUnblankDisplayState:I

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mDisplayReady:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mWakefulness:I

    return v0
.end method

.method static synthetic access$10300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mCoverIsUpdatedFromCoverManager:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    iput-wide p1, p0, mlastUpdateCoverStateTime:J

    return-wide p1
.end method

.method static synthetic access$10802(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, mlastUpdateCoverStateReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mCoverType:I

    return v0
.end method

.method static synthetic access$10902(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mCoverType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    iput-wide p1, p0, mlastSetCoverTypeTime:J

    return-wide p1
.end method

.method static synthetic access$11102(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, mlastUpdateCoverTypeReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic access$11202(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mClearViewBrightnessModeCount:I

    return p1
.end method

.method static synthetic access$11212(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iget v0, p0, mClearViewBrightnessModeCount:I

    add-int/2addr v0, p1

    iput v0, p0, mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic access$11220(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iget v0, p0, mClearViewBrightnessModeCount:I

    sub-int/2addr v0, p1

    iput v0, p0, mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic access$11300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mClearViewBrightnessModeEnabled:Z

    return v0
.end method

.method static synthetic access$11302(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mClearViewBrightnessModeEnabled:Z

    return p1
.end method

.method static synthetic access$11500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mColorWeaknessModeEnabled:Z

    return v0
.end method

.method static synthetic access$11502(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mColorWeaknessModeEnabled:Z

    return p1
.end method

.method static synthetic access$11602(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mColorWeaknessModeCount:I

    return p1
.end method

.method static synthetic access$11800(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$11900(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mScreenBrightnessSetting:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mMultiScreenStateOverride:I

    return v0
.end method

.method static synthetic access$12002(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mMultiScreenStateOverride:I

    return p1
.end method

.method static synthetic access$12102(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mMultiScreenStateChangeReason:I

    return p1
.end method

.method static synthetic access$12200(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mPrevMultiScreenState:I

    return v0
.end method

.method static synthetic access$12300(Lcom/android/server/power/PowerManagerService;)Landroid/view/WindowManagerPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mSubScreenPolicyOverride:I

    return v0
.end method

.method static synthetic access$12500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$DozeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    return-object v0
.end method

.method static synthetic access$12502(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DozeLock;)Lcom/android/server/power/PowerManagerService$DozeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$DozeLock;

    .prologue
    .line 183
    iput-object p1, p0, mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    return-object p1
.end method

.method static synthetic access$12600(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mForceDoze:Z

    return v0
.end method

.method static synthetic access$12602(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mForceDoze:Z

    return p1
.end method

.method static synthetic access$12700(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setWakefulnessLocked(II)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setDozeOverrideFromAodLocked(II)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mPocketQueryLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setScreenDimDurationOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setButtonTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mLightsManager:Lcom/android/server/lights/LightsManager;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mFeatureCoverSysfs:Z

    return v0
.end method

.method static synthetic access$13900(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mIsInPocket:Z

    return v0
.end method

.method static synthetic access$14000(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1}, handleSmartStay(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mIsInPocket:Z

    return p1
.end method

.method static synthetic access$14100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mNoUserActivitySent:Z

    return v0
.end method

.method static synthetic access$14102(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mNoUserActivitySent:Z

    return p1
.end method

.method static synthetic access$14200(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mNoUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, printWakeLockLocked()V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mPocketQueryDone:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mIsPocketSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mIsPocketSensorEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mPocketSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mPocketHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$2576(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iget v0, p0, mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, mDirty:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mProximityPositive:Z

    return p1
.end method

.method static synthetic access$2884(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOffReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3084(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mLastWakeUpReason:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p6}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1}, setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mNativeUserActivityCount:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-wide v0, p0, mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    iput-wide p1, p0, mDelayTimePrintWakeLock:J

    return-wide p1
.end method

.method static synthetic access$3614(Lcom/android/server/power/PowerManagerService;J)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    iget-wide v0, p0, mDelayTimePrintWakeLock:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setHalInteractiveModeLocked(ZI)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mColorFadeExit:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mColorFadeExit:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;IIILandroid/os/IBinder;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/IBinder;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, setAlpmModeInternal(IIILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, initAlpm()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, setDozeModeBySysfs(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, initDoze()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 183
    invoke-direct {p0, p1}, handleBatteryStateChangedLocked(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mUserSwitched:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mFTAMode:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget v0, p0, mDockState:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, mDockState:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, handleSandman()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, handleInputDeviceLightOnByScreenOn()V

    return-void
.end method

.method static synthetic access$5800(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 183
    invoke-static {p0}, copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 183
    invoke-direct {p0, p1}, handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$6000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0}, nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mSystemReady:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p8}, acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 183
    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-wide v0, p0, mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$6902(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 183
    iput-wide p1, p0, mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;JII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, wakeUpWithReasonInternal(JII)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, isQuickBootCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p6}, wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, napInternal(JI)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1}, setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, isDeviceIdleModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 183
    invoke-static {}, callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0, p1}, crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, setTemporaryMarkerScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 183
    invoke-direct {p0, p1}, setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    invoke-direct {p0}, isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 183
    invoke-direct {p0, p1}, dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "x2"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-object v0, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mIsKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mIsKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mIsFolderType:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, mTouchKeyForceDisable:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 183
    iget-boolean v0, p0, mIsAlpmMode:Z

    return v0
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 24
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 1444
    iget-object v14, p0, mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1452
    :try_start_3
    invoke-direct/range {p0 .. p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v12

    .line 1454
    .local v12, "index":I
    if-ltz v12, :cond_6b

    .line 1455
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1456
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1459
    const-string v2, "PowerManagerService"

    const-string v3, "acquireWakeLockInternal : Update existing wake lock"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, v1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1461
    invoke-direct/range {v2 .. v10}, notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1463
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 1465
    :cond_4c
    const/4 v13, 0x0

    .line 1487
    .local v13, "notifyAcquire":Z
    :goto_4d
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_10e

    .line 1502
    :goto_56
    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1503
    iget v2, p0, mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, mDirty:I

    .line 1504
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1505
    if-eqz v13, :cond_69

    .line 1511
    invoke-direct {p0, v1}, notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1513
    :cond_69
    monitor-exit v14

    .line 1514
    return-void

    .line 1467
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "notifyAcquire":Z
    :cond_6b
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_b5

    .line 1469
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    :try_start_82
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_87} :catch_ac
    .catchall {:try_start_82 .. :try_end_87} :catchall_b5

    .line 1473
    :try_start_87
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    invoke-direct {p0, v1}, setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1475
    iget-object v2, p0, mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p7

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move/from16 v0, p7

    if-eq v0, v2, :cond_aa

    .line 1482
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    .line 1484
    :cond_aa
    const/4 v13, 0x1

    .restart local v13    # "notifyAcquire":Z
    goto :goto_4d

    .line 1470
    .end local v13    # "notifyAcquire":Z
    :catch_ac
    move-exception v11

    .line 1471
    .local v11, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wake lock is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1513
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "index":I
    :catchall_b5
    move-exception v2

    monitor-exit v14
    :try_end_b7
    .catchall {:try_start_87 .. :try_end_b7} :catchall_b5

    throw v2

    .line 1489
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v12    # "index":I
    .restart local v13    # "notifyAcquire":Z
    :sswitch_b8
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    :try_start_bb
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_56

    .line 1497
    :sswitch_cc
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] acquire WakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_bb .. :try_end_10c} :catchall_b5

    goto/16 :goto_56

    .line 1487
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_b8
        0x6 -> :sswitch_cc
        0xa -> :sswitch_cc
        0x1a -> :sswitch_cc
        0x20 -> :sswitch_cc
        0x40 -> :sswitch_cc
        0x80 -> :sswitch_cc
    .end sparse-switch
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 11
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1528
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4a

    invoke-static {p1}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1532
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1533
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v6

    .line 1534
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 1542
    .local v5, "opUid":I
    :goto_26
    invoke-direct {p0, v6}, isWakeUpPreventionNeededForNotificationLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1543
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen__On : Cancel (wearable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 1536
    :cond_4b
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1537
    .restart local v6    # "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .restart local v5    # "opUid":I
    :goto_57
    goto :goto_26

    .end local v5    # "opUid":I
    :cond_58
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_57

    .line 1547
    .restart local v5    # "opUid":I
    :cond_5b
    const/16 v0, 0xe

    iput v0, p0, mLastWakeUpReason:I

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    .line 1554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    goto :goto_4a
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1639
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    invoke-static {p1}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1642
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 1649
    :cond_31
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 4481
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4482
    :try_start_3
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_11

    iget v0, p0, mWakefulness:I

    if-eqz v0, :cond_11

    iget-wide v0, p0, mLastScreenBrightnessBoostTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    .line 4484
    :cond_11
    monitor-exit v7

    .line 4499
    :goto_12
    return-void

    .line 4487
    :cond_13
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness boost activated (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    iput-wide p1, p0, mLastScreenBrightnessBoostTime:J

    .line 4489
    iget-boolean v0, p0, mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_3f

    .line 4490
    const/4 v0, 0x1

    iput-boolean v0, p0, mScreenBrightnessBoostInProgress:Z

    .line 4491
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 4493
    :cond_3f
    iget v0, p0, mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, mDirty:I

    .line 4495
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 4497
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4498
    monitor-exit v7

    goto :goto_12

    :catchall_52
    move-exception v0

    monitor-exit v7
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7218
    const-string v1, ""

    .line 7219
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7220
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7222
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

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7224
    return-object v1
.end method

.method private static callerInfoWithProcessName()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 7188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 7189
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 7192
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 7193
    .local v5, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 7195
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/%d/cmdline"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_62
    .catchall {:try_start_c .. :try_end_26} :catchall_7b

    .line 7197
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 7198
    const-string v8, "\u0000"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 7199
    .local v6, "t":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_38

    .line 7200
    const/4 v8, 0x0

    aget-object v5, v6, v8
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_38} :catch_8f
    .catchall {:try_start_26 .. :try_end_38} :catchall_8c

    .line 7206
    .end local v6    # "t":[Ljava/lang/String;
    :cond_38
    if-eqz v2, :cond_92

    .line 7208
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_57

    move-object v1, v2

    .line 7214
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_3e
    :goto_3e
    const-string v8, " (uid: %d pid: %d processName: %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 7209
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_57
    move-exception v0

    .line 7210
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PowerManagerService"

    const-string/jumbo v9, "error on in.close"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7211
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 7203
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_62
    move-exception v0

    .line 7204
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_63
    :try_start_63
    const-string v8, "PowerManagerService"

    const-string/jumbo v9, "error on read process name"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_7b

    .line 7206
    if-eqz v1, :cond_3e

    .line 7208
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_3e

    .line 7209
    :catch_71
    move-exception v0

    .line 7210
    const-string v8, "PowerManagerService"

    const-string/jumbo v9, "error on in.close"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 7206
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7b
    move-exception v8

    :goto_7c
    if-eqz v1, :cond_81

    .line 7208
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 7211
    :cond_81
    :goto_81
    throw v8

    .line 7209
    :catch_82
    move-exception v0

    .line 7210
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PowerManagerService"

    const-string/jumbo v10, "error on in.close"

    invoke-static {v9, v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 7206
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_8c
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_7c

    .line 7203
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_8f
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_63

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_92
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method private canDozeLocked()Z
    .registers 3

    .prologue
    .line 3250
    iget v0, p0, mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private canDreamLocked()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3207
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    iget-boolean v3, p0, mDreamsSupportedConfig:Z

    if-eqz v3, :cond_24

    iget-boolean v3, p0, mDreamsEnabledSetting:Z

    if-eqz v3, :cond_24

    iget-object v3, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_24

    iget-boolean v3, p0, mBootCompleted:Z

    if-eqz v3, :cond_24

    iget-boolean v3, p0, mIsCoverClosed:Z

    if-eqz v3, :cond_25

    .line 3243
    :cond_24
    :goto_24
    return v2

    .line 3220
    :cond_25
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3221
    .local v0, "mPersona":Landroid/os/PersonaManager;
    if-eqz v0, :cond_3e

    .line 3222
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v1

    .line 3223
    .local v1, "userId":I
    const/16 v3, 0x64

    if-lt v1, v3, :cond_3e

    const/16 v3, 0xc8

    if-le v1, v3, :cond_24

    .line 3228
    .end local v1    # "userId":I
    :cond_3e
    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v3

    if-nez v3, :cond_68

    .line 3229
    iget-boolean v3, p0, mIsPowered:Z

    if-nez v3, :cond_4c

    iget-boolean v3, p0, mDreamsEnabledOnBatteryConfig:Z

    if-eqz v3, :cond_24

    .line 3232
    :cond_4c
    iget-boolean v3, p0, mIsPowered:Z

    if-nez v3, :cond_5a

    iget v3, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v3, :cond_5a

    iget v3, p0, mBatteryLevel:I

    iget v4, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v3, v4, :cond_24

    .line 3237
    :cond_5a
    iget-boolean v3, p0, mIsPowered:Z

    if-eqz v3, :cond_68

    iget v3, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v3, :cond_68

    iget v3, p0, mBatteryLevel:I

    iget v4, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v3, v4, :cond_24

    .line 3243
    :cond_68
    const/4 v2, 0x1

    goto :goto_24
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 1682
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    :try_start_2
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 1683
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_17

    move-result v3

    if-ne p1, v3, :cond_14

    .line 1685
    const/4 v2, 0x1

    .line 1692
    :cond_13
    :goto_13
    return v2

    .line 1682
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1689
    :catch_17
    move-exception v0

    .line 1690
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_13
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 5129
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private crashInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4336
    new-instance v1, Lcom/android/server/power/PowerManagerService$7;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4343
    .local v1, "t":Ljava/lang/Thread;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4344
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    .line 4348
    :goto_d
    return-void

    .line 4345
    :catch_e
    move-exception v0

    .line 4346
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5123
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 5124
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5125
    return-object v0
.end method

.method private disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4213
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4214
    :try_start_3
    invoke-direct {p0, p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4215
    .local v0, "index":I
    if-ltz v0, :cond_27

    .line 4216
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4218
    .local v1, "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v2, p2, :cond_27

    .line 4219
    iput-boolean p2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 4221
    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_29

    .line 4222
    invoke-direct {p0, v1}, notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4227
    :goto_1e
    iget v2, p0, mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, mDirty:I

    .line 4228
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4231
    .end local v1    # "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_27
    monitor-exit v3

    .line 4232
    return-void

    .line 4224
    .restart local v1    # "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_29
    invoke-direct {p0, v1}, notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1e

    .line 4231
    .end local v0    # "index":I
    .end local v1    # "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4827
    const-string v8, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4830
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4831
    :try_start_8
    const-string v8, "Power Manager State:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4832
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDirty=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4833
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulness="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mWakefulness:I

    invoke-static {v10}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4834
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulnessChanging="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mWakefulnessChanging:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4835
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsPowered="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsPowered:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4836
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPlugType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mPlugType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4837
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mBatteryLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4838
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSettingChangedAfterLowBattery="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsSettingChangedAfterLowBattery:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4840
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDockState="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDockState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mStayOn:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4842
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mProximityPositive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mProximityPositive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4843
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBootCompleted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mBootCompleted:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4844
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSystemReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mSystemReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4845
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalInteractiveModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mHalInteractiveModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4847
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeLockSummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mWakeLockSummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4848
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivitySummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mUserActivitySummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4849
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mRequestWaitForNegativeProximity:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4850
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanScheduled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mSandmanScheduled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4851
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanSummoned="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mSandmanSummoned:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mLowPowerModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4853
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelLow="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mBatteryLevelLow:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4854
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDeviceIdleMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleWhitelist="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mDeviceIdleWhitelist:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4856
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mDeviceIdleTempWhitelist:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4857
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mLastWakeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4858
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastSleepTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mLastSleepTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4859
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mLastUserActivityTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4860
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4862
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastInteractivePowerHintTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mLastInteractivePowerHintTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mLastScreenBrightnessBoostTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4866
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDisplayReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDisplayReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4870
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4872
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4873
    const-string v8, "Settings and Configuration:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4876
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4880
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4882
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTheaterModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mTheaterModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4884
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4886
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsSupportedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsSupportedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4888
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4892
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4894
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4900
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsEnabledSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4901
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4902
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDreamsActivateOnDockSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4903
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDozeAfterScreenOffConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4904
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mLowPowerModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mAutoLowPowerModeConfigured:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowBatteryTriggerLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mLowBatteryTriggerLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4909
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mMaximumScreenDimDurationConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mMaximumScreenDimRatioConfig:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenOffTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSleepTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mSleepTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (enforced="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mStayOnWhilePluggedInSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4917
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenBrightnessSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4918
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenBrightnessModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4921
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4923
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4927
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4931
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4933
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenBrightnessSettingMinimum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4934
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenBrightnessSettingMaximum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mScreenBrightnessSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4936
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDoubleTapWakeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mDoubleTapWakeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivitySummary: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mLastUserActivitySummary:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4942
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsCocktailBarCover: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsCocktailBarCover:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSupportedSensorHub: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsSupportedSensorHub:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsInPocketOrBagAvailable: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsInPocketOrBagAvailable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeUpReason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mLastWakeUpReason:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpPreventionForNotificationSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mWakeUpPreventionForNotificationSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpPreventionPackagesForNotificationSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mOutdoorModeSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mOutdoorModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSupportedLightSensor: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsSupportedLightSensor:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4958
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryMarkerScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4963
    const-string v8, "  SecProductFeature_FRAMEWORK.SEC_PRODUCT_FEATURE_FRAMEWORK_ENABLE_SMART_STAY: true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    const-string v8, "  SecProductFeature_CAMERA.SEC_PRODUCT_FEATURE_CAMERA_DELAY_TIME_FOR_SMART_STAY: 2950"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4968
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  USE_AUTO_BRIGHTNESS_DETAIL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (mSCafeName: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mIsMocha: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " upgradeLollipop: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mFeatureNotifyScreenOffTimeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mFeatureNotifyScreenOffTimeout:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    invoke-direct {p0}, getSleepTimeoutLocked()I

    move-result v5

    .line 4977
    .local v5, "sleepTimeout":I
    invoke-direct {p0, v5}, getScreenOffTimeoutLocked(I)I

    move-result v4

    .line 4978
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, getScreenDimDurationLocked(I)I

    move-result v3

    .line 4979
    .local v3, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4980
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sleep timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen off timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration override: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mScreenDimDurationOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4988
    const-string v8, "Smart Stay:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4989
    const-string v8, "  USE_SMART_STAY: true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  USE_PRE_SMART_STAY: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, USE_PRE_SMART_STAY:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSmartStayEnabledSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mSmartStayEnabledSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  SmartStayDelay: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mSmartStayDelay:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mNextTimeoutForSmartStay: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mNextTimeoutForSmartStay:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPendingMessageSmartStay: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mPendingMessageSmartStay:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPendingMessagePreSmartStay: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mPendingMessagePreSmartStay:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mFaceDetected: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mFaceDetected:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    const-string v8, "  mIsBadCurrentConsumptionDevice: true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5002
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5003
    const-string v8, "UID states:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5004
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a40
    iget-object v8, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_a67

    .line 5005
    const-string v8, "  UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {p1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5006
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 5004
    add-int/lit8 v0, v0, 0x1

    goto :goto_a40

    .line 5009
    :cond_a67
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5010
    const-string v8, "InputDeviceLightState:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5011
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTouchKeyOffTimeoutSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mTouchKeyOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    iget-boolean v8, p0, mIsFolderType:Z

    if-eqz v8, :cond_abb

    .line 5013
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mKeyboardOffTimeoutSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mKeyboardOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5014
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mKeyLedOffNightModeSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mKeyLedOffNightModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5016
    :cond_abb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSipVisible: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsSipVisible:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTouchKeyForceDisable: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mTouchKeyForceDisable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTouchKeyForceDisableOverrideFromSystemPowerSaveMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5019
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mInputDeviceEnabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mInputDeviceEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mEmergencyMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mEmergencyMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsFolderType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsFolderType:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    iget-boolean v8, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v8, :cond_b87

    .line 5026
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5027
    const-string v8, "ATT EAS Pin lock:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSecuredLockEnableSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mSecuredLockEnableSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSecuredLockTimeoutSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mSecuredLockTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    :cond_b87
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5035
    const-string v8, "UID states:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    const/4 v0, 0x0

    :goto_b90
    iget-object v8, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_bb7

    .line 5037
    const-string v8, "  UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {p1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5038
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 5036
    add-int/lit8 v0, v0, 0x1

    goto :goto_b90

    .line 5041
    :cond_bb7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5042
    const-string v8, "Clear Cover:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsCoverClosed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsCoverClosed:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mlastUpdateCoverStateReason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mlastUpdateCoverStateReason:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mlastUpdateCoverStateTime: = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mlastUpdateCoverStateTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5046
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mFeatureCoverSysfs: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mFeatureCoverSysfs:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5047
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsCocktailBarCover: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsCocktailBarCover:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5048
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCoverType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mCoverType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, mlastSetCoverTypeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5049
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mlastUpdateCoverTypeReason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mlastUpdateCoverTypeReason:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5054
    const-string v8, "ALPM Mode:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsAlpmMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mIsAlpmMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5056
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPendingForceUnblankDisplayState: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, mPendingForceUnblankDisplayState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5060
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5061
    const-string v8, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_COCKTAIL_FW: true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5077
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5078
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTA mode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, mFTAMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_USE_FACTORY_BINARY: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, SEC_USE_FACTORY_BINARY:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5083
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5084
    const-string v8, "SEC_FEATURE_MARKER_TRACKER: true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5087
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5088
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_FEATURE_MAXMANUAL_HBM: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MAXMANUAL_HBM:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5092
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wake Locks: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    iget-object v8, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5094
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d36

    .line 5107
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v5    # "sleepTimeout":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_d59
    move-exception v8

    monitor-exit v9
    :try_end_d5b
    .catchall {:try_start_8 .. :try_end_d5b} :catchall_d59

    throw v8

    .line 5097
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    .restart local v5    # "sleepTimeout":I
    :cond_d5c
    :try_start_d5c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5098
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspend Blockers: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    iget-object v8, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_da4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 5100
    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d81

    .line 5103
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_da4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Power: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5106
    iget-object v6, p0, mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5107
    .local v6, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v9
    :try_end_dc2
    .catchall {:try_start_d5c .. :try_end_dc2} :catchall_d59

    .line 5109
    if-eqz v6, :cond_dc7

    .line 5110
    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 5113
    :cond_dc7
    const-string v8, "\n\n ====================== beginning of PMS  log ======================"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5114
    const-string v8, "  Day       Time    Tid Debug     TAG            INFO"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5115
    const-string v8, " ==================================================================="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5116
    invoke-static {p1}, Lcom/android/server/power/Slog;->savePMSLog(Ljava/io/PrintWriter;)I

    .line 5117
    const-string v8, " ======================= end of PMS log ========================"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5118
    const-string v8, " PMSLog Done !!! \n\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    return-void
.end method

.method private enableQbCharger(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1991
    const-string/jumbo v0, "sys.quickboot.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_29

    const-string/jumbo v0, "sys.quickboot.poweroff"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_29

    .line 1995
    if-eqz p1, :cond_29

    iget-boolean v0, p0, mIsPowered:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, isInteractiveInternal()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1996
    const-string/jumbo v0, "sys.qbcharger.enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :cond_29
    return-void
.end method

.method private faceDetect()Z
    .registers 5

    .prologue
    .line 7060
    const/4 v0, 0x0

    .line 7064
    .local v0, "bFaceDetected":Z
    iget-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-nez v1, :cond_d

    .line 7065
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v1

    iput-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 7067
    :cond_d
    iget-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_2f

    .line 7068
    iget-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartStay()Z

    move-result v0

    .line 7069
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[smart stay] faceDetect : bFaceDetected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7073
    :cond_2f
    return v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1696
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1697
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1698
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1702
    .end local v1    # "i":I
    :goto_15
    return v1

    .line 1697
    .restart local v1    # "i":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1702
    :cond_19
    const/4 v1, -0x1

    goto :goto_15
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .registers 3

    .prologue
    .line 2371
    iget-boolean v0, p0, mWakefulnessChanging:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, mDisplayReady:Z

    if-eqz v0, :cond_13

    .line 2372
    iget v0, p0, mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    iget v0, p0, mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_14

    .line 2379
    :cond_13
    :goto_13
    return-void

    .line 2376
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, mWakefulnessChanging:Z

    .line 2377
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    goto :goto_13
.end method

.method private getDesiredScreenPolicyLocked()I
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3786
    iget v4, p0, mWakefulness:I

    if-nez v4, :cond_a

    .line 3829
    :cond_9
    :goto_9
    return v0

    .line 3790
    :cond_a
    iget v4, p0, mWakefulness:I

    if-ne v4, v3, :cond_16

    .line 3791
    iget v2, p0, mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    move v0, v1

    .line 3792
    goto :goto_9

    .line 3801
    :cond_16
    iget v4, p0, mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2a

    iget v4, p0, mUserActivitySummary:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2a

    iget-boolean v4, p0, mBootCompleted:Z

    if-eqz v4, :cond_2a

    iget-boolean v4, p0, mScreenBrightnessBoostInProgress:Z

    if-eqz v4, :cond_55

    .line 3806
    :cond_2a
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    if-eqz v4, :cond_34

    iget v4, p0, mBatteryLevel:I

    if-gt v4, v1, :cond_34

    move v0, v2

    .line 3808
    goto :goto_9

    .line 3810
    :cond_34
    iget v4, p0, mBatteryLevel:I

    if-gt v4, v5, :cond_46

    iget v4, p0, mBatteryStatus:I

    if-eq v4, v2, :cond_46

    iget-boolean v2, p0, mIsSettingChangedAfterLowBattery:Z

    if-nez v2, :cond_46

    .line 3814
    iget-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->criticalLowBattery:Z

    :goto_44
    move v0, v3

    .line 3826
    goto :goto_9

    .line 3817
    :cond_46
    iget v1, p0, mBatteryLevel:I

    if-le v1, v5, :cond_50

    iget-boolean v1, p0, mIsSettingChangedAfterLowBattery:Z

    if-eqz v1, :cond_50

    .line 3819
    iput-boolean v0, p0, mIsSettingChangedAfterLowBattery:Z

    .line 3822
    :cond_50
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->criticalLowBattery:Z

    goto :goto_44

    :cond_55
    move v0, v2

    .line 3829
    goto :goto_9
.end method

.method private getMultipleScreenStateByPolicy(II)I
    .registers 4
    .param p1, "mainScreenPolicy"    # I
    .param p2, "subScreenPolicy"    # I

    .prologue
    .line 3446
    if-eqz p1, :cond_8

    .line 3447
    if-eqz p2, :cond_6

    .line 3448
    const/4 v0, 0x3

    .line 3457
    :goto_5
    return v0

    .line 3450
    :cond_6
    const/4 v0, 0x1

    goto :goto_5

    .line 3454
    :cond_8
    if-eqz p2, :cond_c

    .line 3455
    const/4 v0, 0x2

    goto :goto_5

    .line 3457
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private getScreenDimDurationLocked(I)I
    .registers 8
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 2940
    iget v0, p0, mMaximumScreenDimDurationConfig:I

    .line 2941
    .local v0, "screenDimDuration":I
    iget-wide v2, p0, mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    .line 2942
    int-to-long v2, p1

    iget-wide v4, p0, mScreenDimDurationOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 2949
    :goto_12
    return v0

    .line 2946
    :cond_13
    iget v1, p0, mMaximumScreenDimDurationConfig:I

    int-to-float v2, p1

    iget v3, p0, mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_12
.end method

.method private getScreenOffTimeoutLocked(I)I
    .registers 8
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 2906
    iget v1, p0, mScreenOffTimeoutSetting:I

    .line 2907
    .local v1, "timeout":I
    const/4 v0, 0x0

    .line 2908
    .local v0, "result":I
    invoke-direct {p0}, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2909
    iget v2, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2911
    :cond_f
    iget-wide v2, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1a

    .line 2913
    iget-wide v2, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v1, v2

    .line 2915
    :cond_1a
    if-ltz p1, :cond_20

    .line 2916
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2918
    :cond_20
    iget v2, p0, mMinimumScreenOffTimeoutConfig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2921
    iget-boolean v2, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v2, :cond_42

    iget v2, p0, mSecuredLockEnableSetting:I

    if-lez v2, :cond_42

    .line 2922
    iget v2, p0, mSecuredLockTimeoutSetting:I

    if-le v0, v2, :cond_42

    iget v2, p0, mSecuredLockTimeoutSetting:I

    iget v3, p0, mMinimumScreenOffTimeoutConfig:I

    if-le v2, v3, :cond_42

    .line 2923
    const-string v2, "PowerManagerService"

    const-string/jumbo v3, "getScreenOffTimeoutLocked return mSecuredLockTimeoutSetting"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    iget v0, p0, mSecuredLockTimeoutSetting:I

    .line 2930
    :cond_42
    iget v2, p0, mLastScreenTimeout:I

    if-eq v0, v2, :cond_6c

    .line 2931
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[s] getScreenOffTimeoutLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mLastScreenTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    iput v0, p0, mLastScreenTimeout:I

    .line 2935
    :cond_6c
    return v0
.end method

.method private getSleepTimeoutLocked()I
    .registers 3

    .prologue
    .line 2898
    iget v0, p0, mSleepTimeoutSetting:I

    .line 2899
    .local v0, "timeout":I
    if-gtz v0, :cond_6

    .line 2900
    const/4 v1, -0x1

    .line 2902
    :goto_5
    return v1

    :cond_6
    iget v1, p0, mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5
.end method

.method private goToSleepInternal(JIII)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2208
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2209
    :try_start_3
    invoke-direct/range {p0 .. p5}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2210
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2212
    :cond_c
    monitor-exit v1

    .line 2213
    return-void

    .line 2212
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2224
    iget-wide v4, p0, mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_17

    iget v4, p0, mWakefulness:I

    if-eqz v4, :cond_17

    iget v4, p0, mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    iget-boolean v4, p0, mBootCompleted:Z

    if-eqz v4, :cond_17

    iget-boolean v4, p0, mSystemReady:Z

    if-nez v4, :cond_19

    .line 2228
    :cond_17
    const/4 v4, 0x0

    .line 2305
    :goto_18
    return v4

    .line 2232
    :cond_19
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[ps] Screen__Off - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mScreenOnOffCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const-string v4, ""

    iput-object v4, p0, mScreenOnReason:Ljava/lang/String;

    .line 2234
    const-string v4, ""

    iput-object v4, p0, mScreenOffReason:Ljava/lang/String;

    .line 2235
    iget v4, p0, mScreenOnOffCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mScreenOnOffCount:I

    .line 2238
    const-wide/32 v4, 0x20000

    const-string/jumbo v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2240
    packed-switch p3, :pswitch_data_19a

    .line 2266
    :try_start_69
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const/4 p3, 0x0

    .line 2271
    :goto_88
    iput-wide p1, p0, mLastSleepTime:J

    .line 2272
    const/4 v4, 0x1

    iput-boolean v4, p0, mSandmanSummoned:Z

    .line 2273
    const/4 v4, 0x3

    invoke-direct {p0, v4, p3}, setWakefulnessLocked(II)V

    .line 2276
    iget-object v4, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p3, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 2284
    const/4 v2, 0x0

    .line 2285
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2286
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9d
    if-ge v0, v1, :cond_185

    .line 2287
    iget-object v4, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2288
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_1ac

    .line 2286
    :goto_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 2243
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_b3
    const-string v4, "PowerManagerService"

    const-string v5, "Going to sleep due to proximity..."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_69 .. :try_end_ba} :catchall_bb

    goto :goto_88

    .line 2303
    :catchall_bb
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 2247
    :pswitch_c3
    :try_start_c3
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 2251
    :pswitch_e2
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 2254
    :pswitch_101
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 2257
    :pswitch_121
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 2260
    :pswitch_141
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to sleep button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 2263
    :pswitch_161
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 2292
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_181
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b0

    .line 2296
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_185
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2299
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_191

    .line 2300
    invoke-direct {p0, p1, p2, p5}, reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_191
    .catchall {:try_start_c3 .. :try_end_191} :catchall_bb

    .line 2303
    :cond_191
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2305
    const/4 v4, 0x1

    goto/16 :goto_18

    .line 2240
    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_e2
        :pswitch_101
        :pswitch_121
        :pswitch_161
        :pswitch_141
        :pswitch_b3
    .end packed-switch

    .line 2288
    :sswitch_data_1ac
    .sparse-switch
        0x6 -> :sswitch_181
        0xa -> :sswitch_181
        0x1a -> :sswitch_181
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4286
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mBatteryStatus:I

    .line 4288
    iget v0, p0, mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mDirty:I

    .line 4289
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4290
    return-void
.end method

.method private handleInputDeviceLightOnByScreenOn()V
    .registers 4

    .prologue
    .line 6715
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6716
    :try_start_3
    iget v0, p0, mDirty:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, mDirty:I

    .line 6717
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 6718
    monitor-exit v1

    .line 6719
    return-void

    .line 6718
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private handleSandman()V
    .registers 14

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 3071
    const/4 v8, 0x0

    .line 3074
    .local v8, "needNotifyScreenOffTimeout":Z
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3075
    const/4 v3, 0x0

    :try_start_9
    iput-boolean v3, p0, mSandmanScheduled:Z

    .line 3076
    iget v10, p0, mWakefulness:I

    .line 3077
    .local v10, "wakefulness":I
    iget-boolean v3, p0, mSandmanSummoned:Z

    if-eqz v3, :cond_fa

    iget-boolean v3, p0, mDisplayReady:Z

    if-eqz v3, :cond_fa

    .line 3078
    invoke-direct {p0}, canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-direct {p0}, canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_f5

    :cond_21
    move v9, v1

    .line 3079
    .local v9, "startDreaming":Z
    :goto_22
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSandman : startDreaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  (canDreamLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, canDreamLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  canDozeLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, canDozeLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    const/4 v3, 0x0

    iput-boolean v3, p0, mSandmanSummoned:Z

    .line 3084
    iget-boolean v3, p0, mFeatureNotifyScreenOffTimeout:Z

    if-eqz v3, :cond_f8

    invoke-direct {p0}, isItBedTimeYetLocked()Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-direct {p0}, canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-direct {p0}, canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-object v3, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne v3, v7, :cond_f8

    :cond_7c
    move v8, v1

    .line 3093
    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_fc

    .line 3099
    iget-object v2, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_103

    .line 3101
    if-eqz v9, :cond_b2

    .line 3102
    iget-object v2, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v11}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 3103
    const-string v3, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSandman : startDream("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v10, v6, :cond_ff

    move v2, v1

    :goto_9a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    iget-object v2, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v10, v6, :cond_101

    :goto_af
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 3106
    :cond_b2
    iget-object v1, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .line 3112
    .local v0, "isDreaming":Z
    :goto_b8
    if-eqz v8, :cond_cb

    .line 3113
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : SCREEN_OFF_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mScreenOffTimeoutIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3119
    :cond_cb
    if-eqz v9, :cond_d7

    if-nez v0, :cond_d7

    .line 3120
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : startDreaming, but isDreaming false"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_d7
    iget-object v12, p0, mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3127
    if-eqz v9, :cond_eb

    if-eqz v0, :cond_eb

    .line 3128
    :try_start_de
    iget v1, p0, mBatteryLevel:I

    iput v1, p0, mBatteryLevelWhenDreamStarted:I

    .line 3129
    if-ne v10, v6, :cond_105

    .line 3130
    const-string v1, "PowerManagerService"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_eb
    :goto_eb
    iget-boolean v1, p0, mSandmanSummoned:Z

    if-nez v1, :cond_f3

    iget v1, p0, mWakefulness:I

    if-eq v1, v10, :cond_110

    .line 3139
    :cond_f3
    monitor-exit v12
    :try_end_f4
    .catchall {:try_start_de .. :try_end_f4} :catchall_10d

    .line 3201
    :cond_f4
    :goto_f4
    return-void

    .end local v0    # "isDreaming":Z
    .end local v9    # "startDreaming":Z
    :cond_f5
    move v9, v11

    .line 3078
    goto/16 :goto_22

    .restart local v9    # "startDreaming":Z
    :cond_f8
    move v8, v11

    .line 3084
    goto :goto_7d

    .line 3091
    .end local v9    # "startDreaming":Z
    :cond_fa
    const/4 v9, 0x0

    .restart local v9    # "startDreaming":Z
    goto :goto_7d

    .line 3093
    .end local v9    # "startDreaming":Z
    .end local v10    # "wakefulness":I
    :catchall_fc
    move-exception v1

    :try_start_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw v1

    .restart local v9    # "startDreaming":Z
    .restart local v10    # "wakefulness":I
    :cond_ff
    move v2, v11

    .line 3103
    goto :goto_9a

    :cond_101
    move v1, v11

    .line 3104
    goto :goto_af

    .line 3108
    :cond_103
    const/4 v0, 0x0

    .restart local v0    # "isDreaming":Z
    goto :goto_b8

    .line 3132
    :cond_105
    :try_start_105
    const-string v1, "PowerManagerService"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 3195
    :catchall_10d
    move-exception v1

    monitor-exit v12
    :try_end_10f
    .catchall {:try_start_105 .. :try_end_10f} :catchall_10d

    throw v1

    .line 3143
    :cond_110
    if-ne v10, v7, :cond_1cb

    .line 3144
    if-eqz v0, :cond_15f

    :try_start_114
    invoke-direct {p0}, canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 3145
    iget v1, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_195

    iget v1, p0, mBatteryLevel:I

    iget v2, p0, mBatteryLevelWhenDreamStarted:I

    iget v3, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_195

    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_195

    .line 3152
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_15f
    invoke-direct {p0}, isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_198

    .line 3165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dream(timeout)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOffReason:Ljava/lang/String;

    .line 3167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, goToSleepNoUpdateLocked(JIII)Z

    .line 3169
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3195
    :cond_18b
    :goto_18b
    monitor-exit v12
    :try_end_18c
    .catchall {:try_start_114 .. :try_end_18c} :catchall_10d

    .line 3198
    if-eqz v0, :cond_f4

    .line 3199
    iget-object v1, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v11}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_f4

    .line 3158
    :cond_195
    :try_start_195
    monitor-exit v12

    goto/16 :goto_f4

    .line 3172
    :cond_198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dream end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOnReason:Ljava/lang/String;

    .line 3176
    const/16 v1, 0xf

    iput v1, p0, mLastWakeUpReason:I

    .line 3179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.power:DREAM"

    const/16 v5, 0x3e8

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 3182
    invoke-direct {p0}, updatePowerStateLocked()V

    goto :goto_18b

    .line 3184
    :cond_1cb
    if-ne v10, v6, :cond_18b

    .line 3185
    if-eqz v0, :cond_1d2

    .line 3186
    monitor-exit v12

    goto/16 :goto_f4

    .line 3189
    :cond_1d2
    iget-boolean v1, p0, mForceDoze:Z

    if-eqz v1, :cond_1d9

    monitor-exit v12

    goto/16 :goto_f4

    .line 3192
    :cond_1d9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, reallyGoToSleepNoUpdateLocked(JI)Z

    .line 3193
    invoke-direct {p0}, updatePowerStateLocked()V
    :try_end_1e5
    .catchall {:try_start_195 .. :try_end_1e5} :catchall_10d

    goto :goto_18b
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .registers 3

    .prologue
    .line 4514
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4519
    :try_start_3
    iget v0, p0, mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, mDirty:I

    .line 4520
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4521
    monitor-exit v1

    .line 4522
    return-void

    .line 4521
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .registers 1

    .prologue
    .line 1438
    invoke-direct {p0}, updateSettingsLocked()V

    .line 1439
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1440
    return-void
.end method

.method private handleSmartStay(Z)V
    .registers 12
    .param p1, "bPreTest"    # Z

    .prologue
    .line 6998
    const-string v8, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_2b

    const-string v1, "(preTest)"

    :goto_11
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6999
    const/4 v1, 0x0

    iput-boolean v1, p0, mFaceDetected:Z

    .line 7001
    iget-boolean v1, p0, mBootCompleted:Z

    if-nez v1, :cond_2e

    .line 7002
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay: mBootCompleted is false. return"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    :cond_2a
    :goto_2a
    return-void

    .line 6998
    :cond_2b
    const-string v1, ""

    goto :goto_11

    .line 7006
    :cond_2e
    iget v1, p0, mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3c

    .line 7007
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because of screen bright wake lock"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 7011
    :cond_3c
    iget-boolean v1, p0, mIsFolderType:Z

    if-eqz v1, :cond_4c

    .line 7012
    iget-boolean v1, p0, mIsLidClosed:Z

    if-eqz v1, :cond_4c

    .line 7013
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because folder is closed"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 7018
    :cond_4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 7019
    .local v6, "startTimeFaceDetect":J
    invoke-direct {p0}, faceDetect()Z

    move-result v0

    .line 7020
    .local v0, "bFaceDetected":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 7022
    .local v4, "finishTimeFaceDetect":J
    sub-long v2, v4, v6

    .line 7024
    .local v2, "elapsedTime":J
    if-eqz p1, :cond_9b

    .line 7025
    iget-wide v8, p0, mNextTimeoutForPreSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_7b

    iget-wide v8, p0, mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_7b

    .line 7027
    if-nez v0, :cond_2a

    .line 7028
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v8, p0, mFaceDetectedFailIntent:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7029
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay(preTest) : sendBroadcast done."

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 7033
    :cond_7b
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay(preTest) : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 7037
    :cond_9b
    iget-wide v8, p0, mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_bf

    .line 7038
    iput-boolean v0, p0, mFaceDetected:Z

    .line 7039
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : mFaceDetected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, mFaceDetected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 7043
    :cond_bf
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a
.end method

.method private handleUserActivityTimeout()V
    .registers 3

    .prologue
    .line 2887
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2892
    :try_start_3
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, mDirty:I

    .line 2893
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2894
    monitor-exit v1

    .line 2895
    return-void

    .line 2894
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1607
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleWakeLockDeath : release WakeLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1615
    :try_start_1b
    iget-object v1, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1616
    .local v0, "index":I
    if-gez v0, :cond_25

    .line 1617
    monitor-exit v2

    .line 1622
    :goto_24
    return-void

    .line 1620
    :cond_25
    invoke-direct {p0, p1, v0}, removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1621
    monitor-exit v2

    goto :goto_24

    .end local v0    # "index":I
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private initAlpm()V
    .registers 3

    .prologue
    .line 4752
    const/4 v0, 0x0

    iput-object v0, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 4753
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mAlpmLock set to null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    return-void
.end method

.method private initDoze()V
    .registers 3

    .prologue
    .line 4778
    const/4 v0, 0x0

    iput-object v0, p0, mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    .line 4779
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mDozeLock set to null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    return-void
.end method

.method private initSmartStay()V
    .registers 4

    .prologue
    .line 6973
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[smart stay] "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    .line 6974
    iget-object v0, p0, mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6976
    new-instance v0, Lcom/android/server/power/PowerManagerService$10;

    iget-object v1, p0, mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandlerSmartStay:Landroid/os/Handler;

    .line 6994
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, mFaceDetectedFailIntent:Landroid/content/Intent;

    .line 6995
    return-void
.end method

.method private initWakeUpPrevention()V
    .registers 3

    .prologue
    .line 2026
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mIsCocktailBarCover:Z

    .line 2030
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportedSensorHub:Z

    .line 2032
    iget-boolean v0, p0, mIsSupportedSensorHub:Z

    if-eqz v0, :cond_5a

    .line 2033
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_2b

    .line 2034
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 2037
    :cond_2b
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_5a

    .line 2038
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->getFeatureLevel(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5a

    .line 2041
    iget-boolean v0, p0, mIsInPocketOrBagAvailable:Z

    if-eqz v0, :cond_5a

    .line 2042
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "mPocketHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mPocketHandlerThread:Landroid/os/HandlerThread;

    .line 2043
    iget-object v0, p0, mPocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2045
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;

    iget-object v1, p0, mPocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mPocketHandler:Landroid/os/Handler;

    .line 2051
    :cond_5a
    return-void
.end method

.method private isBeingKeptAwakeLocked()Z
    .registers 2

    .prologue
    .line 3018
    iget-boolean v0, p0, mStayOn:Z

    if-nez v0, :cond_14

    iget v0, p0, mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_14

    iget v0, p0, mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_14

    iget-boolean v0, p0, mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isCoverClosedBySysfs()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6857
    invoke-direct {p0}, isSupportCover()Z

    move-result v2

    if-nez v2, :cond_8

    .line 6866
    :cond_7
    :goto_7
    return v1

    .line 6861
    :cond_8
    const-string v2, "/sys/class/sec/sec_key/hall_detect"

    invoke-direct {p0, v2}, readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6862
    .local v0, "coverState":Ljava/lang/String;
    const-string v2, "OPEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 6866
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private isDeviceIdleModeInternal()Z
    .registers 3

    .prologue
    .line 4279
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4280
    :try_start_3
    iget-boolean v0, p0, mDeviceIdleMode:Z

    monitor-exit v1

    return v0

    .line 4281
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isFamilyConnectedInstalled(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3259
    const-string v0, "com.samsung.android.familyshare.dashboard"

    invoke-direct {p0, v0, p1}, isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isInPocketLocked()Z
    .registers 7

    .prologue
    .line 2055
    iget-object v3, p0, mPocketQueryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2056
    :try_start_3
    iget-boolean v2, p0, mIsInPocketOrBagAvailable:Z

    if-eqz v2, :cond_53

    .line 2057
    new-instance v1, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 2058
    .local v1, "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2060
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsInPocket:Z

    .line 2061
    const/4 v2, 0x0

    iput-boolean v2, p0, mPocketQueryDone:Z

    .line 2063
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2064
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2065
    iget-object v2, p0, mPocketHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2067
    :goto_25
    iget-boolean v2, p0, mPocketQueryDone:Z
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_38

    if-nez v2, :cond_3b

    .line 2069
    :try_start_29
    iget-object v2, p0, mPocketQueryLock:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2070
    const/4 v2, 0x1

    iput-boolean v2, p0, mPocketQueryDone:Z
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_33} :catch_34
    .catchall {:try_start_29 .. :try_end_33} :catchall_36

    goto :goto_25

    .line 2072
    :catch_34
    move-exception v2

    goto :goto_25

    .line 2073
    :catchall_36
    move-exception v2

    :try_start_37
    throw v2

    .line 2085
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v2

    .line 2077
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_3b
    :try_start_3b
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2078
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2079
    iget-object v2, p0, mPocketHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2081
    const-string/jumbo v2, "mPocketQueryDone"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 2084
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_53
    iget-boolean v2, p0, mIsInPocket:Z

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_38

    return v2
.end method

.method private isInputDeviceLightAvailable(I)Z
    .registers 5
    .param p1, "lightsId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3404
    iget-boolean v2, p0, mTouchKeyForceDisable:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, mIsCoverClosed:Z

    if-nez v2, :cond_12

    iget v2, p0, mWakefulness:I

    if-eq v2, v1, :cond_13

    .line 3427
    :cond_12
    :goto_12
    return v0

    .line 3418
    :cond_13
    iget-boolean v2, p0, mColorFadeExit:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, mInputDeviceEnabled:Z

    if-eqz v2, :cond_12

    .line 3421
    const/4 v2, 0x3

    if-ne p1, v2, :cond_28

    .line 3422
    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_26

    iget-boolean v2, p0, mIsLidClosed:Z

    if-eqz v2, :cond_12

    :cond_26
    move v0, v1

    goto :goto_12

    .line 3423
    :cond_28
    const/4 v2, 0x2

    if-ne p1, v2, :cond_12

    .line 3424
    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, mIsLidClosed:Z

    if-nez v2, :cond_3b

    invoke-direct {p0}, isKeyboardLightDisabledByNightMode()Z

    move-result v2

    if-nez v2, :cond_3b

    :goto_39
    move v0, v1

    goto :goto_12

    :cond_3b
    move v1, v0

    goto :goto_39
.end method

.method private isInteractiveInternal()Z
    .registers 3

    .prologue
    .line 4236
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4237
    :try_start_3
    iget v0, p0, mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 4238
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .registers 2

    .prologue
    .line 3006
    iget-boolean v0, p0, mBootCompleted:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isKeyboardLightDisabledByNightMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 3432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 3433
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 3436
    .local v1, "nowHour":I
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    if-eqz v3, :cond_1d

    iget v3, p0, mKeyLedOffNightModeSetting:I

    if-ne v3, v2, :cond_1d

    const/4 v3, 0x7

    if-lt v1, v3, :cond_1d

    const/16 v3, 0x11

    if-ge v1, v3, :cond_1d

    .line 3439
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private isLowPowerModeInternal()Z
    .registers 3

    .prologue
    .line 4242
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4243
    :try_start_3
    iget-boolean v0, p0, mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    .line 4244
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 3

    .prologue
    .line 4463
    iget v0, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_d

    iget v0, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 3263
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3265
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3268
    :goto_9
    return v2

    .line 3267
    :catch_a
    move-exception v0

    .line 3268
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private isPreSmartStayNeeded(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 7049
    iget-boolean v1, p0, USE_PRE_SMART_STAY:Z

    if-eqz v1, :cond_18

    iget v1, p0, mUserActivitySummary:I

    if-ne v1, v0, :cond_18

    iget-wide v2, p0, mNextTimeoutForPreSmartStay:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_18

    iget-wide v2, p0, mNextTimeoutForPreSmartStay:J

    iget-wide v4, p0, mNextTimeoutForSmartStay:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isProximityPositveLocked()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1889
    invoke-direct {p0}, shouldUseProximitySensorLocked()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, mProximityPositive:Z

    if-ne v1, v0, :cond_c

    .line 1892
    .local v0, "proxEnabled":Z
    :goto_b
    return v0

    .line 1889
    .end local v0    # "proxEnabled":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isQuickBootCall()Z
    .registers 9

    .prologue
    .line 1755
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1758
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1760
    .local v5, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1761
    .local v1, "callingPid":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1762
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_16

    .line 1763
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1764
    .local v3, "process":Ljava/lang/String;
    const-string v6, "com.qapp.quickboot"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1765
    const/4 v6, 0x1

    .line 1768
    .end local v3    # "process":Ljava/lang/String;
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_31
    return v6

    :cond_32
    const/4 v6, 0x0

    goto :goto_31
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .registers 3

    .prologue
    .line 4502
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4503
    :try_start_3
    iget-boolean v0, p0, mScreenBrightnessBoostInProgress:Z

    monitor-exit v1

    return v0

    .line 4504
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1518
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_e

    .line 1524
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 1522
    :sswitch_b
    const/4 v0, 0x1

    goto :goto_a

    .line 1518
    nop

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
    .end sparse-switch
.end method

.method private isSmartStayNeeded(J)Z
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 7056
    iget-wide v0, p0, mNextTimeoutForSmartStay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isSupportCover()Z
    .registers 5

    .prologue
    .line 6905
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cover.flip"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 6906
    .local v0, "sIsFilpCoverSystemFeatureEnabled":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cover.sview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 6907
    .local v1, "sIsSViewCoverSystemFeatureEnabled":Z
    if-nez v0, :cond_1c

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 7077
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7079
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

.method private static isValidAutoBrightnessAdjustment(F)Z
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 3782
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isValidBrightness(I)Z
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 3777
    if-ltz p0, :cond_8

    const/16 v0, 0xff

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 6
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1734
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1735
    sparse-switch p1, :sswitch_data_20

    .line 1748
    :try_start_8
    monitor-exit v2

    move v0, v1

    :goto_a
    return v0

    .line 1742
    :sswitch_b
    monitor-exit v2

    goto :goto_a

    .line 1750
    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 1745
    :sswitch_10
    :try_start_10
    iget-boolean v3, p0, mSystemReady:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    goto :goto_a

    :cond_1e
    move v0, v1

    goto :goto_1c

    .line 1735
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_b
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
        0x20 -> :sswitch_10
        0x40 -> :sswitch_b
        0x80 -> :sswitch_b
    .end sparse-switch
.end method

.method private isWakeUpPreventionNeededForNotificationLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2106
    const/4 v0, 0x0

    .line 2108
    .local v0, "ret":Z
    iget-boolean v1, p0, mWakeUpPreventionForNotificationSetting:Z

    if-eqz v1, :cond_12

    .line 2109
    iget-object v1, p0, mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 2110
    iget-object v1, p0, mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2111
    const/4 v0, 0x1

    .line 2116
    :cond_12
    return v0
.end method

.method private isWakeUpPreventionNeededLocked()Z
    .registers 5

    .prologue
    .line 2120
    const/4 v0, 0x0

    .line 2123
    .local v0, "isWakeUpPreventionNeeded":Z
    invoke-direct {p0}, isProximityPositveLocked()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, mWakeUpEvenThoughProximityPositive:Z

    if-nez v1, :cond_14

    .line 2124
    const-string v1, "PowerManagerService"

    const-string v2, "!@Screen__On : Cancel (proximity)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v0, 0x1

    .line 2174
    :cond_13
    :goto_13
    return v0

    .line 2130
    :cond_14
    iget-boolean v1, p0, mIsCoverClosed:Z

    if-eqz v1, :cond_4d

    .line 2131
    iget-boolean v1, p0, mIsCocktailBarCover:Z

    if-nez v1, :cond_13

    iget v1, p0, mCoverType:I

    if-eqz v1, :cond_2b

    iget v1, p0, mCoverType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2b

    iget v1, p0, mCoverType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_13

    .line 2135
    :cond_2b
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen__On : Cancel (coverType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/4 v0, 0x1

    goto :goto_13

    .line 2149
    :cond_4d
    iget-boolean v1, p0, mIsFolderType:Z

    if-eqz v1, :cond_66

    iget-boolean v1, p0, mIsLidClosed:Z

    if-eqz v1, :cond_66

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    if-eqz v1, :cond_66

    sget-boolean v1, SEC_USE_FACTORY_BINARY:Z

    if-nez v1, :cond_66

    .line 2150
    const-string v1, "PowerManagerService"

    const-string v2, "Screen__On : Cancel (folder)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v0, 0x1

    goto :goto_13

    .line 2156
    :cond_66
    iget-boolean v1, p0, mIsInPocketOrBagAvailable:Z

    if-eqz v1, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_13

    iget v1, p0, mLastWakeUpReason:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_13

    invoke-direct {p0}, isInPocketLocked()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2167
    const-string v1, "PowerManagerService"

    const-string v2, "Screen__On : Cancel (in pocket)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const/4 v0, 0x1

    goto/16 :goto_13
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 5
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 4661
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] lowLevelReboot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/Slog;->saveLastPMSLog(Z)I

    .line 4666
    if-nez p0, :cond_28

    .line 4667
    const-string p0, ""

    .line 4669
    :cond_28
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4674
    const-string/jumbo v1, "ctl.start"

    const-string/jumbo v2, "pre-recovery"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    :goto_3a
    const-wide/16 v2, 0x4e20

    :try_start_3c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_62

    .line 4683
    :goto_3f
    const-string v1, "PowerManagerService"

    const-string v2, "Unexpected return from lowLevelReboot!"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    return-void

    .line 4676
    :cond_47
    const-string/jumbo v1, "sys.powerctl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 4680
    :catch_62
    move-exception v0

    .line 4681
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3f
.end method

.method public static lowLevelShutdown()V
    .registers 3

    .prologue
    .line 4644
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] lowLevelShutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/Slog;->saveLastPMSLog(Z)I

    .line 4649
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4650
    return-void
.end method

.method private napInternal(JI)V
    .registers 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 2309
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2310
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2311
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2313
    :cond_c
    monitor-exit v1

    .line 2314
    return-void

    .line 2313
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    .line 2321
    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_17

    iget v2, p0, mWakefulness:I

    if-ne v2, v0, :cond_17

    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    .line 2335
    :goto_18
    return v0

    .line 2326
    :cond_19
    const-string/jumbo v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2328
    :try_start_1f
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    const/4 v1, 0x1

    iput-boolean v1, p0, mSandmanSummoned:Z

    .line 2331
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, setWakefulnessLocked(II)V
    :try_end_45
    .catchall {:try_start_1f .. :try_end_45} :catchall_49

    .line 2333
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_18

    :catchall_49
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetInteractive(ZI)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 4127
    iget-boolean v1, p0, mDisplayReady:Z

    if-nez v1, :cond_6

    .line 4156
    :cond_5
    :goto_5
    return v0

    .line 4131
    :cond_6
    iget v1, p0, mPendingForceUnblankDisplayState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 4132
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needDisplaySuspendBlockerLocked::mPendingForceUnblankDisplayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPendingForceUnblankDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4136
    :cond_27
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4152
    iget-boolean v1, p0, mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_5

    .line 4156
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 11
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1706
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_20

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1708
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1712
    :cond_20
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 26
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 1716
    move-object/from16 v0, p0

    iget-boolean v1, v0, mSystemReady:Z

    if-eqz v1, :cond_41

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_41

    .line 1717
    move-object/from16 v0, p0

    iget-object v1, v0, mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/power/Notifier;->onWakeLockChanging(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1721
    :cond_41
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 11
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1724
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_20

    .line 1725
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1726
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1730
    :cond_20
    return-void
.end method

.method private powerHintInternal(II)V
    .registers 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4621
    invoke-static {p1, p2}, nativeSendPowerHint(II)V

    .line 4622
    return-void
.end method

.method private printCallerInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 7171
    const-string v1, ""

    .line 7172
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v1

    .line 7174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 7175
    .local v2, "ste":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    if-le v3, v5, :cond_a4

    .line 7176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7184
    :cond_8b
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7185
    return-void

    .line 7179
    :cond_a4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a5
    array-length v3, v2

    if-ge v0, v3, :cond_8b

    .line 7180
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7179
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5
.end method

.method private static printCurrentClassAndMethod()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    .line 7228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 7229
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[flow] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()  in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7230
    return-void
.end method

.method private printWakeLockLocked()V
    .registers 13

    .prologue
    .line 7249
    iget-boolean v5, p0, mSystemReady:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_9b

    .line 7251
    :cond_a
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] On : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, mLastWakeTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7253
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]  mStayOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mStayOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mWakeLockSummary:I

    and-int/lit8 v7, v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mUserActivitySummary: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_22f

    .line 7259
    iget-object v5, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7260
    .local v4, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v4}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 7261
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 7268
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_9b
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] Off : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, timeSinceScreenWasLastOn()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    iget-object v5, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c7
    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    move-object v3, v2

    .line 7271
    check-cast v3, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 7272
    .local v3, "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 7273
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7275
    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14500(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14500(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 7278
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x11

    if-eqz v5, :cond_c7

    .line 7280
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mWakeLockSummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mWakeLockSummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7282
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_164

    .line 7283
    iget-object v5, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_136
    :goto_136
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_164

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7284
    .restart local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_136

    .line 7285
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 7289
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_164
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x2

    if-eqz v5, :cond_c7

    .line 7290
    iget-object v5, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_170
    :goto_170
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7291
    .restart local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v4}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 7292
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_170

    .line 7298
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_19b
    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14500(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14500(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 7299
    iget v5, p0, mUserActivitySummary:I

    if-eqz v5, :cond_1cf

    .line 7300
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mUserActivitySummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7303
    :cond_1cf
    iget-object v5, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_1f1

    .line 7304
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mDisplayPowerRequest.policy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7307
    :cond_1f1
    iget-boolean v5, p0, mDisplayReady:Z

    if-nez v5, :cond_20f

    .line 7308
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mDisplayReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mDisplayReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7311
    :cond_20f
    iget-boolean v5, p0, mBootCompleted:Z

    if-nez v5, :cond_c7

    .line 7312
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mBootCompleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c7

    .line 7318
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    .end local v3    # "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    :cond_22f
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1115
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1124
    .local v0, "resources":Landroid/content/res/Resources;
    iput-boolean v2, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1125
    const/4 v1, 0x0

    iput-boolean v1, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1134
    iput-boolean v2, p0, mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1136
    const v1, 0x112002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1138
    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1140
    const v1, 0x112006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsSupportedConfig:Z

    .line 1142
    const v1, 0x112006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsEnabledByDefaultConfig:Z

    .line 1144
    const v1, 0x1120070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1146
    const v1, 0x112006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1148
    const v1, 0x1120071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsEnabledOnBatteryConfig:Z

    .line 1150
    const v1, 0x10e007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1152
    const v1, 0x10e007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1154
    const v1, 0x10e0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1156
    const v1, 0x1120072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDozeAfterScreenOffConfig:Z

    .line 1158
    const v1, 0x10e0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mMinimumScreenOffTimeoutConfig:I

    .line 1160
    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mMaximumScreenDimDurationConfig:I

    .line 1162
    const v1, 0x1130002

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, mMaximumScreenDimRatioConfig:F

    .line 1164
    const v1, 0x11200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mSupportsDoubleTapWakeConfig:Z

    .line 1166
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 6870
    const-string v3, ""

    .line 6871
    .local v3, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6874
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_2a
    .catchall {:try_start_3 .. :try_end_f} :catchall_39

    .line 6875
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_1b

    .line 6876
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 6877
    if-eqz v3, :cond_1b

    .line 6878
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_4b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_48

    move-result-object v3

    .line 6884
    :cond_1b
    if-eqz v1, :cond_4e

    .line 6886
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_24

    move-object v0, v1

    .line 6893
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_21
    :goto_21
    if-eqz v3, :cond_45

    .line 6896
    .end local v3    # "ret":Ljava/lang/String;
    :goto_23
    return-object v3

    .line 6887
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "ret":Ljava/lang/String;
    :catch_24
    move-exception v2

    .line 6888
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 6889
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_21

    .line 6881
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2a
    move-exception v2

    .line 6882
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    .line 6884
    if-eqz v0, :cond_21

    .line 6886
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_21

    .line 6887
    :catch_34
    move-exception v2

    .line 6888
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 6884
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_39
    move-exception v4

    :goto_3a
    if-eqz v0, :cond_3f

    .line 6886
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 6889
    :cond_3f
    :goto_3f
    throw v4

    .line 6887
    :catch_40
    move-exception v2

    .line 6888
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 6896
    .end local v2    # "e":Ljava/io/IOException;
    :cond_45
    const-string v3, ""

    goto :goto_23

    .line 6884
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_48
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3a

    .line 6881
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4b
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2b

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4e
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_21
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v0, 0x0

    const-wide/32 v4, 0x20000

    .line 2345
    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_16

    iget v1, p0, mWakefulness:I

    if-eqz v1, :cond_16

    iget-boolean v1, p0, mBootCompleted:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_17

    .line 2358
    :cond_16
    :goto_16
    return v0

    .line 2350
    :cond_17
    const-string/jumbo v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2352
    :try_start_1d
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, setWakefulnessLocked(II)V
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_45

    .line 2356
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2358
    const/4 v0, 0x1

    goto :goto_16

    .line 2356
    :catchall_45
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private registerReceiverInSystemReady()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1072
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "registerReceiverInSystemReady"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1075
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1077
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1079
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1080
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1081
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1084
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1085
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1088
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1089
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1093
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1094
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1100
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ResponseAxT9Info"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.NO_USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mNoUserActivityIntent:Landroid/content/Intent;

    .line 1107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mUserActivityIntent:Landroid/content/Intent;

    .line 1108
    const/4 v1, 0x0

    iput-boolean v1, p0, mNoUserActivitySent:Z

    .line 1111
    return-void
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1561
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1562
    :try_start_3
    invoke-direct {p0, p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1563
    .local v0, "index":I
    if-gez v0, :cond_b

    .line 1568
    monitor-exit v3

    .line 1603
    :goto_a
    return-void

    .line 1571
    :cond_b
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1577
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1a

    .line 1578
    const/4 v2, 0x1

    iput-boolean v2, p0, mRequestWaitForNegativeProximity:Z

    .line 1583
    :cond_1a
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_9e

    .line 1600
    :goto_23
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1601
    invoke-direct {p0, v1, v0}, removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1602
    monitor-exit v3

    goto :goto_a

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2

    .line 1585
    .restart local v0    # "index":I
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_31
    const/16 v2, 0xaa9

    const/4 v4, 0x2

    :try_start_34
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_23

    .line 1593
    :sswitch_47
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] release WakeLock flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_34 .. :try_end_9d} :catchall_2e

    goto :goto_23

    .line 1583
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_31
        0x6 -> :sswitch_47
        0xa -> :sswitch_47
        0x1a -> :sswitch_47
        0x20 -> :sswitch_47
        0x40 -> :sswitch_47
        0x80 -> :sswitch_47
    .end sparse-switch
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .prologue
    .line 1625
    iget-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1626
    invoke-direct {p0, p1}, notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1628
    invoke-direct {p0, p1}, applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1631
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iput-object v0, p0, mPrevReleasedWakeLock:Ljava/lang/String;

    .line 1634
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mDirty:I

    .line 1635
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1636
    return-void
.end method

.method private scheduleSandmanLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3050
    iget-boolean v1, p0, mSandmanScheduled:Z

    if-nez v1, :cond_16

    .line 3051
    iput-boolean v3, p0, mSandmanScheduled:Z

    .line 3052
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3053
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3054
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3056
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private setAlpmModeInternal(IIILandroid/os/IBinder;)V
    .registers 14
    .param p1, "mode"    # I
    .param p2, "startLine"    # I
    .param p3, "endLine"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4708
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[api] setAlpmMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", startLine : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", endLine : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4711
    const/4 v2, 0x0

    .line 4712
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "/sys/class/lcd/panel/alpm"

    .line 4713
    .local v4, "sysfs":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 4714
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4718
    :try_start_64
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_6e} :catch_98
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_9d

    .line 4724
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_6e
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 4725
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 4726
    if-eqz p1, :cond_aa

    .line 4727
    const/4 v6, 0x1

    iput-boolean v6, p0, mIsAlpmMode:Z
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7d} :catch_ae

    .line 4741
    :goto_7d
    iget-object v6, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    if-nez v6, :cond_88

    .line 4742
    new-instance v6, Lcom/android/server/power/PowerManagerService$AlpmLock;

    invoke-direct {v6, p0, p4}, Lcom/android/server/power/PowerManagerService$AlpmLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V

    iput-object v6, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 4745
    :cond_88
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4746
    :try_start_8b
    iget v6, p0, mDirty:I

    const/high16 v8, 0x40000

    or-int/2addr v6, v8

    iput v6, p0, mDirty:I

    .line 4747
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4748
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_b1

    move-object v2, v3

    .line 4749
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_97
    return-void

    .line 4719
    :catch_98
    move-exception v0

    .line 4720
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_99
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_97

    .line 4731
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_9d
    move-exception v0

    .line 4732
    .local v0, "e":Ljava/io/IOException;
    :goto_9e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4734
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_97

    .line 4735
    :catch_a5
    move-exception v1

    .line 4736
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97

    .line 4729
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_aa
    const/4 v6, 0x0

    :try_start_ab
    iput-boolean v6, p0, mIsAlpmMode:Z
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ad} :catch_ae

    goto :goto_7d

    .line 4731
    :catch_ae
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_9e

    .line 4748
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_b1
    move-exception v6

    :try_start_b2
    monitor-exit v7
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v6
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 7
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 4469
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4470
    :try_start_4
    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_a

    .line 4471
    monitor-exit v3

    .line 4478
    :goto_9
    return-void

    .line 4473
    :cond_a
    iget-object v0, p0, mAttentionLight:Lcom/android/server/lights/Light;

    .line 4474
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_15

    .line 4477
    const/4 v3, 0x2

    if-eqz p1, :cond_18

    const/4 v1, 0x3

    :goto_11
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_9

    .line 4474
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1

    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_18
    move v1, v2

    .line 4477
    goto :goto_11
.end method

.method private setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4626
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4627
    :try_start_3
    iget-wide v2, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 4628
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setButtonTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    iput-wide p1, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 4631
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4632
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4634
    :cond_2c
    monitor-exit v1

    .line 4635
    return-void

    .line 4634
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setDozeModeBySysfs(I)V
    .registers 11
    .param p1, "mode"    # I

    .prologue
    .line 4783
    iget v6, p0, mAlpmHlpmMode:I

    if-eq v6, p1, :cond_f

    .line 4784
    const/4 v6, -0x1

    if-ne p1, v6, :cond_10

    .line 4785
    const-string v6, "PowerManagerService"

    const-string/jumbo v7, "setDozeModeBySysfs:  value is -1 , we ignore it. "

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    :cond_f
    :goto_f
    return-void

    .line 4788
    :cond_10
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4789
    iput p1, p0, mAlpmHlpmMode:I

    .line 4791
    const/4 v2, 0x0

    .line 4792
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "/sys/class/lcd/panel/alpm"

    .line 4793
    .local v4, "sysfs":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 4797
    .local v5, "value":Ljava/lang/String;
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_5d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_62

    .line 4802
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2b
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 4803
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 4804
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDozeModeBySysfs done:  value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4e} :catch_4f

    goto :goto_f

    .line 4805
    :catch_4f
    move-exception v0

    move-object v2, v3

    .line 4806
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4808
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_f

    .line 4809
    :catch_58
    move-exception v1

    .line 4810
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 4798
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    :catch_5d
    move-exception v0

    .line 4799
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_f

    .line 4805
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_62
    move-exception v0

    goto :goto_51
.end method

.method private setDozeOverrideFromAodLocked(II)V
    .registers 4
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4610
    iget v0, p0, mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_8

    iget v0, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_15

    .line 4612
    :cond_8
    iput p1, p0, mDozeScreenStateOverrideFromDreamManager:I

    .line 4613
    iput p2, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4614
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4615
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4617
    :cond_15
    return-void
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .registers 5
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4597
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4598
    :try_start_3
    iget v0, p0, mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_b

    iget v0, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_18

    .line 4600
    :cond_b
    iput p1, p0, mDozeScreenStateOverrideFromDreamManager:I

    .line 4601
    iput p2, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4602
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4603
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4605
    :cond_18
    monitor-exit v1

    .line 4606
    return-void

    .line 4605
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 4160
    iget-boolean v0, p0, mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_2c

    .line 4164
    iput-boolean p1, p0, mHalAutoSuspendModeEnabled:Z

    .line 4165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4167
    :try_start_26
    invoke-static {p1}, nativeSetAutoSuspend(Z)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 4169
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4172
    :cond_2c
    return-void

    .line 4169
    :catchall_2d
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 4175
    iget-boolean v0, p0, mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_2d

    .line 4179
    iput-boolean p1, p0, mHalInteractiveModeEnabled:Z

    .line 4180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4182
    const/4 v0, 0x2

    :try_start_27
    invoke-static {p1, v0}, nativeSetInteractive(ZI)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 4184
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4187
    :cond_2d
    return-void

    .line 4184
    :catchall_2e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(ZI)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "displayId"    # I

    .prologue
    const-wide/32 v2, 0x20000

    .line 4191
    iget-boolean v0, p0, mHalInteractiveModeEnabled:Z

    if-ne p1, v0, :cond_8

    .line 4207
    :goto_7
    return-void

    .line 4196
    :cond_8
    iput-boolean p1, p0, mHalInteractiveModeEnabled:Z

    .line 4197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4200
    const/4 p2, 0x2

    .line 4202
    :try_start_28
    invoke-static {p1, p2}, nativeSetInteractive(ZI)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 4204
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setInputDeviceEnabledFromNative(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 6709
    iput-boolean p1, p0, mInputDeviceEnabled:Z

    .line 6711
    iget-object v0, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 6712
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .registers 7
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4248
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setLowPowerModeInternal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsPowered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsPowered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4252
    :try_start_29
    iget-boolean v3, p0, mIsPowered:Z

    if-eqz v3, :cond_2f

    .line 4253
    monitor-exit v2

    .line 4274
    :goto_2e
    return v0

    .line 4255
    :cond_2f
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    if-eqz p1, :cond_3b

    move v0, v1

    :cond_3b
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4257
    iput-boolean p1, p0, mLowPowerModeSetting:Z

    .line 4259
    iget-boolean v0, p0, mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, mBatteryLevelLow:Z

    if-eqz v0, :cond_51

    .line 4260
    if-eqz p1, :cond_57

    iget-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_57

    .line 4264
    const/4 v0, 0x0

    iput-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    .line 4273
    :cond_51
    :goto_51
    invoke-virtual {p0}, updateLowPowerModeLocked()V

    .line 4274
    monitor-exit v2

    move v0, v1

    goto :goto_2e

    .line 4265
    :cond_57
    if-nez p1, :cond_51

    iget-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_51

    .line 4269
    const/4 v0, 0x1

    iput-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    goto :goto_51

    .line 4275
    :catchall_61
    move-exception v0

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_29 .. :try_end_63} :catchall_61

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 6
    .param p1, "brightness"    # I

    .prologue
    .line 4536
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4537
    :try_start_3
    iget v0, p0, mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_2a

    .line 4539
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    iput p1, p0, mScreenBrightnessOverrideFromWindowManager:I

    .line 4542
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4543
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4545
    :cond_2a
    monitor-exit v1

    .line 4546
    return-void

    .line 4545
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3280
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3281
    :try_start_3
    iget-wide v2, p0, mScreenDimDurationOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 3282
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    iput-wide p1, p0, mScreenDimDurationOverrideFromWindowManager:J

    .line 3285
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3286
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3288
    :cond_2c
    monitor-exit v1

    .line 3289
    return-void

    .line 3288
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setTemporaryMarkerScreenBrightnessSettingOverrideInternal(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 4573
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4574
    :try_start_3
    iget v0, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_12

    .line 4575
    iput p1, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    .line 4576
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4577
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4579
    :cond_12
    monitor-exit v1

    .line 4580
    return-void

    .line 4579
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .registers 4
    .param p1, "adj"    # F

    .prologue
    .line 4584
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4587
    :try_start_3
    iget v0, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_14

    .line 4588
    iput p1, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 4589
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4590
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4592
    :cond_14
    monitor-exit v1

    .line 4593
    return-void

    .line 4592
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 4562
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4563
    :try_start_3
    iget v0, p0, mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_12

    .line 4564
    iput p1, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 4565
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4566
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4568
    :cond_12
    monitor-exit v1

    .line 4569
    return-void

    .line 4568
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private setUserActivityTimeoutLocked(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    .line 7093
    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_2a

    .line 7094
    iget v2, p0, mUserActivityTimeoutSetting:I

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 7095
    .local v0, "when":J
    iget-boolean v2, p0, mNoUserActivitySent:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 7096
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7097
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7099
    :cond_1c
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7100
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 7103
    .end local v0    # "when":J
    :cond_2a
    return-void
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4549
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4550
    :try_start_3
    iget-wide v2, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 4552
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    iput-wide p1, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4555
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4556
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4558
    :cond_2c
    monitor-exit v1

    .line 4559
    return-void

    .line 4558
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x1

    .line 4438
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    if-ne v3, v2, :cond_3d

    .line 4440
    const/4 v1, 0x0

    .line 4441
    .local v1, "disabled":Z
    iget-boolean v3, p0, mDeviceIdleMode:Z

    if-eqz v3, :cond_36

    .line 4442
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4445
    .local v0, "appid":I
    const/16 v3, 0x2710

    if-lt v0, v3, :cond_36

    iget-object v3, p0, mDeviceIdleWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_36

    iget-object v3, p0, mDeviceIdleTempWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_36

    iget-object v3, p0, mUidState:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_36

    .line 4451
    const/4 v1, 0x1

    .line 4454
    .end local v0    # "appid":I
    :cond_36
    iget-boolean v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v3, v1, :cond_3d

    .line 4455
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 4459
    .end local v1    # "disabled":Z
    :goto_3c
    return v2

    :cond_3d
    const/4 v2, 0x0

    goto :goto_3c
.end method

.method private setWakefulnessLocked(II)V
    .registers 4
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2362
    iget v0, p0, mWakefulness:I

    if-eq v0, p1, :cond_14

    .line 2363
    iput p1, p0, mWakefulness:I

    .line 2364
    const/4 v0, 0x1

    iput-boolean v0, p0, mWakefulnessChanging:Z

    .line 2365
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mDirty:I

    .line 2366
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    .line 2368
    :cond_14
    return-void
.end method

.method private shouldNapAtBedTimeLocked()Z
    .registers 2

    .prologue
    .line 2995
    iget-boolean v0, p0, mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_e

    iget v0, p0, mDockState:I

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shouldUseProximitySensorLocked()Z
    .registers 2

    .prologue
    .line 4052
    iget v0, p0, mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 9
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2560
    iget-boolean v3, p0, mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v3, :cond_7

    .line 2609
    :cond_6
    :goto_6
    return v1

    .line 2564
    :cond_7
    const-string/jumbo v3, "sys.quickboot.enable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 2588
    iget-boolean v3, p0, mIsPowered:Z

    if-eqz v3, :cond_19

    iget v3, p0, mWakefulness:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 2593
    :cond_19
    iget-boolean v3, p0, mTheaterModeEnabled:Z

    if-eqz v3, :cond_21

    iget-boolean v3, p0, mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-eqz v3, :cond_6

    .line 2600
    :cond_21
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 2601
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2d
    move v1, v2

    .line 2609
    goto :goto_6
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .registers 9
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    .line 4294
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_10

    .line 4295
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4298
    :cond_10
    new-instance v1, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    .line 4318
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4319
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4320
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4323
    if-eqz p4, :cond_30

    .line 4324
    monitor-enter v1

    .line 4327
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2d

    goto :goto_27

    .line 4328
    :catch_2b
    move-exception v2

    goto :goto_27

    .line 4331
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    .line 4333
    :cond_30
    return-void
.end method

.method private updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "update"    # Z

    .prologue
    const/4 v0, 0x1

    .line 6691
    if-eqz p1, :cond_1d

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_1d

    .line 6693
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p2, :cond_1d

    .line 6694
    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 6695
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_19

    .line 6697
    invoke-direct {p0, p1}, notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 6704
    :goto_18
    return v0

    .line 6699
    :cond_19
    invoke-direct {p0, p1}, notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_18

    .line 6704
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .registers 16
    .param p1, "dirty"    # I

    .prologue
    .line 3473
    iget-boolean v4, p0, mDisplayReady:Z

    .line 3474
    .local v4, "oldDisplayReady":Z
    const v10, 0xc093f

    and-int/2addr v10, p1

    if-eqz v10, :cond_215

    .line 3489
    invoke-direct {p0}, getDesiredScreenPolicyLocked()I

    move-result v3

    .line 3491
    .local v3, "newScreenPolicy":I
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3493
    .local v5, "prevScreenPolicy":I
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v3, v10, :cond_24

    .line 3494
    if-nez v3, :cond_24

    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v10, :cond_24

    .line 3497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, mLastScreenOffEventElapsedRealTime:J

    .line 3500
    :cond_24
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3530
    const/4 v1, 0x1

    .line 3531
    .local v1, "brightnessSetByUser":Z
    iget v7, p0, mScreenBrightnessSettingDefault:I

    .line 3532
    .local v7, "screenBrightness":I
    const/4 v6, 0x0

    .line 3533
    .local v6, "screenAutoBrightnessAdjustment":F
    iget v10, p0, mScreenBrightnessModeSetting:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_21d

    const/4 v0, 0x1

    .line 3537
    .local v0, "autoBrightness":Z
    :goto_32
    iget-boolean v10, p0, mIsSupportedLightSensor:Z

    if-nez v10, :cond_37

    .line 3538
    const/4 v0, 0x0

    .line 3543
    :cond_37
    const/4 v2, 0x0

    .line 3545
    .local v2, "isBrightnessOverriden":Z
    iget v10, p0, mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v10}, isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_220

    .line 3546
    iget v7, p0, mScreenBrightnessOverrideFromWindowManager:I

    .line 3547
    const/4 v0, 0x0

    .line 3548
    const/4 v1, 0x0

    .line 3550
    const/4 v2, 0x1

    .line 3565
    :cond_45
    :goto_45
    iget-boolean v10, p0, mLastBrightnessOverrideState:Z

    if-eq v2, v10, :cond_73

    .line 3566
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateDisplayPowerStateLocked: Hide QuickPanel Brightness Bar: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pms_notification_panel_brightness_adjustment"

    if-eqz v2, :cond_244

    const/4 v10, 0x0

    :goto_6e
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3569
    iput-boolean v2, p0, mLastBrightnessOverrideState:Z

    .line 3575
    :cond_73
    iget-boolean v10, p0, mBootCompleted:Z

    if-nez v10, :cond_9d

    iget-boolean v10, p0, mCoverIsUpdatedFromCoverManager:Z

    if-nez v10, :cond_9d

    .line 3576
    invoke-direct {p0}, isCoverClosedBySysfs()Z

    move-result v10

    iput-boolean v10, p0, mIsCoverClosed:Z

    .line 3578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3580
    .local v8, "time":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCoverClosedBySysfs called on closed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mIsCoverClosed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 3583
    .end local v8    # "time":J
    :cond_9d
    iget-boolean v10, p0, mIsFolderType:Z

    if-nez v10, :cond_b2

    iget-boolean v10, p0, mIsCoverClosed:Z

    if-eqz v10, :cond_b2

    if-eqz v0, :cond_b2

    .line 3584
    const/4 v0, 0x0

    .line 3585
    iget-object v10, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v10}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightnessBeforeFinal()I

    move-result v7

    .line 3586
    if-gez v7, :cond_b2

    .line 3587
    iget v7, p0, mScreenBrightnessSettingDefault:I

    .line 3591
    :cond_b2
    iget v10, p0, mCoverType:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_c2

    iget-boolean v10, p0, mIsCoverClosed:Z

    if-eqz v10, :cond_c2

    iget-boolean v10, p0, mEmergencyMode:Z

    if-nez v10, :cond_c2

    .line 3592
    const/16 v7, 0xff

    .line 3597
    :cond_c2
    iget-boolean v10, p0, mIsFolderType:Z

    if-eqz v10, :cond_cd

    iget-boolean v10, p0, mIsLidClosed:Z

    if-eqz v10, :cond_cd

    if-eqz v0, :cond_cd

    .line 3598
    const/4 v0, 0x0

    .line 3602
    :cond_cd
    if-eqz v0, :cond_db

    .line 3603
    iget v7, p0, mScreenBrightnessSettingDefault:I

    .line 3604
    iget v10, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v10}, isValidAutoBrightnessAdjustment(F)Z

    move-result v10

    if-eqz v10, :cond_247

    .line 3606
    iget v6, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3613
    :cond_db
    :goto_db
    iget v10, p0, mScreenBrightnessSettingMaximum:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v11, p0, mScreenBrightnessSettingMinimum:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3615
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 3619
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 3621
    iget-object v11, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, mIsCoverClosed:Z

    if-eqz v10, :cond_253

    iget v10, p0, mCoverType:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_253

    const/4 v10, 0x1

    :goto_103
    iput-boolean v10, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 3625
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mFTAMode:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    .line 3629
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-wide v12, p0, mlastUpdateCoverStateTime:J

    iput-wide v12, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    .line 3632
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v6, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3634
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 3635
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 3636
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, shouldUseProximitySensorLocked()Z

    move-result v11

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 3637
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mLowPowerModeEnabled:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3638
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mScreenBrightnessBoostInProgress:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 3640
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mIsAlpmMode:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    .line 3644
    iget-boolean v10, p0, mIsFolderType:Z

    if-eqz v10, :cond_141

    .line 3645
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mIsLidClosed:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    .line 3649
    :cond_141
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_256

    .line 3650
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, mDozeScreenStateOverrideFromDreamManager:I

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3651
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_160

    iget v10, p0, mWakeLockSummary:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_160

    .line 3653
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x3

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3655
    :cond_160
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 3663
    :goto_166
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mWakeUpEvenThoughProximityPositive:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    .line 3665
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mColorWeaknessModeEnabled:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    .line 3666
    iget-object v11, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, mClearViewBrightnessModeEnabled:Z

    if-eqz v10, :cond_262

    iget-boolean v10, p0, mLowPowerModeEnabled:Z

    if-nez v10, :cond_262

    const/4 v10, 0x1

    :goto_17d
    iput-boolean v10, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    .line 3670
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mOutdoorModeSetting:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 3672
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-eqz v10, :cond_1bc

    .line 3673
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1bc

    if-nez v5, :cond_1bc

    .line 3675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, mLastOutdoorModeEnblaedTime:J

    sub-long/2addr v10, v12

    iget v12, p0, mOutdoorModeTimeout:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_1bc

    .line 3676
    const-string v10, "PowerManagerService"

    const-string/jumbo v11, "updateDisplayPowerStateLocked: OutdoorMode timed out"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 3678
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "display_outdoor_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3685
    :cond_1bc
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-static {v11}, isValidBrightness(I)Z

    move-result v11

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    .line 3686
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    .line 3689
    iget-object v10, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v11, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, p0, mRequestWaitForNegativeProximity:Z

    invoke-virtual {v10, v11, v12}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v10

    iput-boolean v10, p0, mDisplayReady:Z

    .line 3691
    const/4 v10, 0x0

    iput-boolean v10, p0, mRequestWaitForNegativeProximity:Z

    .line 3694
    iget-boolean v10, p0, mDisplayReady:Z

    if-eq v10, v4, :cond_1fa

    .line 3695
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mDisplayReady: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, mDisplayReady:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :cond_1fa
    iget-boolean v10, p0, mDisplayReady:Z

    if-eqz v10, :cond_212

    iget v10, p0, mWakefulness:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_212

    .line 3701
    iget v10, p0, mPendingForceUnblankDisplayState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_265

    .line 3702
    iget-object v10, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v11, p0, mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3703
    const/4 v10, -0x1

    iput v10, p0, mPendingForceUnblankDisplayState:I

    .line 3715
    :cond_212
    :goto_212
    const/4 v10, 0x0

    iput-boolean v10, p0, mWakeUpEvenThoughProximityPositive:Z

    .line 3733
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v2    # "isBrightnessOverriden":Z
    .end local v3    # "newScreenPolicy":I
    .end local v5    # "prevScreenPolicy":I
    .end local v6    # "screenAutoBrightnessAdjustment":F
    .end local v7    # "screenBrightness":I
    :cond_215
    iget-boolean v10, p0, mDisplayReady:Z

    if-eqz v10, :cond_281

    if-nez v4, :cond_281

    const/4 v10, 0x1

    :goto_21c
    return v10

    .line 3533
    .restart local v1    # "brightnessSetByUser":Z
    .restart local v3    # "newScreenPolicy":I
    .restart local v5    # "prevScreenPolicy":I
    .restart local v6    # "screenAutoBrightnessAdjustment":F
    .restart local v7    # "screenBrightness":I
    :cond_21d
    const/4 v0, 0x0

    goto/16 :goto_32

    .line 3554
    .restart local v0    # "autoBrightness":Z
    .restart local v2    # "isBrightnessOverriden":Z
    :cond_220
    iget v10, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-static {v10}, isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_22c

    .line 3555
    iget v7, p0, mTemporaryMarkerScreenBrightnessSettingOverride:I

    goto/16 :goto_45

    .line 3558
    :cond_22c
    iget v10, p0, mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v10}, isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_238

    .line 3559
    iget v7, p0, mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_45

    .line 3560
    :cond_238
    iget v10, p0, mScreenBrightnessSetting:I

    invoke-static {v10}, isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 3561
    iget v7, p0, mScreenBrightnessSetting:I

    goto/16 :goto_45

    .line 3567
    :cond_244
    const/4 v10, 0x1

    goto/16 :goto_6e

    .line 3608
    :cond_247
    iget v10, p0, mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v10}, isValidAutoBrightnessAdjustment(F)Z

    move-result v10

    if-eqz v10, :cond_db

    .line 3610
    iget v6, p0, mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_db

    .line 3621
    :cond_253
    const/4 v10, 0x0

    goto/16 :goto_103

    .line 3658
    :cond_256
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x0

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3659
    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, -0x1

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_166

    .line 3666
    :cond_262
    const/4 v10, 0x0

    goto/16 :goto_17d

    .line 3704
    :cond_265
    iget v10, p0, mPendingForceUnblankDisplayState:I

    if-nez v10, :cond_212

    .line 3705
    iget v10, p0, mWakefulness:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_279

    .line 3706
    iget-object v10, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v11, p0, mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3710
    :goto_275
    const/4 v10, -0x1

    iput v10, p0, mPendingForceUnblankDisplayState:I

    goto :goto_212

    .line 3708
    :cond_279
    const-string v10, "PowerManagerService"

    const-string v11, "Pending mForceblankDisplayRunnable cleared due to WAKEFULNESS_AWAKE"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_275

    .line 3733
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v2    # "isBrightnessOverriden":Z
    .end local v3    # "newScreenPolicy":I
    .end local v5    # "prevScreenPolicy":I
    .end local v6    # "screenAutoBrightnessAdjustment":F
    .end local v7    # "screenBrightness":I
    :cond_281
    const/4 v10, 0x0

    goto :goto_21c
.end method

.method private updateDreamLocked(IZ)V
    .registers 4
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .prologue
    .line 3034
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_6

    if-eqz p2, :cond_d

    .line 3043
    :cond_6
    iget-boolean v0, p0, mDisplayReady:Z

    if-eqz v0, :cond_d

    .line 3044
    invoke-direct {p0}, scheduleSandmanLocked()V

    .line 3047
    :cond_d
    return-void
.end method

.method private updateInputDeviceLightStateLocked(I)V
    .registers 14
    .param p1, "dirty"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3307
    const v2, 0x1d123

    and-int/2addr v2, p1

    if-eqz v2, :cond_8e

    .line 3310
    const/4 v0, 0x1

    .line 3312
    .local v0, "needUpdate":Z
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-eqz v2, :cond_8f

    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-eqz v2, :cond_8f

    .line 3319
    :cond_17
    and-int/lit8 v2, p1, 0x20

    if-nez v2, :cond_1f

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_42

    .line 3322
    :cond_1f
    iget-wide v6, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const-wide/16 v8, 0x5dc

    cmp-long v2, v6, v8

    if-ltz v2, :cond_97

    iget v2, p0, mTouchKeyOffTimeoutSetting:I

    if-eqz v2, :cond_97

    iget-wide v6, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    long-to-int v1, v6

    .line 3325
    .local v1, "timeout":I
    :goto_2e
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eq v2, v1, :cond_9a

    .line 3326
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 3327
    invoke-direct {p0, v11}, isInputDeviceLightAvailable(I)Z

    move-result v2

    if-nez v2, :cond_42

    .line 3328
    const/4 v0, 0x0

    .line 3351
    .end local v1    # "timeout":I
    :cond_42
    :goto_42
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_62

    .line 3352
    iget v2, p0, mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_e9

    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 3354
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3355
    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_62

    .line 3356
    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3376
    :cond_62
    :goto_62
    if-eqz v0, :cond_8e

    .line 3377
    invoke-direct {p0, v11}, isInputDeviceLightAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_10a

    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eqz v2, :cond_10a

    .line 3379
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3391
    :goto_77
    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_8e

    .line 3392
    invoke-direct {p0, v10}, isInputDeviceLightAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eqz v2, :cond_111

    .line 3394
    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3401
    .end local v0    # "needUpdate":Z
    :cond_8e
    :goto_8e
    return-void

    .line 3314
    .restart local v0    # "needUpdate":Z
    :cond_8f
    const-string v2, "PowerManagerService"

    const-string v3, "[input device light] updateInputDeviceLightStateLocked: Not ready"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 3322
    :cond_97
    iget v1, p0, mTouchKeyOffTimeoutSetting:I

    goto :goto_2e

    .line 3330
    .restart local v1    # "timeout":I
    :cond_9a
    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_b7

    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    iget v5, p0, mKeyboardOffTimeoutSetting:I

    if-eq v2, v5, :cond_b7

    .line 3331
    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget v5, p0, mKeyboardOffTimeoutSetting:I

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 3332
    invoke-direct {p0, v10}, isInputDeviceLightAvailable(I)Z

    move-result v2

    if-nez v2, :cond_42

    .line 3333
    const/4 v0, 0x0

    goto :goto_42

    .line 3341
    :cond_b7
    iget-boolean v2, p0, mTouchKeyForceDisable:Z

    if-nez v2, :cond_c7

    iget-boolean v2, p0, mLowPowerModeEnabled:Z

    if-nez v2, :cond_c7

    iget-boolean v2, p0, mEmergencyMode:Z

    if-nez v2, :cond_c7

    iget-boolean v2, p0, mIsCoverClosed:Z

    if-eqz v2, :cond_e0

    :cond_c7
    move v2, v4

    :goto_c8
    iget-boolean v5, p0, mPrevTouchKeyForceDisable:Z

    if-eq v2, v5, :cond_e6

    .line 3343
    iget-boolean v2, p0, mPrevTouchKeyForceDisable:Z

    if-nez v2, :cond_e2

    move v2, v4

    :goto_d1
    iput-boolean v2, p0, mPrevTouchKeyForceDisable:Z

    .line 3344
    iget-boolean v2, p0, mLowPowerModeEnabled:Z

    if-nez v2, :cond_db

    iget-boolean v2, p0, mEmergencyMode:Z

    if-eqz v2, :cond_e4

    :cond_db
    move v2, v4

    :goto_dc
    iput-boolean v2, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    goto/16 :goto_42

    :cond_e0
    move v2, v3

    .line 3341
    goto :goto_c8

    :cond_e2
    move v2, v3

    .line 3343
    goto :goto_d1

    :cond_e4
    move v2, v3

    .line 3344
    goto :goto_dc

    .line 3346
    :cond_e6
    const/4 v0, 0x0

    goto/16 :goto_42

    .line 3361
    .end local v1    # "timeout":I
    :cond_e9
    iget v2, p0, mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_107

    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 3363
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3364
    iget-boolean v2, p0, mIsFolderType:Z

    if-eqz v2, :cond_62

    .line 3365
    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    goto/16 :goto_62

    .line 3371
    :cond_107
    const/4 v0, 0x0

    goto/16 :goto_62

    .line 3381
    :cond_10a
    iget-object v2, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_77

    .line 3396
    :cond_111
    iget-object v2, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_8e
.end method

.method private updateIsPoweredLocked(I)V
    .registers 15
    .param p1, "dirty"    # I

    .prologue
    .line 2447
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_e8

    .line 2448
    iget-boolean v12, p0, mIsPowered:Z

    .line 2449
    .local v12, "wasPowered":Z
    iget v10, p0, mPlugType:I

    .line 2450
    .local v10, "oldPlugType":I
    iget-boolean v9, p0, mBatteryLevelLow:Z

    .line 2451
    .local v9, "oldLevelLow":Z
    iget v8, p0, mBatteryLevel:I

    .line 2452
    .local v8, "oldBatteryLevel":I
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, mIsPowered:Z

    .line 2453
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, mPlugType:I

    .line 2454
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, mBatteryLevel:I

    .line 2455
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, mBatteryLevelLow:Z

    .line 2465
    iget-boolean v1, p0, mIsPowered:Z

    invoke-direct {p0, v1}, enableQbCharger(Z)V

    .line 2466
    iget-boolean v1, p0, mIsPowered:Z

    if-ne v12, v1, :cond_3a

    iget v1, p0, mPlugType:I

    if-eq v10, v1, :cond_dd

    .line 2468
    :cond_3a
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, mDirty:I

    .line 2473
    iget-object v1, p0, mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, mIsPowered:Z

    iget v5, p0, mPlugType:I

    iget v6, p0, mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    .line 2476
    .local v0, "dockedOnWirelessCharger":Z
    const/4 v11, 0x1

    .line 2477
    .local v11, "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    iget-boolean v1, p0, mIsWirelessChargerSContextEnabled:Z

    if-eqz v1, :cond_9e

    iget-object v1, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2479
    iget v1, p0, mPlugType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_f9

    .line 2480
    iget-boolean v1, p0, mIsWirelessChargerSContextRegistered:Z

    if-nez v1, :cond_e9

    .line 2481
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Register SContextListener"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v1, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 2483
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsWirelessChargerSContextRegistered:Z

    .line 2510
    :cond_9e
    :goto_9e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2511
    .local v2, "now":J
    invoke-direct {p0, v12, v10, v0}, shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_d5

    if-eqz v11, :cond_d5

    .line 2514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " powered change"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOnReason:Ljava/lang/String;

    .line 2518
    const/16 v1, 0xb

    iput v1, p0, mLastWakeUpReason:I

    .line 2521
    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2524
    :cond_d5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 2549
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    .end local v11    # "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    :cond_dd
    iget-boolean v1, p0, mIsPowered:Z

    if-ne v12, v1, :cond_e5

    iget v1, p0, mBatteryLevel:I

    if-eq v8, v1, :cond_e8

    .line 2551
    :cond_e5
    invoke-virtual {p0}, updateLowPowerModeLocked()V

    .line 2555
    .end local v8    # "oldBatteryLevel":I
    .end local v9    # "oldLevelLow":Z
    .end local v10    # "oldPlugType":I
    .end local v12    # "wasPowered":Z
    :cond_e8
    return-void

    .line 2484
    .restart local v0    # "dockedOnWirelessCharger":Z
    .restart local v8    # "oldBatteryLevel":I
    .restart local v9    # "oldLevelLow":Z
    .restart local v10    # "oldPlugType":I
    .restart local v11    # "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    .restart local v12    # "wasPowered":Z
    :cond_e9
    iget-boolean v1, p0, mIsDeviceMoving:Z

    if-nez v1, :cond_9e

    if-nez v12, :cond_9e

    .line 2485
    const/4 v11, 0x0

    .line 2486
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when connect wireless chager "

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 2488
    :cond_f9
    const/4 v1, 0x4

    if-ne v10, v1, :cond_9e

    .line 2489
    iget-boolean v1, p0, mIsDeviceMoving:Z

    if-eqz v1, :cond_119

    .line 2490
    iget-boolean v1, p0, mIsWirelessChargerSContextRegistered:Z

    if-eqz v1, :cond_9e

    .line 2491
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Unregister SContextListener"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v1, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 2493
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsWirelessChargerSContextRegistered:Z

    goto :goto_9e

    .line 2496
    :cond_119
    iget-boolean v1, p0, mIsPowered:Z

    if-nez v1, :cond_9e

    .line 2497
    const/4 v11, 0x0

    .line 2498
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when disconnect wireless charger"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e
.end method

.method private updatePowerStateLocked()V
    .registers 11

    .prologue
    const-wide/32 v8, 0x20000

    .line 2390
    iget-boolean v3, p0, mSystemReady:Z

    if-eqz v3, :cond_b

    iget v3, p0, mDirty:I

    if-nez v3, :cond_c

    .line 2440
    :cond_b
    :goto_b
    return-void

    .line 2393
    :cond_c
    iget-object v3, p0, mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2394
    const-string v3, "PowerManagerService"

    const-string v6, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_1b
    const-string/jumbo v3, "updatePowerState"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2400
    :try_start_21
    iget v3, p0, mDirty:I

    invoke-direct {p0, v3}, updateIsPoweredLocked(I)V

    .line 2401
    iget v3, p0, mDirty:I

    invoke-direct {p0, v3}, updateStayOnLocked(I)V

    .line 2402
    iget v3, p0, mDirty:I

    invoke-direct {p0, v3}, updateScreenBrightnessBoostLocked(I)V

    .line 2407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2408
    .local v4, "now":J
    const/4 v1, 0x0

    .line 2410
    .local v1, "dirtyPhase2":I
    :cond_35
    iget v0, p0, mDirty:I

    .line 2411
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 2412
    const/4 v3, 0x0

    iput v3, p0, mDirty:I

    .line 2414
    invoke-direct {p0, v0}, updateWakeLockSummaryLocked(I)V

    .line 2415
    invoke-direct {p0, v4, v5, v0}, updateUserActivitySummaryLocked(JI)V

    .line 2416
    invoke-direct {p0, v0}, updateWakefulnessLocked(I)Z

    move-result v3

    if-nez v3, :cond_35

    .line 2422
    invoke-direct {p0, v1}, updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 2424
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1}, updateInputDeviceLightStateLocked(I)V

    .line 2428
    invoke-direct {p0, v1, v2}, updateDreamLocked(IZ)V

    .line 2431
    invoke-direct {p0}, finishWakefulnessChangeIfNeededLocked()V

    .line 2436
    invoke-direct {p0}, updateSuspendBlockerLocked()V
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_5b

    .line 2438
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b

    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_5b
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .registers 14
    .param p1, "dirty"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 3737
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_34

    .line 3738
    iget-boolean v1, p0, mScreenBrightnessBoostInProgress:Z

    if-eqz v1, :cond_34

    .line 3739
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3740
    .local v2, "now":J
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3741
    iget-wide v6, p0, mLastScreenBrightnessBoostTime:J

    iget-wide v10, p0, mLastSleepTime:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_35

    .line 3742
    iget-wide v6, p0, mLastScreenBrightnessBoostTime:J

    const-wide/16 v10, 0x1388

    add-long v8, v6, v10

    .line 3744
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    if-lez v1, :cond_35

    .line 3745
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3746
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3747
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3757
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "now":J
    .end local v8    # "boostTimeout":J
    :cond_34
    :goto_34
    return-void

    .line 3751
    .restart local v2    # "now":J
    :cond_35
    iput-boolean v4, p0, mScreenBrightnessBoostInProgress:Z

    .line 3752
    iget-object v1, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 3753
    const/16 v6, 0x3e8

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    goto :goto_34
.end method

.method private updateSettingsLocked()V
    .registers 21

    .prologue
    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1171
    .local v16, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "screensaver_enabled"

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDreamsEnabledByDefaultConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4d1

    const/16 v17, 0x1

    :goto_17
    const/16 v19, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4d5

    const/16 v17, 0x1

    :goto_29
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDreamsEnabledSetting:Z

    .line 1175
    const-string/jumbo v18, "screensaver_activate_on_sleep"

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDreamsActivatedOnSleepByDefaultConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4d9

    const/16 v17, 0x1

    :goto_3c
    const/16 v19, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4dd

    const/16 v17, 0x1

    :goto_4e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDreamsActivateOnSleepSetting:Z

    .line 1179
    const-string/jumbo v18, "screensaver_activate_on_dock"

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDreamsActivatedOnDockByDefaultConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4e1

    const/16 v17, 0x1

    :goto_61
    const/16 v19, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4e5

    const/16 v17, 0x1

    :goto_73
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDreamsActivateOnDockSetting:Z

    .line 1183
    const-string/jumbo v17, "screen_off_timeout"

    const/16 v18, 0x3a98

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenOffTimeoutSetting:I

    .line 1186
    const-string/jumbo v17, "sleep_timeout"

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mSleepTimeoutSetting:I

    .line 1189
    const-string/jumbo v17, "stay_on_while_plugged_in"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mStayOnWhilePluggedInSetting:I

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "theater_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4e9

    const/16 v17, 0x1

    :goto_c7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mTheaterModeEnabled:Z

    .line 1194
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSupportsDoubleTapWakeConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_104

    .line 1195
    const-string/jumbo v17, "double_tap_to_wake"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_4ed

    const/4 v6, 0x1

    .line 1198
    .local v6, "doubleTapWakeEnabled":Z
    :goto_e3
    move-object/from16 v0, p0

    iget-boolean v0, v0, mDoubleTapWakeEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_104

    .line 1199
    move-object/from16 v0, p0

    iput-boolean v6, v0, mDoubleTapWakeEnabled:Z

    .line 1200
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDoubleTapWakeEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4f0

    const/16 v17, 0x1

    :goto_fd
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, nativeSetFeature(II)V

    .line 1204
    .end local v6    # "doubleTapWakeEnabled":Z
    :cond_104
    const/4 v8, 0x0

    .line 1205
    .local v8, "isBrightnessSettingChanged":Z
    move-object/from16 v0, p0

    iget v13, v0, mScreenBrightnessSetting:I

    .line 1206
    .local v13, "oldScreenBrightnessSetting":I
    const-string/jumbo v17, "screen_brightness"

    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSettingDefault:I

    move/from16 v18, v0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenBrightnessSetting:I

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_17f

    .line 1210
    const/4 v8, 0x1

    .line 1211
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTemporaryScreenBrightnessSettingOverride:I

    .line 1213
    sget-boolean v17, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    if-nez v17, :cond_17f

    .line 1214
    const/high16 v17, 0x7fc00000    # NaNf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1215
    move-object/from16 v0, p0

    iget v5, v0, mScreenBrightnessSettingDefault:I

    .line 1216
    .local v5, "center":I
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSettingDefault:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSettingMinimum:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 1217
    .local v11, "lowRange":I
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSettingMaximum:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSettingDefault:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 1218
    .local v7, "highRange":I
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v5, :cond_4f4

    .line 1219
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSetting:I

    move/from16 v17, v0

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenAutoBrightnessAdjustmentSetting:F

    .line 1230
    .end local v5    # "center":I
    .end local v7    # "highRange":I
    .end local v11    # "lowRange":I
    :cond_17f
    :goto_17f
    sget-boolean v17, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    if-eqz v17, :cond_1cf

    .line 1231
    move-object/from16 v0, p0

    iget v14, v0, mDynamicAutoBrightnessRatioValueSetting:I

    .line 1232
    .local v14, "prevDynamicAutoBrightnessRatioValueSetting":I
    const-string v17, "auto_brightness_detail"

    const/16 v18, 0x64

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mDynamicAutoBrightnessRatioValueSetting:I

    .line 1234
    move-object/from16 v0, p0

    iget v0, v0, mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v14, v0, :cond_1cf

    .line 1235
    const/4 v8, 0x1

    .line 1236
    const/high16 v17, 0x7fc00000    # NaNf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1237
    move-object/from16 v0, p0

    iget v0, v0, mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v17, v0

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_522

    .line 1238
    move-object/from16 v0, p0

    iget v0, v0, mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenAutoBrightnessAdjustmentSetting:F

    .line 1246
    .end local v14    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_1cf
    :goto_1cf
    move-object/from16 v0, p0

    iget v12, v0, mScreenBrightnessModeSetting:I

    .line 1247
    .local v12, "oldScreenBrightnessModeSetting":I
    const-string/jumbo v17, "screen_brightness_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenBrightnessModeSetting:I

    .line 1250
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessModeSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v12, v0, :cond_1ef

    .line 1251
    const/4 v8, 0x1

    .line 1255
    :cond_1ef
    const-string v17, "button_key_light"

    const/16 v18, 0x5dc

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mTouchKeyOffTimeoutSetting:I

    .line 1257
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFolderType:Z

    move/from16 v17, v0

    if-eqz v17, :cond_229

    .line 1258
    const-string/jumbo v17, "key_backlight_timeout"

    const/16 v18, 0xbb8

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mKeyboardOffTimeoutSetting:I

    .line 1260
    const-string/jumbo v17, "key_night_mode"

    const/16 v18, 0x1

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mKeyLedOffNightModeSetting:I

    .line 1266
    :cond_229
    const-string/jumbo v17, "emergency_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_52c

    const/16 v17, 0x1

    :goto_23e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEmergencyMode:Z

    .line 1271
    const-string/jumbo v17, "intelligent_sleep_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_530

    const/16 v17, 0x1

    :goto_253
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSmartStayEnabledSetting:Z

    .line 1277
    move-object/from16 v0, p0

    iget-boolean v0, v0, USE_DEVICE_LOCK_TIME:Z

    move/from16 v17, v0

    if-eqz v17, :cond_283

    .line 1278
    const-string/jumbo v17, "is_secured_lock"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mSecuredLockEnableSetting:I

    .line 1280
    const-string/jumbo v17, "lock_screen_lock_after_timeout"

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mSecuredLockTimeoutSetting:I

    .line 1286
    :cond_283
    move-object/from16 v0, p0

    iget-boolean v15, v0, mOutdoorModeSetting:Z

    .line 1287
    .local v15, "prevOutdoorModeSetting":Z
    const-string/jumbo v17, "display_outdoor_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_534

    const/16 v17, 0x1

    :goto_29c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOutdoorModeSetting:Z

    .line 1290
    move-object/from16 v0, p0

    iget-boolean v0, v0, mOutdoorModeSetting:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_2c6

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOutdoorModeSetting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2c6

    .line 1291
    const/4 v8, 0x1

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastOutdoorModeEnblaedTime:J

    .line 1293
    const-string v17, "PowerManagerService"

    const-string v18, "[api] updateSettingsLocked : Update OutdoorMode enabled time"

    invoke-static/range {v17 .. v18}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_2c6
    move-object/from16 v0, p0

    iget v0, v0, mBatteryLevel:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2e6

    if-eqz v8, :cond_2e6

    move-object/from16 v0, p0

    iget-boolean v0, v0, mBootCompleted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2e6

    .line 1300
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsSettingChangedAfterLowBattery:Z

    .line 1305
    :cond_2e6
    const-string/jumbo v17, "user_activity_timeout"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mUserActivityTimeoutSetting:I

    .line 1311
    const-string/jumbo v17, "low_power"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_538

    const/4 v10, 0x1

    .line 1319
    .local v10, "lowPowerModeEnabled":Z
    :goto_303
    const-string/jumbo v17, "low_power_trigger_level"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1321
    .local v9, "lowBatteryTriggerLevel":I
    if-eqz v9, :cond_53b

    const/4 v4, 0x1

    .line 1323
    .local v4, "autoLowPowerModeConfigured":Z
    :goto_30f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLowPowerModeSetting:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v10, v0, :cond_335

    move-object/from16 v0, p0

    iget v0, v0, mLowBatteryTriggerLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v9, v0, :cond_335

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAutoLowPowerModeConfigured:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_335

    move-object/from16 v0, p0

    iget-boolean v0, v0, mUserSwitched:Z

    move/from16 v17, v0

    if-eqz v17, :cond_344

    .line 1327
    :cond_335
    move-object/from16 v0, p0

    iput-boolean v10, v0, mLowPowerModeSetting:Z

    .line 1328
    move-object/from16 v0, p0

    iput-boolean v4, v0, mAutoLowPowerModeConfigured:Z

    .line 1329
    move-object/from16 v0, p0

    iput v9, v0, mLowBatteryTriggerLevel:I

    .line 1330
    invoke-virtual/range {p0 .. p0}, updateLowPowerModeLocked()V

    .line 1334
    :cond_344
    const-string/jumbo v17, "wakeup_prevention"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_53e

    const/16 v17, 0x1

    :goto_353
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWakeUpPreventionForNotificationSetting:Z

    .line 1337
    const-string/jumbo v17, "wakeup_prevention_packages"

    const/16 v18, -0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    .line 1342
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[api] [PSM] updateSettingsLocked : lowPowerModeEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lowBatteryTriggerLevel: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mEmergencyMode "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mEmergencyMode:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v18, "PowerManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[api] [BRIGHTNESS] updateSettingsLocked : mScreenBrightnessModeSetting: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessModeSetting:I

    move/from16 v17, v0

    if-nez v17, :cond_542

    const-string v17, "MANUAL"

    :goto_3b9
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mScreenBrightnessSetting: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSetting:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mScreenAutoBrightnessAdjustmentSetting: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, mScreenAutoBrightnessAdjustmentSetting:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mOutdoorModeSetting : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOutdoorModeSetting:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDreamsEnabledSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mDreamsActivateOnSleepSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDreamsActivateOnSleepSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mDreamsActivateOnDockSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDreamsActivateOnDockSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mScreenOffTimeoutSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, mScreenOffTimeoutSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mStayOnWhilePluggedInSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, mStayOnWhilePluggedInSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mSmartStayEnabledSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSmartStayEnabledSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mWakeUpPreventionForNotificationSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mWakeUpPreventionForNotificationSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mWakeUpPreventionPackagesForNotificationSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mTouchKeyOffTimeoutSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, mTouchKeyOffTimeoutSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mKeyboardOffTimeoutSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, mKeyboardOffTimeoutSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    move-object/from16 v0, p0

    iget v0, v0, mDirty:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mDirty:I

    .line 1366
    return-void

    .line 1171
    .end local v4    # "autoLowPowerModeConfigured":Z
    .end local v8    # "isBrightnessSettingChanged":Z
    .end local v9    # "lowBatteryTriggerLevel":I
    .end local v10    # "lowPowerModeEnabled":Z
    .end local v12    # "oldScreenBrightnessModeSetting":I
    .end local v13    # "oldScreenBrightnessSetting":I
    .end local v15    # "prevOutdoorModeSetting":Z
    :cond_4d1
    const/16 v17, 0x0

    goto/16 :goto_17

    :cond_4d5
    const/16 v17, 0x0

    goto/16 :goto_29

    .line 1175
    :cond_4d9
    const/16 v17, 0x0

    goto/16 :goto_3c

    :cond_4dd
    const/16 v17, 0x0

    goto/16 :goto_4e

    .line 1179
    :cond_4e1
    const/16 v17, 0x0

    goto/16 :goto_61

    :cond_4e5
    const/16 v17, 0x0

    goto/16 :goto_73

    .line 1191
    :cond_4e9
    const/16 v17, 0x0

    goto/16 :goto_c7

    .line 1195
    :cond_4ed
    const/4 v6, 0x0

    goto/16 :goto_e3

    .line 1200
    .restart local v6    # "doubleTapWakeEnabled":Z
    :cond_4f0
    const/16 v17, 0x0

    goto/16 :goto_fd

    .line 1220
    .end local v6    # "doubleTapWakeEnabled":Z
    .restart local v5    # "center":I
    .restart local v7    # "highRange":I
    .restart local v8    # "isBrightnessSettingChanged":Z
    .restart local v11    # "lowRange":I
    .restart local v13    # "oldScreenBrightnessSetting":I
    :cond_4f4
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_518

    .line 1221
    move-object/from16 v0, p0

    iget v0, v0, mScreenBrightnessSetting:I

    move/from16 v17, v0

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_17f

    .line 1223
    :cond_518
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_17f

    .line 1240
    .end local v5    # "center":I
    .end local v7    # "highRange":I
    .end local v11    # "lowRange":I
    .restart local v14    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_522
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_1cf

    .line 1266
    .end local v14    # "prevDynamicAutoBrightnessRatioValueSetting":I
    .restart local v12    # "oldScreenBrightnessModeSetting":I
    :cond_52c
    const/16 v17, 0x0

    goto/16 :goto_23e

    .line 1271
    :cond_530
    const/16 v17, 0x0

    goto/16 :goto_253

    .line 1287
    .restart local v15    # "prevOutdoorModeSetting":Z
    :cond_534
    const/16 v17, 0x0

    goto/16 :goto_29c

    .line 1311
    :cond_538
    const/4 v10, 0x0

    goto/16 :goto_303

    .line 1321
    .restart local v9    # "lowBatteryTriggerLevel":I
    .restart local v10    # "lowPowerModeEnabled":Z
    :cond_53b
    const/4 v4, 0x0

    goto/16 :goto_30f

    .line 1334
    .restart local v4    # "autoLowPowerModeConfigured":Z
    :cond_53e
    const/16 v17, 0x0

    goto/16 :goto_353

    .line 1347
    :cond_542
    const-string v17, "AUTO"

    goto/16 :goto_3b9
.end method

.method private updateStayOnLocked(I)V
    .registers 5
    .param p1, "dirty"    # I

    .prologue
    .line 2617
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_24

    .line 2618
    iget-boolean v0, p0, mStayOn:Z

    .line 2619
    .local v0, "wasStayOn":Z
    iget v1, p0, mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_25

    invoke-direct {p0}, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2621
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, mStayOn:Z

    .line 2626
    :goto_1a
    iget-boolean v1, p0, mStayOn:Z

    if-eq v1, v0, :cond_24

    .line 2627
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, mDirty:I

    .line 2630
    .end local v0    # "wasStayOn":Z
    :cond_24
    return-void

    .line 2623
    .restart local v0    # "wasStayOn":Z
    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, p0, mStayOn:Z

    goto :goto_1a
.end method

.method private updateSuspendBlockerLocked()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4061
    iget v6, p0, mWakeLockSummary:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6c

    move v3, v4

    .line 4062
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_9
    invoke-direct {p0}, needDisplaySuspendBlockerLocked()Z

    move-result v2

    .line 4063
    .local v2, "needDisplaySuspendBlocker":Z
    if-nez v2, :cond_6e

    move v0, v4

    .line 4064
    .local v0, "autoSuspend":Z
    :goto_10
    iget-object v6, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    .line 4069
    .local v1, "interactive":Z
    if-nez v0, :cond_1f

    iget-boolean v6, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_1f

    .line 4070
    invoke-direct {p0, v5}, setHalAutoSuspendModeLocked(Z)V

    .line 4074
    :cond_1f
    if-eqz v3, :cond_2c

    iget-boolean v6, p0, mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_2c

    .line 4075
    iget-object v6, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4076
    iput-boolean v4, p0, mHoldingWakeLockSuspendBlocker:Z

    .line 4078
    :cond_2c
    if-eqz v2, :cond_39

    iget-boolean v6, p0, mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_39

    .line 4079
    iget-object v6, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4080
    iput-boolean v4, p0, mHoldingDisplaySuspendBlocker:Z

    .line 4089
    :cond_39
    iget-boolean v6, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_48

    .line 4099
    if-eqz v1, :cond_43

    iget-boolean v6, p0, mDisplayReady:Z

    if-nez v6, :cond_45

    :cond_43
    if-nez v1, :cond_48

    .line 4102
    :cond_45
    invoke-direct {p0, v1}, setHalInteractiveModeLocked(Z)V

    .line 4107
    :cond_48
    if-nez v3, :cond_55

    iget-boolean v6, p0, mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_55

    .line 4108
    iget-object v6, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4109
    iput-boolean v5, p0, mHoldingWakeLockSuspendBlocker:Z

    .line 4111
    :cond_55
    if-nez v2, :cond_62

    iget-boolean v6, p0, mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_62

    .line 4112
    iget-object v6, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4113
    iput-boolean v5, p0, mHoldingDisplaySuspendBlocker:Z

    .line 4117
    :cond_62
    if-eqz v0, :cond_6b

    iget-boolean v5, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_6b

    .line 4118
    invoke-direct {p0, v4}, setHalAutoSuspendModeLocked(Z)V

    .line 4120
    :cond_6b
    return-void

    .end local v0    # "autoSuspend":Z
    .end local v1    # "interactive":Z
    .end local v2    # "needDisplaySuspendBlocker":Z
    .end local v3    # "needWakeLockSuspendBlocker":Z
    :cond_6c
    move v3, v5

    .line 4061
    goto :goto_9

    .restart local v2    # "needDisplaySuspendBlocker":Z
    .restart local v3    # "needWakeLockSuspendBlocker":Z
    :cond_6e
    move v0, v5

    .line 4063
    goto :goto_10
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 19
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 2720
    and-int/lit8 v1, p3, 0x27

    if-eqz v1, :cond_1a6

    .line 2722
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2726
    iget-boolean v1, p0, mPendingMessageSmartStay:Z

    if-eqz v1, :cond_17

    .line 2727
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2728
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingMessageSmartStay:Z

    .line 2731
    :cond_17
    iget-boolean v1, p0, mPendingMessagePreSmartStay:Z

    if-eqz v1, :cond_24

    .line 2732
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2733
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingMessagePreSmartStay:Z

    .line 2738
    :cond_24
    const-wide/16 v10, 0x0

    .line 2739
    .local v10, "nextTimeout":J
    iget v1, p0, mWakefulness:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    iget v1, p0, mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_35

    iget v1, p0, mWakefulness:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d0

    .line 2742
    :cond_35
    invoke-direct {p0}, getSleepTimeoutLocked()I

    move-result v14

    .line 2743
    .local v14, "sleepTimeout":I
    invoke-direct {p0, v14}, getScreenOffTimeoutLocked(I)I

    move-result v13

    .line 2744
    .local v13, "screenOffTimeout":I
    invoke-direct {p0, v13}, getScreenDimDurationLocked(I)I

    move-result v12

    .line 2746
    .local v12, "screenDimDuration":I
    const/4 v1, 0x0

    iput v1, p0, mUserActivitySummary:I

    .line 2747
    iget-wide v2, p0, mLastUserActivityTime:J

    iget-wide v4, p0, mLastWakeTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5a

    .line 2748
    iget-wide v2, p0, mLastUserActivityTime:J

    int-to-long v4, v13

    add-long/2addr v2, v4

    int-to-long v4, v12

    sub-long v10, v2, v4

    .line 2750
    cmp-long v1, p1, v10

    if-gez v1, :cond_1a7

    .line 2751
    const/4 v1, 0x1

    iput v1, p0, mUserActivitySummary:I

    .line 2759
    :cond_5a
    :goto_5a
    iget v1, p0, mUserActivitySummary:I

    if-nez v1, :cond_79

    iget-wide v2, p0, mLastUserActivityTimeNoChangeLights:J

    iget-wide v4, p0, mLastWakeTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_79

    .line 2761
    iget-wide v2, p0, mLastUserActivityTimeNoChangeLights:J

    int-to-long v4, v13

    add-long v10, v2, v4

    .line 2762
    cmp-long v1, p1, v10

    if-gez v1, :cond_79

    .line 2763
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b5

    .line 2764
    const/4 v1, 0x1

    iput v1, p0, mUserActivitySummary:I

    .line 2770
    :cond_79
    :goto_79
    iget v1, p0, mUserActivitySummary:I

    if-nez v1, :cond_97

    .line 2771
    if-ltz v14, :cond_1c1

    .line 2772
    iget-wide v2, p0, mLastUserActivityTime:J

    iget-wide v4, p0, mLastUserActivityTimeNoChangeLights:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2774
    .local v8, "anyUserActivity":J
    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v1, v8, v2

    if-ltz v1, :cond_97

    .line 2775
    int-to-long v2, v14

    add-long v10, v8, v2

    .line 2776
    cmp-long v1, p1, v10

    if-gez v1, :cond_97

    .line 2777
    const/4 v1, 0x4

    iput v1, p0, mUserActivitySummary:I

    .line 2788
    .end local v8    # "anyUserActivity":J
    :cond_97
    :goto_97
    iget-boolean v1, p0, mSmartStayEnabledSetting:Z

    if-eqz v1, :cond_f3

    .line 2789
    iget v1, p0, mLastUserActivitySummary:I

    iget v2, p0, mUserActivitySummary:I

    if-eq v1, v2, :cond_f3

    .line 2791
    const/4 v0, 0x0

    .line 2793
    .local v0, "bIsItTimeToCheckSmartStay":Z
    iget v1, p0, mLastUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a9

    .line 2794
    const/4 v0, 0x1

    .line 2797
    :cond_a9
    if-eqz v0, :cond_f3

    .line 2798
    iget-boolean v1, p0, mFaceDetected:Z

    if-eqz v1, :cond_f3

    .line 2799
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[smart stay] UserActivityState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mUserActivitySummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (face detected)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 2804
    iget-wide v2, p0, mLastUserActivityTime:J

    int-to-long v4, v13

    add-long/2addr v2, v4

    int-to-long v4, v12

    sub-long v10, v2, v4

    .line 2805
    const/4 v1, 0x1

    iput v1, p0, mUserActivitySummary:I

    .line 2807
    const/4 v1, 0x0

    iput-boolean v1, p0, mFaceDetected:Z

    .line 2815
    .end local v0    # "bIsItTimeToCheckSmartStay":Z
    :cond_f3
    iget v1, p0, mUserActivitySummary:I

    if-eqz v1, :cond_15e

    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-ltz v1, :cond_15e

    .line 2816
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2817
    .local v7, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2818
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v7, v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2821
    iget-boolean v1, p0, mSmartStayEnabledSetting:Z

    if-eqz v1, :cond_15e

    .line 2822
    iget v1, p0, mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15e

    .line 2823
    iget v1, p0, mSmartStayDelay:I

    int-to-long v2, v1

    sub-long v2, v10, v2

    iput-wide v2, p0, mNextTimeoutForSmartStay:J

    .line 2824
    const-wide/16 v2, 0x1770

    sub-long v2, v10, v2

    iput-wide v2, p0, mNextTimeoutForPreSmartStay:J

    .line 2826
    iget-boolean v1, p0, USE_PRE_SMART_STAY:Z

    if-eqz v1, :cond_143

    .line 2827
    invoke-direct/range {p0 .. p2}, isPreSmartStayNeeded(J)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 2828
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2829
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2830
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    iget-wide v2, p0, mNextTimeoutForPreSmartStay:J

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2831
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingMessagePreSmartStay:Z

    .line 2835
    :cond_143
    invoke-direct/range {p0 .. p2}, isSmartStayNeeded(J)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 2836
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2837
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2838
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    iget-wide v2, p0, mNextTimeoutForSmartStay:J

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2839
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingMessageSmartStay:Z

    .line 2854
    .end local v7    # "msg":Landroid/os/Message;
    .end local v12    # "screenDimDuration":I
    .end local v13    # "screenOffTimeout":I
    .end local v14    # "sleepTimeout":I
    :cond_15e
    :goto_15e
    iget v1, p0, mLastUserActivitySummary:I

    iget v2, p0, mUserActivitySummary:I

    if-eq v1, v2, :cond_1a6

    .line 2855
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[s] UserActivityState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLastUserActivitySummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mUserActivitySummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget v1, p0, mUserActivitySummary:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d4

    const-wide/16 v2, -0x1

    cmp-long v1, v10, v2

    if-nez v1, :cond_1d4

    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v1

    if-eqz v1, :cond_1d4

    .line 2859
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2865
    :goto_1a2
    iget v1, p0, mUserActivitySummary:I

    iput v1, p0, mLastUserActivitySummary:I

    .line 2876
    .end local v10    # "nextTimeout":J
    :cond_1a6
    return-void

    .line 2753
    .restart local v10    # "nextTimeout":J
    .restart local v12    # "screenDimDuration":I
    .restart local v13    # "screenOffTimeout":I
    .restart local v14    # "sleepTimeout":I
    :cond_1a7
    iget-wide v2, p0, mLastUserActivityTime:J

    int-to-long v4, v13

    add-long v10, v2, v4

    .line 2754
    cmp-long v1, p1, v10

    if-gez v1, :cond_5a

    .line 2755
    const/4 v1, 0x2

    iput v1, p0, mUserActivitySummary:I

    goto/16 :goto_5a

    .line 2765
    :cond_1b5
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_79

    .line 2766
    const/4 v1, 0x2

    iput v1, p0, mUserActivitySummary:I

    goto/16 :goto_79

    .line 2781
    :cond_1c1
    const/4 v1, 0x4

    iput v1, p0, mUserActivitySummary:I

    .line 2782
    const-wide/16 v10, -0x1

    goto/16 :goto_97

    .line 2842
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_1c8
    const-string v1, "PowerManagerService"

    const-string v2, "[smart stay] updateUserActivitySummaryLocked : don\'t have time to smart stay"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 2850
    .end local v7    # "msg":Landroid/os/Message;
    .end local v12    # "screenDimDuration":I
    .end local v13    # "screenOffTimeout":I
    .end local v14    # "sleepTimeout":I
    :cond_1d0
    const/4 v1, 0x0

    iput v1, p0, mUserActivitySummary:I

    goto :goto_15e

    .line 2862
    :cond_1d4
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1a2
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .registers 7

    .prologue
    .line 4414
    const/4 v0, 0x0

    .line 4415
    .local v0, "changed":Z
    iget-object v4, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4416
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_30

    .line 4417
    iget-object v4, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4418
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 4420
    invoke-direct {p0, v3}, setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 4421
    const/4 v0, 0x1

    .line 4422
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_2c

    .line 4424
    invoke-direct {p0, v3}, notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4416
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4426
    :cond_2c
    invoke-direct {p0, v3}, notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_29

    .line 4431
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_30
    if-eqz v0, :cond_3b

    .line 4432
    iget v4, p0, mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, mDirty:I

    .line 4433
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4435
    :cond_3b
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 7
    .param p1, "dirty"    # I

    .prologue
    .line 2640
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_91

    .line 2641
    const/4 v3, 0x0

    iput v3, p0, mWakeLockSummary:I

    .line 2643
    iget-object v3, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2644
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_59

    .line 2645
    iget-object v3, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2646
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_9e

    .line 2644
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2648
    :sswitch_24
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_21

    .line 2650
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2654
    :sswitch_2f
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2657
    :sswitch_36
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2660
    :sswitch_3d
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2663
    :sswitch_44
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2666
    :sswitch_4b
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2669
    :sswitch_52
    iget v3, p0, mWakeLockSummary:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2675
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_59
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_64

    .line 2676
    iget v3, p0, mWakeLockSummary:I

    and-int/lit16 v3, v3, -0xc1

    iput v3, p0, mWakeLockSummary:I

    .line 2678
    :cond_64
    iget v3, p0, mWakefulness:I

    if-eqz v3, :cond_6e

    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_74

    .line 2680
    :cond_6e
    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, mWakeLockSummary:I

    .line 2692
    :cond_74
    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_85

    .line 2693
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_92

    .line 2694
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, mWakeLockSummary:I

    .line 2699
    :cond_85
    :goto_85
    iget v3, p0, mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_91

    .line 2700
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, mWakeLockSummary:I

    .line 2709
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_91
    return-void

    .line 2695
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_92
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_85

    .line 2696
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, mWakeLockSummary:I

    goto :goto_85

    .line 2646
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_24
        0x6 -> :sswitch_3d
        0xa -> :sswitch_36
        0x1a -> :sswitch_2f
        0x20 -> :sswitch_44
        0x40 -> :sswitch_4b
        0x80 -> :sswitch_52
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 16
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1653
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1654
    :try_start_3
    invoke-direct {p0, p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 1655
    .local v9, "index":I
    if-gez v9, :cond_2f

    .line 1660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1677
    .end local v9    # "index":I
    :catchall_2c
    move-exception v0

    monitor-exit v10
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    .line 1664
    .restart local v9    # "index":I
    :cond_2f
    :try_start_2f
    iget-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1670
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1671
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1674
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1675
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1677
    :cond_52
    monitor-exit v10
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_2c

    .line 1678
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 10
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 2962
    const/4 v0, 0x0

    .line 2963
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_20

    .line 2966
    iget v1, p0, mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_20

    invoke-direct {p0}, isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2970
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2971
    .local v2, "time":J
    invoke-direct {p0}, shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2972
    invoke-direct {p0, v2, v3, v6}, napNoUpdateLocked(JI)Z

    move-result v0

    .line 2987
    .end local v2    # "time":J
    :cond_20
    :goto_20
    return v0

    .line 2975
    .restart local v2    # "time":J
    :cond_21
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_c2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release wake lock: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, mPrevReleasedWakeLock:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2976
    .local v7, "screenOffReason":Ljava/lang/String;
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_c6

    const-string/jumbo v1, "release stay on "

    :goto_4b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_c9

    const-string/jumbo v1, "timeout "

    :goto_63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_cc

    const-string/jumbo v1, "prox pos "

    :goto_7b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "(0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOffReason:Ljava/lang/String;

    .line 2982
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto/16 :goto_20

    .line 2975
    .end local v7    # "screenOffReason":Ljava/lang/String;
    :cond_c2
    const-string v7, ""

    goto/16 :goto_3b

    .line 2976
    .restart local v7    # "screenOffReason":Ljava/lang/String;
    :cond_c6
    const-string v1, ""

    goto :goto_4b

    .line 2977
    :cond_c9
    const-string v1, ""

    goto :goto_63

    .line 2978
    :cond_cc
    const-string v1, ""

    goto :goto_7b
.end method

.method private userActivityFromNative(JII)V
    .registers 12
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1774
    iget v0, p0, mNativeUserActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNativeUserActivityCount:I

    .line 1775
    iget v0, p0, mNativeUserActivityCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_53

    .line 1776
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] userActivityFromNative : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mNativeUserActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget v0, p0, mNativeUserActivityCount:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_53

    .line 1779
    const/4 v0, 0x0

    iput v0, p0, mNativeUserActivityCount:I

    .line 1784
    :cond_53
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, userActivityInternal(JIII)V

    .line 1785
    return-void
.end method

.method private userActivityInternal(JIII)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1790
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_28

    .line 1791
    iget-wide v2, p0, mLastAndroidAutoBoostTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_e

    .line 1792
    iput-wide p1, p0, mLastAndroidAutoBoostTime:J

    .line 1794
    :cond_e
    iget-wide v2, p0, mLastAndroidAutoBoostTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x76c

    cmp-long v1, v2, v4

    if-lez v1, :cond_28

    .line 1795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.ANDROID_AUTO_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v0, "mAutoIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1797
    iput-wide p1, p0, mLastAndroidAutoBoostTime:J

    .line 1801
    .end local v0    # "mAutoIntent":Landroid/content/Intent;
    :cond_28
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1802
    :try_start_2b
    invoke-direct/range {p0 .. p5}, userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1803
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1805
    :cond_34
    monitor-exit v2

    .line 1806
    return-void

    .line 1805
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_36

    throw v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    .line 1815
    iget-wide v2, p0, mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1b

    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1b

    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 1881
    :goto_1c
    return v0

    .line 1820
    :cond_1d
    const-string/jumbo v2, "userActivity"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1822
    :try_start_23
    iget-wide v2, p0, mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_30

    .line 1823
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, powerHintInternal(II)V

    .line 1824
    iput-wide p1, p0, mLastInteractivePowerHintTime:J

    .line 1828
    :cond_30
    if-ne p3, v6, :cond_49

    .line 1829
    iget-object v2, p0, mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1836
    :goto_38
    iget v2, p0, mWakefulness:I

    if-eqz v2, :cond_44

    iget v2, p0, mWakefulness:I
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_4f

    if-eq v2, v6, :cond_44

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_54

    .line 1879
    :cond_44
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_1c

    .line 1833
    :cond_49
    :try_start_49
    iget-object v2, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    goto :goto_38

    .line 1879
    :catchall_4f
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1842
    :cond_54
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_70

    .line 1843
    :try_start_58
    iget-wide v2, p0, mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_b1

    iget-wide v2, p0, mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_b1

    .line 1845
    iput-wide p1, p0, mLastUserActivityTimeNoChangeLights:J

    .line 1846
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, mDirty:I
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_4f

    .line 1879
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1c

    .line 1850
    :cond_70
    :try_start_70
    iget-wide v2, p0, mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_b1

    .line 1851
    iput-wide p1, p0, mLastUserActivityTime:J

    .line 1852
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, mDirty:I

    .line 1855
    if-eq p3, v6, :cond_8a

    if-ne p3, v7, :cond_a4

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil$Sales;->NORTH_AMERICA:Z

    if-eqz v1, :cond_a4

    iget-boolean v1, p0, mIsSipVisible:Z

    if-nez v1, :cond_a4

    .line 1857
    :cond_8a
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, mDirty:I

    .line 1867
    :cond_90
    :goto_90
    iget v1, p0, mUserActivityTimeoutSetting:I

    if-lez v1, :cond_9f

    .line 1868
    if-nez p3, :cond_9c

    iget v1, p0, mDirty:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9f

    .line 1869
    :cond_9c
    invoke-direct {p0, p1, p2}, setUserActivityTimeoutLocked(J)V
    :try_end_9f
    .catchall {:try_start_70 .. :try_end_9f} :catchall_4f

    .line 1879
    :cond_9f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1c

    .line 1858
    :cond_a4
    if-ne p3, v0, :cond_90

    :try_start_a6
    iget-boolean v1, p0, mIsFolderType:Z

    if-eqz v1, :cond_90

    .line 1859
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, mDirty:I
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_4f

    goto :goto_90

    .line 1879
    :cond_b1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    .line 1881
    goto/16 :goto_1c
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .registers 10
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1918
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1920
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, mLastWakeUpReason:I

    .line 1923
    invoke-direct/range {p0 .. p6}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1924
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1926
    :cond_f
    monitor-exit v1

    .line 1927
    return-void

    .line 1926
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .registers 14
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "reasonUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1935
    iget-wide v2, p0, mLastSleepTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_13

    iget v1, p0, mWakefulness:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    iget-boolean v1, p0, mBootCompleted:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_15

    .line 1937
    :cond_13
    const/4 v1, 0x0

    .line 1987
    :goto_14
    return v1

    .line 1941
    :cond_15
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@[ps] Screen__On  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mScreenOnOffCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLastWakeUpReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    const-string v1, ""

    iput-object v1, p0, mScreenOnReason:Ljava/lang/String;

    .line 1944
    const-string v1, ""

    iput-object v1, p0, mScreenOffReason:Ljava/lang/String;

    .line 1948
    const/4 v0, 0x0

    .line 1949
    .local v0, "isWakeUpPreventionNeeded":Z
    invoke-direct {p0}, isWakeUpPreventionNeededLocked()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1950
    const/4 v0, 0x1

    .line 1953
    :cond_5d
    const/4 v1, 0x0

    iput v1, p0, mLastWakeUpReason:I

    .line 1955
    if-eqz v0, :cond_64

    .line 1956
    const/4 v1, 0x1

    goto :goto_14

    .line 1964
    :cond_64
    const-wide/32 v2, 0x20000

    const-string/jumbo v1, "wakeUp"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1966
    :try_start_6d
    iget v1, p0, mWakefulness:I

    packed-switch v1, :pswitch_data_f8

    .line 1977
    :goto_72
    :pswitch_72
    const/4 v1, 0x0

    iput-boolean v1, p0, mForceDoze:Z

    .line 1978
    iput-wide p1, p0, mLastWakeTime:J

    .line 1979
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, setWakefulnessLocked(II)V

    .line 1981
    iget-object v1, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1982
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_b0

    .line 1985
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1987
    const/4 v1, 0x1

    goto :goto_14

    .line 1968
    :pswitch_91
    :try_start_91
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from sleep (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_91 .. :try_end_af} :catchall_b0

    goto :goto_72

    .line 1985
    :catchall_b0
    move-exception v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 1971
    :pswitch_b8
    :try_start_b8
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from dream (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1974
    :pswitch_d7
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from dozing (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_b8 .. :try_end_f5} :catchall_b0

    goto/16 :goto_72

    .line 1966
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_91
        :pswitch_72
        :pswitch_b8
        :pswitch_d7
    .end packed-switch
.end method

.method private wakeUpWithReasonInternal(JII)V
    .registers 14
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 1896
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1898
    :try_start_4
    iput p3, p0, mLastWakeUpReason:I

    .line 1901
    invoke-direct {p0}, isProximityPositveLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, mLastWakeUpReason:I

    if-ne v0, v1, :cond_13

    .line 1903
    const/4 v0, 0x1

    iput-boolean v0, p0, mWakeUpEvenThoughProximityPositive:Z

    .line 1906
    :cond_13
    const-string v4, "android.server.power:POWER"

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    invoke-direct/range {v1 .. v7}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1907
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1912
    :goto_29
    monitor-exit v8

    .line 1913
    return-void

    .line 1910
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, mWakeUpEvenThoughProximityPositive:Z

    goto :goto_29

    .line 1912
    :catchall_2f
    move-exception v0

    monitor-exit v8
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v0
.end method


# virtual methods
.method dumpDebugLog()V
    .registers 4

    .prologue
    .line 7321
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "dumpDebugLog +"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/power/PowerManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$12;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7353
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7354
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 4822
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4823
    :try_start_3
    monitor-exit v1

    .line 4824
    return-void

    .line 4823
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 12
    .param p1, "phase"    # I

    .prologue
    const/16 v5, 0x3e8

    .line 801
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] onBootPhase() phase= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 804
    if-ne p1, v5, :cond_69

    .line 805
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 806
    .local v2, "now":J
    const/4 v0, 0x1

    iput-boolean v0, p0, mBootCompleted:Z

    .line 807
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, mDirty:I

    .line 808
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 811
    invoke-direct {p0}, isSupportCover()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, mCoverIsUpdatedFromCoverManager:Z

    if-nez v0, :cond_63

    iget-boolean v0, p0, mIsCoverClosed:Z

    if-eqz v0, :cond_63

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsCoverClosed:Z

    .line 814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 815
    .local v8, "time":J
    iput-wide v8, p0, mlastUpdateCoverStateTime:J

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase called on closed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsCoverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 819
    .end local v8    # "time":J
    :cond_63
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 821
    invoke-virtual {p0}, updateLowPowerModeLocked()V

    .line 824
    .end local v2    # "now":J
    :cond_69
    monitor-exit v7

    .line 825
    return-void

    .line 824
    :catchall_6b
    move-exception v0

    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_1f .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 791
    const-string/jumbo v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 792
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 794
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 795
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 796
    return-void
.end method

.method setDeviceIdleModeInternal(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 4364
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4365
    :try_start_3
    iget-boolean v0, p0, mDeviceIdleMode:Z

    if-eq v0, p1, :cond_14

    .line 4366
    iput-boolean p1, p0, mDeviceIdleMode:Z

    .line 4367
    invoke-direct {p0}, updateWakeLockDisabledStatesLocked()V

    .line 4368
    if-eqz p1, :cond_16

    .line 4369
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 4374
    :cond_14
    :goto_14
    monitor-exit v1

    .line 4375
    return-void

    .line 4371
    :cond_16
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_14

    .line 4374
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .registers 4
    .param p1, "appids"    # [I

    .prologue
    .line 4387
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4388
    :try_start_3
    iput-object p1, p0, mDeviceIdleTempWhitelist:[I

    .line 4389
    iget-boolean v0, p0, mDeviceIdleMode:Z

    if-eqz v0, :cond_c

    .line 4390
    invoke-direct {p0}, updateWakeLockDisabledStatesLocked()V

    .line 4392
    :cond_c
    monitor-exit v1

    .line 4393
    return-void

    .line 4392
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .registers 4
    .param p1, "appids"    # [I

    .prologue
    .line 4378
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4379
    :try_start_3
    iput-object p1, p0, mDeviceIdleWhitelist:[I

    .line 4380
    iget-boolean v0, p0, mDeviceIdleMode:Z

    if-eqz v0, :cond_c

    .line 4381
    invoke-direct {p0}, updateWakeLockDisabledStatesLocked()V

    .line 4383
    :cond_c
    monitor-exit v1

    .line 4384
    return-void

    .line 4383
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setHallstateForMultiScreenInternal(I)V
    .registers 11
    .param p1, "multiScreenState"    # I

    .prologue
    .line 7386
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] setHallstateForMultiScreen : state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7388
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 7389
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7390
    .local v2, "time":J
    const/4 v0, 0x0

    .line 7392
    .local v0, "need_update":Z
    packed-switch p1, :pswitch_data_d4

    .line 7419
    const-string v1, "PowerManagerService"

    const-string v4, "[api] Unknown multiScreenState state"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7422
    :goto_2e
    iget v1, p0, mMultiScreenState:I

    iput v1, p0, mPrevMultiScreenState:I

    .line 7423
    iput p1, p0, mMultiScreenState:I

    .line 7424
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] setHallstateForMultiScreen :  mSubScreenPolicyOverride: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mSubScreenPolicyOverride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; need_upate= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7426
    if-eqz v0, :cond_64

    .line 7427
    iget v1, p0, mDirty:I

    const/high16 v4, 0x80000

    or-int/2addr v1, v4

    iput v1, p0, mDirty:I

    .line 7428
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 7430
    :cond_64
    monitor-exit v8

    .line 7431
    return-void

    .line 7394
    :pswitch_66
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 7395
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_2e

    .line 7398
    :cond_7c
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] Screen__Off cancel : isRunningFactoryApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isFactoryBinary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 7430
    .end local v0    # "need_update":Z
    .end local v2    # "time":J
    :catchall_a7
    move-exception v1

    monitor-exit v8
    :try_end_a9
    .catchall {:try_start_1f .. :try_end_a9} :catchall_a7

    throw v1

    .line 7403
    .restart local v0    # "need_update":Z
    .restart local v2    # "time":J
    :pswitch_aa
    const/4 v1, 0x3

    :try_start_ab
    iput v1, p0, mSubScreenPolicyOverride:I

    .line 7404
    iget v1, p0, mWakefulness:I

    if-eqz v1, :cond_b4

    .line 7405
    const/4 v0, 0x1

    goto/16 :goto_2e

    .line 7407
    :cond_b4
    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    .line 7409
    goto/16 :goto_2e

    .line 7411
    :pswitch_c7
    const/4 v0, 0x1

    .line 7412
    const/4 v1, 0x0

    iput v1, p0, mSubScreenPolicyOverride:I

    goto/16 :goto_2e

    .line 7415
    :pswitch_cd
    const/4 v0, 0x1

    .line 7416
    const/4 v1, 0x3

    iput v1, p0, mSubScreenPolicyOverride:I
    :try_end_d1
    .catchall {:try_start_ab .. :try_end_d1} :catchall_a7

    goto/16 :goto_2e

    .line 7392
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_66
        :pswitch_c7
        :pswitch_cd
        :pswitch_aa
    .end packed-switch
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .registers 4
    .param p1, "timeMs"    # I

    .prologue
    .line 4356
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4357
    :try_start_3
    iput p1, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 4358
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 4359
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 4360
    monitor-exit v1

    .line 4361
    return-void

    .line 4360
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method setStayOnSettingInternal(I)V
    .registers 4
    .param p1, "val"    # I

    .prologue
    .line 4351
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4353
    return-void
.end method

.method public setTspLpmMode(IZ)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7369
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7370
    if-nez p2, :cond_c

    :try_start_7
    iget v3, p0, mWakefulness:I

    if-ne v3, v1, :cond_c

    move v0, v1

    .line 7371
    .local v0, "changeStateOnly":Z
    :cond_c
    if-nez p1, :cond_1e

    iget-boolean v3, p0, mTspMainLpmEnabled:Z

    if-eq p2, v3, :cond_1e

    .line 7372
    if-nez v0, :cond_1a

    .line 7373
    iget-object v1, p0, mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2}, Lcom/android/server/power/Notifier;->onTspLpmNeed(IZ)V

    .line 7375
    :cond_1a
    iput-boolean p2, p0, mTspMainLpmEnabled:Z

    .line 7382
    :cond_1c
    :goto_1c
    monitor-exit v2

    .line 7383
    return-void

    .line 7376
    :cond_1e
    if-ne p1, v1, :cond_1c

    iget-boolean v1, p0, mTspSubLpmEnabled:Z

    if-eq p2, v1, :cond_1c

    .line 7377
    if-nez v0, :cond_2c

    .line 7378
    iget-object v1, p0, mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p2}, Lcom/android/server/power/Notifier;->onTspLpmNeed(IZ)V

    .line 7380
    :cond_2c
    iput-boolean p2, p0, mTspSubLpmEnabled:Z

    goto :goto_1c

    .line 7382
    .end local v0    # "changeStateOnly":Z
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .registers 13
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    const-string v0, "PowerManagerService"

    const-string v3, "[api] systemReady()"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 832
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, mSystemReady:Z

    .line 833
    iput-object p1, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 834
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 835
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 836
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 837
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 839
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 840
    .local v7, "pm":Landroid/os/PowerManager;
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mScreenBrightnessSettingMinimum:I

    .line 841
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mScreenBrightnessSettingMaximum:I

    .line 842
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mScreenBrightnessSettingDefault:I

    .line 844
    new-instance v9, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v9, v0, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 847
    .local v9, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2dd

    move v0, v1

    :goto_6b
    iput-boolean v0, p0, mIsSupportedLightSensor:Z

    .line 852
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 856
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotifierInSeperateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    .line 857
    iget-object v0, p0, mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 858
    new-instance v0, Lcom/android/server/power/Notifier;

    iget-object v1, p0, mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    .line 869
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 872
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 874
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 875
    iget-object v0, p0, mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, mAttentionLight:Lcom/android/server/lights/Light;

    .line 878
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsFolderType:Z

    .line 879
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v0, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 880
    iget-boolean v0, p0, mIsFolderType:Z

    if-eqz v0, :cond_e9

    .line 881
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v0, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 889
    :cond_e9
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, isFamilyConnectedInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mFeatureNotifyScreenOffTimeout:Z

    .line 893
    invoke-direct {p0}, isSupportCover()Z

    move-result v0

    iput-boolean v0, p0, mFeatureCoverSysfs:Z

    .line 897
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v9}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 924
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 925
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 928
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 931
    const-string/jumbo v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 934
    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 937
    const-string/jumbo v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 940
    const-string/jumbo v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 943
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 946
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 949
    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 952
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 955
    const-string/jumbo v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 958
    const-string/jumbo v0, "theater_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 961
    const-string/jumbo v0, "double_tap_to_wake"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 966
    const-string v0, "button_key_light"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    iget-boolean v0, p0, mIsFolderType:Z

    if-eqz v0, :cond_1e9

    .line 970
    const-string/jumbo v0, "key_backlight_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 973
    const-string/jumbo v0, "key_night_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 980
    :cond_1e9
    const-string v0, "auto_brightness_detail"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 986
    const-string/jumbo v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 993
    const-string/jumbo v0, "intelligent_sleep_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1000
    iget-boolean v0, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v0, :cond_232

    .line 1001
    const-string/jumbo v0, "is_secured_lock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1004
    const-string/jumbo v0, "lock_screen_lock_after_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1012
    :cond_232
    const-string/jumbo v0, "user_activity_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1019
    const-string/jumbo v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1025
    const-string/jumbo v0, "wakeup_prevention"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1028
    const-string/jumbo v0, "wakeup_prevention_packages"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1034
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    .line 1035
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 1036
    iget-object v0, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2ae

    .line 1037
    iget-object v0, p0, mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, mIsWirelessChargerSContextEnabled:Z

    .line 1038
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : (mWirelessChargerSContextManager != null - mIsWirelessChargerSContextEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsWirelessChargerSContextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_2ae
    iget-boolean v0, p0, mFeatureCoverSysfs:Z

    if-eqz v0, :cond_2c6

    .line 1045
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1047
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_2e0

    .line 1048
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    .line 1055
    :cond_2c6
    :goto_2c6
    invoke-direct {p0}, readConfigurationLocked()V

    .line 1056
    invoke-direct {p0}, updateSettingsLocked()V

    .line 1057
    iget v0, p0, mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mDirty:I

    .line 1058
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1059
    monitor-exit v10
    :try_end_2d6
    .catchall {:try_start_d .. :try_end_2d6} :catchall_2e9

    .line 1062
    invoke-direct {p0}, initWakeUpPrevention()V

    .line 1066
    invoke-direct {p0}, registerReceiverInSystemReady()V

    .line 1068
    return-void

    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_2dd
    move v0, v2

    .line 847
    goto/16 :goto_6b

    .line 1050
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_2e0
    :try_start_2e0
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mCoverManager is null!!!!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c6

    .line 1059
    .end local v7    # "pm":Landroid/os/PowerManager;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_2e9
    move-exception v0

    monitor-exit v10
    :try_end_2eb
    .catchall {:try_start_2e0 .. :try_end_2eb} :catchall_2e9

    throw v0
.end method

.method public timeSinceScreenWasLastOn()J
    .registers 7

    .prologue
    .line 4526
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4527
    :try_start_3
    iget-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v0, :cond_d

    .line 4528
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 4530
    :goto_c
    return-wide v0

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v0, v4

    monitor-exit v2

    goto :goto_c

    .line 4531
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method uidGoneInternal(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 4405
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4406
    :try_start_3
    iget-object v0, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4407
    iget-boolean v0, p0, mDeviceIdleMode:Z

    if-eqz v0, :cond_f

    .line 4408
    invoke-direct {p0}, updateWakeLockDisabledStatesLocked()V

    .line 4410
    :cond_f
    monitor-exit v1

    .line 4411
    return-void

    .line 4410
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public updateLidState(Z)V
    .registers 5
    .param p1, "closed"    # Z

    .prologue
    .line 3296
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3297
    :try_start_3
    iget-boolean v0, p0, mIsLidClosed:Z

    if-eq v0, p1, :cond_13

    .line 3298
    iput-boolean p1, p0, mIsLidClosed:Z

    .line 3299
    iget v0, p0, mDirty:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, mDirty:I

    .line 3300
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3302
    :cond_13
    monitor-exit v1

    .line 3303
    return-void

    .line 3302
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1370
    iget-boolean v3, p0, mBootCompleted:Z

    if-eqz v3, :cond_c

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_36

    .line 1371
    :cond_c
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLowPowerModeLocked: mBootCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ActivityManagerNative.isSystemReady(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_35
    :goto_35
    return-void

    .line 1391
    :cond_36
    iget-boolean v3, p0, mLowPowerModeSetting:Z

    if-eqz v3, :cond_c3

    iget-boolean v3, p0, mIsPowered:Z

    if-nez v3, :cond_c3

    iget-boolean v3, p0, mAutoLowPowerModeConfigured:Z

    if-eqz v3, :cond_48

    iget v3, p0, mBatteryLevel:I

    iget v4, p0, mLowBatteryTriggerLevel:I

    if-gt v3, v4, :cond_c3

    :cond_48
    move v0, v1

    .line 1395
    .local v0, "lowPowerModeEnabled":Z
    :goto_49
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PSM] lowPowerModeEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (mLowPowerModeSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLowPowerModeSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAutoLowPowerModeConfigured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mAutoLowPowerModeConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLowBatteryTriggerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mLowBatteryTriggerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-boolean v3, p0, mLowPowerModeEnabled:Z

    if-ne v3, v0, :cond_ab

    iget-boolean v3, p0, mUserSwitched:Z

    if-eqz v3, :cond_35

    .line 1404
    :cond_ab
    iput-boolean v0, p0, mLowPowerModeEnabled:Z

    .line 1406
    iput-boolean v2, p0, mUserSwitched:Z

    .line 1408
    const/4 v3, 0x5

    if-eqz v0, :cond_c5

    :goto_b2
    invoke-direct {p0, v3, v1}, powerHintInternal(II)V

    .line 1409
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_35

    .end local v0    # "lowPowerModeEnabled":Z
    :cond_c3
    move v0, v2

    .line 1391
    goto :goto_49

    .restart local v0    # "lowPowerModeEnabled":Z
    :cond_c5
    move v1, v2

    .line 1408
    goto :goto_b2
.end method

.method updateUidProcStateInternal(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 4396
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4397
    :try_start_3
    iget-object v0, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4398
    iget-boolean v0, p0, mDeviceIdleMode:Z

    if-eqz v0, :cond_f

    .line 4399
    invoke-direct {p0}, updateWakeLockDisabledStatesLocked()V

    .line 4401
    :cond_f
    monitor-exit v1

    .line 4402
    return-void

    .line 4401
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
