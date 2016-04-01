.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$TimeMeasurement;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$NativeDeathRecipient;,
        Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$LedSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_SHARING:Ljava/lang/String; = "com.android.systemui.power.action.POWER_SHARING"

.field private static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.systemui.power.action.WIRELESS_POWER_SHARING"

.field private static final ACTION_WIRELESS_RESPONSE_POWER_SHARING:Ljava/lang/String; = "com.samsung.systemui.power.action.RESPONSE_WIRELESS_POWER_SHARING"

.field private static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/switch/afc_disable"

.field private static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_POGO:I = 0x17

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final BATT_HV_WIRELESS_STATUS_0V:I = 0x0

.field private static final BATT_HV_WIRELESS_STATUS_5V:I = 0x1

.field private static final BATT_HV_WIRELESS_STATUS_9V:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field private static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field private static final LED_CHARGING_SETTINGS_URI:Ljava/lang/String; = "led_indicator_charing"

.field private static final LED_LOW_BATTERY_SETTINGS_URI:Ljava/lang/String; = "led_indicator_low_battery"

.field private static final LIGHT_SEC_FLASH_OFF:I = 0x0

.field private static final MINIMUM_INSPECT_INTENT_SYNC_DURATION:I = 0x7d0

.field private static final OTG_CHARGE_BLOCK_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/otg/online"

.field private static final OVER_CURRENT_THRESHOLD:I = 0x0

.field private static final PATH_ASOC_NOW:Ljava/lang/String; = "/sys/class/power_supply/battery/fg_asoc"

.field private static final PATH_BATTERY_MAX_CURRENT:Ljava/lang/String; = "/efs/FactoryApp/max_current"

.field private static final PATH_BATTERY_MAX_TEMP:Ljava/lang/String; = "/efs/FactoryApp/max_temp"

.field private static final PATH_EFS_ASOC:Ljava/lang/String; = "/efs/FactoryApp/asoc"

.field private static final PATH_LOG_BATTERY_USAGE:Ljava/lang/String; = "/efs/FactoryApp/batt_discharge_level"

.field private static final PATH_SYSFS_BATTERY_CYCLE:Ljava/lang/String; = "/sys/class/power_supply/battery/battery_cycle"

.field private static final POGO_NONE:I = 0x0

.field private static final POGO_ONLY:I = 0x1

.field private static final POGO_WITH_OTHERS:I = 0x2

.field private static final POWER_SHARING_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/ps/status"

.field private static final PRODUCT_DEV:I = 0x0

.field private static final PROPERTY_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "persist.service.battery.wfc"

.field public static final REQUEST_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

.field public static final RESPONSE_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

.field private static final SETTING_SHOW_WIRELESS_CHARGER_MENU:Ljava/lang/String; = "show_wireless_charger_menu"

.field private static final SETTING_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "wireless_fast_charging"

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final SYSFS_BATT_HV_WIRELESS_PAD_CTRL:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BATTERY_INFO:Ljava/lang/String; = "!@[BatteryInfo] "

.field private static final USE_FAKE_BATTERY:Z

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_wcharging_mode"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_MUIC:Ljava/lang/String; = "/sys/class/sec/switch/wireless"

.field private static final WIRELESS_ENABLE_SYSFS_PATH_FOR_TSP:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_FALSE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,0"

.field private static final WIRELESS_ENABLE_SYSFS_VALUE_TRUE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,1"

.field private static final WIRELESS_POWER_SHARING_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/ps/status"

.field private static final WIRELESS_POWER_SHARING_USER_LEVEL:Ljava/lang/String; = "power_share_level"

.field private static mWirelessPowerSharing_UserLevel:I = 0x0

.field private static final mWirelessPowerSharing_limit:I = 0x14


# instance fields
.field private mActivityManagerReady:Z

.field private mAdaptiveFastChargingSettingsEnable:Z

.field private mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

.field private mBatteryCapacity:I

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryMaxCurrent:J

.field private mBatteryMaxTemp:J

.field private mBatteryPropertiesListener:Lcom/android/server/BatteryService$BatteryListener;

.field private mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidCharger:I

.field private final mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryChargeType:I

.field private mLastBatteryCurrentAvg:I

.field private mLastBatteryCurrentNow:I

.field private mLastBatteryHealth:I

.field private mLastBatteryHighVoltageCharger:Z

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryOnline:I

.field private mLastBatteryPowerSharingOnline:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatterySWSelfDischarging:Z

.field private mLastBatterySecEvent:I

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastPlugType:I

.field private mLastSavedBatteryLevel:J

.field private mLastSecEventWaterInConnector:Z

.field private mLastSecPlugTypeSummary:I

.field private mLastWirelessChargingStatus:Z

.field private mLastchargerPogoOnline:Z

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedChargingSettingsEnable:Z

.field private mLedLowBatterySettingsEnable:Z

.field private mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field private final mLock:Ljava/lang/Object;

.field private final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

.field private mPlugType:I

.field private mPogoDockIntent:I

.field private final mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

.field private final mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

.field private mSavedBatteryAsoc:J

.field private mSavedBatteryMaxCurrent:J

.field private mSavedBatteryMaxTemp:J

.field private mSavedBatteryUsage:J

.field private mScreenOn:Z

.field private mSecPlugTypeSummary:I

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

.field private final mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

.field private mUpdatesStopped:Z

.field private mWasUsedWirelessFastChargerPreviously:Z

.field private mWirelessFastChargingSettingsEnable:Z

.field private mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 153
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--unplugged"

    aput-object v2, v0, v1

    sput-object v0, DUMPSYS_ARGS:[Ljava/lang/String;

    .line 318
    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {v0}, isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 333
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "signumlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, USE_FAKE_BATTERY:Z

    .line 808
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    invoke-static {v0}, isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 243
    new-instance v1, Landroid/os/BatteryProperties;

    invoke-direct {v1}, Landroid/os/BatteryProperties;-><init>()V

    iput-object v1, p0, mLastBatteryProps:Landroid/os/BatteryProperties;

    .line 262
    iput v6, p0, mLastPlugType:I

    .line 264
    iput v6, p0, mLastSecPlugTypeSummary:I

    .line 275
    iput-boolean v4, p0, mSentLowBatteryBroadcast:Z

    .line 281
    iput-boolean v4, p0, mBootCompleted:Z

    .line 282
    iput-boolean v5, p0, mScreenOn:Z

    .line 284
    iput-boolean v5, p0, mLedChargingSettingsEnable:Z

    .line 285
    iput-boolean v5, p0, mLedLowBatterySettingsEnable:Z

    .line 288
    iput-boolean v5, p0, mAdaptiveFastChargingSettingsEnable:Z

    .line 299
    iput v4, p0, mPogoDockIntent:I

    .line 304
    iput-boolean v4, p0, mLastSecEventWaterInConnector:Z

    .line 308
    iput-boolean v4, p0, mActivityManagerReady:Z

    .line 322
    iput-wide v2, p0, mSavedBatteryMaxTemp:J

    .line 323
    iput-wide v2, p0, mSavedBatteryMaxCurrent:J

    .line 324
    iput-wide v2, p0, mSavedBatteryAsoc:J

    .line 325
    iput-wide v2, p0, mSavedBatteryUsage:J

    .line 328
    iput-wide v2, p0, mBatteryMaxTemp:J

    .line 329
    iput-wide v2, p0, mBatteryMaxCurrent:J

    .line 330
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mLastSavedBatteryLevel:J

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

    .line 342
    new-instance v1, Lcom/android/server/BatteryService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 811
    iput-boolean v5, p0, mWirelessFastChargingSettingsEnable:Z

    .line 812
    iput-boolean v4, p0, mWasUsedWirelessFastChargerPreviously:Z

    .line 1698
    new-instance v1, Lcom/android/server/BatteryService$17;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    .line 1738
    new-instance v1, Lcom/android/server/BatteryService$18;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$18;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    .line 1767
    new-instance v1, Lcom/android/server/BatteryService$19;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    .line 1801
    new-instance v1, Lcom/android/server/BatteryService$20;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$20;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    .line 2016
    new-instance v1, Lcom/android/server/BatteryService$21;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$21;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mInvalidChargerObserver:Landroid/os/UEventObserver;

    .line 540
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 541
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 542
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 543
    new-instance v2, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v2, p0, mLed:Lcom/android/server/BatteryService$Led;

    .line 544
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 546
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mCriticalBatteryLevel:I

    .line 548
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mLowBatteryWarningLevel:I

    .line 550
    iget v1, p0, mLowBatteryWarningLevel:I

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, mLowBatteryCloseWarningLevel:I

    .line 552
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mShutdownBatteryTemperature:I

    .line 556
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SSRM_ConfigStandbyTime"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 557
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SSRM_ConfigStandbyTime"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mBatteryCapacity:I

    .line 561
    :goto_102
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@Battery capacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mBatteryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v1, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    .line 565
    new-instance v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    .line 568
    new-instance v1, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    .line 571
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 573
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v1, "com.android.systemui.power.action.POWER_SHARING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v1, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v1, "com.samsung.systemui.power.action.WIRELESS_POWER_SHARING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, InitBatteryInfo()V

    .line 586
    iget-object v1, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v2, p0, mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_183

    .line 593
    iget-object v1, p0, mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 598
    :cond_183
    const-string v1, ""

    if-eqz v1, :cond_196

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_196

    .line 600
    new-instance v1, Lcom/carrieriq/iqagent/client/IQClient;

    invoke-direct {v1}, Lcom/carrieriq/iqagent/client/IQClient;-><init>()V

    iput-object v1, p0, mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    .line 605
    :cond_196
    new-instance v1, Lcom/android/server/BatteryService$TimeMeasurement;

    invoke-direct {v1}, Lcom/android/server/BatteryService$TimeMeasurement;-><init>()V

    iput-object v1, p0, mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    .line 607
    return-void

    .line 559
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_19e
    const-string v1, "280000,933"

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mBatteryCapacity:I

    goto/16 :goto_102
.end method

.method private InitBatteryInfo()V
    .registers 3

    .prologue
    .line 1671
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$16;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1686
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, sendWirelessPowerSharingIntentLocked(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    invoke-direct {p0}, sendOTGIntentLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mAdaptiveFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, mAdaptiveFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mWirelessFastChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, mWirelessFastChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, setWirelessFastCharging(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mLed:Lcom/android/server/BatteryService$Led;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    invoke-direct {p0}, updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Landroid/os/IBatteryPropertiesRegistrar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/BatteryService;Landroid/os/IBatteryPropertiesRegistrar;)Landroid/os/IBatteryPropertiesRegistrar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/IBatteryPropertiesRegistrar;

    .prologue
    .line 152
    iput-object p1, p0, mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$NativeDeathRecipient;)Lcom/android/server/BatteryService$NativeDeathRecipient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Lcom/android/server/BatteryService$NativeDeathRecipient;

    .prologue
    .line 152
    iput-object p1, p0, mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget v0, p0, mPogoDockIntent:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget v0, p0, mSecPlugTypeSummary:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mLockBatteryInfoBackUp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/server/BatteryService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iput-wide p1, p0, mSavedBatteryAsoc:J

    return-wide p1
.end method

.method static synthetic access$2714(Lcom/android/server/BatteryService;J)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryAsoc:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$2722(Lcom/android/server/BatteryService;J)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryAsoc:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, mSavedBatteryAsoc:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    invoke-direct {p0}, readBatteryAsocFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryUsage:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/server/BatteryService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iput-wide p1, p0, mSavedBatteryUsage:J

    return-wide p1
.end method

.method static synthetic access$2914(Lcom/android/server/BatteryService;J)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mSavedBatteryUsage:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    invoke-direct {p0}, readBatteryUsageFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3100()Z
    .registers 1

    .prologue
    .line 152
    sget-boolean v0, FEATURE_SAVE_BATTERY_CYCLE:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, saveBatteryInfo(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/server/BatteryService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iput-wide p1, p0, mSavedBatteryMaxCurrent:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    invoke-direct {p0}, readBatteryMaxCurrentFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mSavedBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/server/BatteryService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iput-wide p1, p0, mSavedBatteryMaxTemp:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    invoke-direct {p0}, readBatteryMaxTempFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mLastSavedBatteryLevel:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/server/BatteryService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # J

    .prologue
    .line 152
    iput-wide p1, p0, mLastSavedBatteryLevel:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mBatteryMaxTemp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/BatteryService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-wide v0, p0, mBatteryMaxCurrent:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1}, readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget v0, p0, mInvalidCharger:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/BatteryService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, mInvalidCharger:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget v0, p0, mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/BatteryProperties;

    .prologue
    .line 152
    invoke-direct {p0, p1}, update(Landroid/os/BatteryProperties;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/BatteryService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget v0, p0, mPlugType:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mLedChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, mLedChargingSettingsEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget-boolean v0, p0, mLedLowBatterySettingsEnable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/BatteryService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, mLedLowBatterySettingsEnable:Z

    return p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 152
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 152
    sget v0, mWirelessPowerSharing_UserLevel:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 152
    sput p0, mWirelessPowerSharing_UserLevel:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 152
    iget v0, p0, mLastBatteryLevel:I

    return v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/high16 v11, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1896
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1897
    if-eqz p2, :cond_17

    :try_start_9
    array-length v9, p2

    if-eqz v9, :cond_17

    const-string v9, "-a"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32b

    .line 1898
    :cond_17
    const-string v6, "Current Battery Service state:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    iget-boolean v6, p0, mUpdatesStopped:Z

    if-eqz v6, :cond_25

    .line 1900
    const-string v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mBootCompleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  AC powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  USB powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Wireless powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Max charging current: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  health: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    const-string v6, "  scale: 100"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  voltage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  technology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, v7, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  batterySWSelfDischarging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  batterySecEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batterySecEvent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSecPlugTypeSummary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mSecPlugTypeSummary:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  LED Charging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mLedChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  LED Low Battery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mLedLowBatterySettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    if-eq v6, v11, :cond_1fc

    .line 1922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  current now: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    :cond_1fc
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    if-eq v6, v11, :cond_21c

    .line 1925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  charge counter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    :cond_21c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Adaptive Fast Charging Settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    const-string v6, "BatteryInfoBackUp"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryAsoc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, mSavedBatteryAsoc:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryMaxTemp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, mSavedBatteryMaxTemp:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryMaxCurrent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, mSavedBatteryMaxCurrent:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSavedBatteryUsage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p0, mSavedBatteryUsage:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  FEATURE_SAVE_BATTERY_CYCLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USE_FAKE_BATTERY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, USE_FAKE_BATTERY:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEC_FEATURE_BATTERY_SIMULATION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mWasUsedWirelessFastChargerPreviously: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mWirelessFastChargingSettingsEnable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    :cond_329
    :goto_329
    monitor-exit v8

    .line 2014
    return-void

    .line 1945
    :cond_32b
    const-string/jumbo v9, "unplug"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_368

    .line 1946
    iget-boolean v6, p0, mUpdatesStopped:Z

    if-nez v6, :cond_342

    .line 1947
    iget-object v6, p0, mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 1949
    :cond_342
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 1950
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 1951
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 1952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_354
    .catchall {:try_start_9 .. :try_end_354} :catchall_360

    move-result-wide v2

    .line 1954
    .local v2, "ident":J
    const/4 v6, 0x1

    :try_start_356
    iput-boolean v6, p0, mUpdatesStopped:Z

    .line 1955
    const/4 v6, 0x0

    invoke-direct {p0, v6}, processValuesLocked(Z)V
    :try_end_35c
    .catchall {:try_start_356 .. :try_end_35c} :catchall_363

    .line 1957
    :try_start_35c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_329

    .line 2013
    .end local v2    # "ident":J
    :catchall_360
    move-exception v6

    monitor-exit v8
    :try_end_362
    .catchall {:try_start_35c .. :try_end_362} :catchall_360

    throw v6

    .line 1957
    .restart local v2    # "ident":J
    :catchall_363
    move-exception v6

    :try_start_364
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1959
    .end local v2    # "ident":J
    :cond_368
    array-length v9, p2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_448

    const-string/jumbo v9, "set"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_448

    .line 1960
    const/4 v9, 0x1

    aget-object v1, p2, v9

    .line 1961
    .local v1, "key":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v5, p2, v9
    :try_end_37e
    .catchall {:try_start_364 .. :try_end_37e} :catchall_360

    .line 1963
    .local v5, "value":Ljava/lang/String;
    :try_start_37e
    iget-boolean v9, p0, mUpdatesStopped:Z

    if-nez v9, :cond_389

    .line 1964
    iget-object v9, p0, mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 1966
    :cond_389
    const/4 v4, 0x1

    .line 1967
    .local v4, "update":Z
    const-string v9, "ac"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c9

    .line 1968
    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3c7

    :goto_39a
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 1983
    :goto_39c
    if-eqz v4, :cond_329

    .line 1984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3a1
    .catch Ljava/lang/NumberFormatException; {:try_start_37e .. :try_end_3a1} :catch_3ae
    .catchall {:try_start_37e .. :try_end_3a1} :catchall_360

    move-result-wide v2

    .line 1986
    .restart local v2    # "ident":J
    const/4 v6, 0x1

    :try_start_3a3
    iput-boolean v6, p0, mUpdatesStopped:Z

    .line 1987
    const/4 v6, 0x0

    invoke-direct {p0, v6}, processValuesLocked(Z)V
    :try_end_3a9
    .catchall {:try_start_3a3 .. :try_end_3a9} :catchall_443

    .line 1989
    :try_start_3a9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3ac
    .catch Ljava/lang/NumberFormatException; {:try_start_3a9 .. :try_end_3ac} :catch_3ae
    .catchall {:try_start_3a9 .. :try_end_3ac} :catchall_360

    goto/16 :goto_329

    .line 1992
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    :catch_3ae
    move-exception v0

    .line 1993
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_3af
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c5
    .catchall {:try_start_3af .. :try_end_3c5} :catchall_360

    goto/16 :goto_329

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "update":Z
    :cond_3c7
    move v6, v7

    .line 1968
    goto :goto_39a

    .line 1969
    :cond_3c9
    :try_start_3c9
    const-string/jumbo v9, "usb"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3df

    .line 1970
    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3dd

    :goto_3da
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    goto :goto_39c

    :cond_3dd
    move v6, v7

    goto :goto_3da

    .line 1971
    :cond_3df
    const-string/jumbo v9, "wireless"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f5

    .line 1972
    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3f3

    :goto_3f0
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    goto :goto_39c

    :cond_3f3
    move v6, v7

    goto :goto_3f0

    .line 1973
    :cond_3f5
    const-string/jumbo v6, "status"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_407

    .line 1974
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    goto :goto_39c

    .line 1975
    :cond_407
    const-string/jumbo v6, "level"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_419

    .line 1976
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    goto :goto_39c

    .line 1977
    :cond_419
    const-string/jumbo v6, "invalid"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42a

    .line 1978
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, mInvalidCharger:I

    goto/16 :goto_39c

    .line 1980
    :cond_42a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    const/4 v4, 0x0

    goto/16 :goto_39c

    .line 1989
    .restart local v2    # "ident":J
    :catchall_443
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_448
    .catch Ljava/lang/NumberFormatException; {:try_start_3c9 .. :try_end_448} :catch_3ae
    .catchall {:try_start_3c9 .. :try_end_448} :catchall_360

    .line 1996
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_448
    :try_start_448
    array-length v7, p2

    if-ne v7, v6, :cond_477

    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_477

    .line 1997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_45a
    .catchall {:try_start_448 .. :try_end_45a} :catchall_360

    move-result-wide v2

    .line 1999
    .restart local v2    # "ident":J
    :try_start_45b
    iget-boolean v6, p0, mUpdatesStopped:Z

    if-eqz v6, :cond_46d

    .line 2000
    const/4 v6, 0x0

    iput-boolean v6, p0, mUpdatesStopped:Z

    .line 2001
    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 2002
    const/4 v6, 0x0

    invoke-direct {p0, v6}, processValuesLocked(Z)V
    :try_end_46d
    .catchall {:try_start_45b .. :try_end_46d} :catchall_472

    .line 2005
    :cond_46d
    :try_start_46d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_329

    :catchall_472
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2008
    .end local v2    # "ident":J
    :cond_477
    const-string v6, "Dump current battery state, or:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    const-string v6, "  set [ac|usb|wireless|status|level|invalid] <value>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    const-string v6, "  unplug"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    const-string v6, "  reset"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48b
    .catchall {:try_start_46d .. :try_end_48b} :catchall_360

    goto/16 :goto_329
.end method

.method private static fileWriteInt(Ljava/lang/String;I)V
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 1637
    const/4 v2, 0x0

    .line 1638
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_40

    .line 1645
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1646
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_4d

    move-object v2, v3

    .line 1655
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3d
    return-void

    .line 1642
    :catch_3e
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_3d

    .line 1647
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/io/IOException;
    :goto_41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1650
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_3d

    .line 1651
    :catch_48
    move-exception v1

    .line 1652
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 1647
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4d
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_41
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1573
    const/4 v2, 0x0

    .line 1574
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    .line 1575
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_15
    return v4

    .line 1579
    :cond_16
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :try_start_39
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_43} :catch_50
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_5a

    .line 1589
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_43
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1590
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4d} :catch_67

    .line 1591
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_15

    .line 1584
    :catch_50
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_51
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_15

    .line 1592
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5a
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/io/IOException;
    :goto_5b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1595
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_15

    .line 1596
    :catch_62
    move-exception v1

    .line 1597
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 1592
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_67
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_5b
.end method

.method private getIconLocked(I)I
    .registers 6
    .param p1, "level"    # I

    .prologue
    const v0, 0x1080774

    const v1, 0x1080766

    .line 1520
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1533
    :cond_d
    :goto_d
    return v0

    .line 1522
    :cond_e
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    move v0, v1

    .line 1523
    goto :goto_d

    .line 1524
    :cond_17
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_25

    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_36

    .line 1526
    :cond_25
    const/4 v2, 0x7

    invoke-direct {p0, v2}, isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_d

    :cond_34
    move v0, v1

    .line 1530
    goto :goto_d

    .line 1533
    :cond_36
    const v0, 0x1080782

    goto :goto_d
.end method

.method private static isFileSupported(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1659
    const/4 v1, 0x1

    .line 1661
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 1663
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v1, 0x0

    .line 1667
    :cond_25
    return v1
.end method

.method private isPoweredLocked(I)Z
    .registers 4
    .param p1, "plugTypeSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 768
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    if-ne v1, v0, :cond_8

    .line 785
    :cond_7
    :goto_7
    return v0

    .line 771
    :cond_8
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v1, :cond_7

    .line 774
    :cond_12
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1c

    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v1, :cond_7

    .line 777
    :cond_1c
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_26

    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-nez v1, :cond_7

    .line 781
    :cond_26
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_30

    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-nez v1, :cond_7

    .line 785
    :cond_30
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private logBatteryStatsLocked()V
    .registers 12

    .prologue
    .line 1449
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1450
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_9

    .line 1484
    :cond_8
    :goto_8
    return-void

    .line 1452
    :cond_9
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 1453
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_8

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1455
    const/4 v2, 0x0

    .line 1456
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1459
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_75
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_b4
    .catchall {:try_start_20 .. :try_end_27} :catchall_f3

    .line 1460
    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_27
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_138
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_130
    .catchall {:try_start_27 .. :try_end_2c} :catchall_129

    .line 1461
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1462
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1465
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3e} :catch_13c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3e} :catch_133
    .catchall {:try_start_2c .. :try_end_3e} :catchall_12c

    .line 1472
    if-eqz v5, :cond_43

    .line 1474
    :try_start_40
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_6b

    .line 1479
    :cond_43
    :goto_43
    if-eqz v3, :cond_141

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_141

    .line 1480
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_8

    .line 1475
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_6b
    move-exception v6

    .line 1476
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1466
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_75
    move-exception v6

    .line 1467
    .local v6, "e":Landroid/os/RemoteException;
    :goto_76
    :try_start_76
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_f3

    .line 1472
    if-eqz v4, :cond_83

    .line 1474
    :try_start_80
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_aa

    .line 1479
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_83
    :goto_83
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1480
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1475
    .restart local v6    # "e":Landroid/os/RemoteException;
    :catch_aa
    move-exception v6

    .line 1476
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 1468
    .end local v6    # "e":Ljava/io/IOException;
    :catch_b4
    move-exception v6

    .line 1469
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_b5
    :try_start_b5
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_f3

    .line 1472
    if-eqz v4, :cond_c2

    .line 1474
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_e9

    .line 1479
    :cond_c2
    :goto_c2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1480
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1475
    :catch_e9
    move-exception v6

    .line 1476
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 1472
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_f3
    move-exception v7

    :goto_f4
    if-eqz v4, :cond_f9

    .line 1474
    :try_start_f6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_11f

    .line 1479
    :cond_f9
    :goto_f9
    if-eqz v2, :cond_11e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_11e

    .line 1480
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11e
    throw v7

    .line 1475
    :catch_11f
    move-exception v6

    .line 1476
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 1472
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catchall_129
    move-exception v7

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_f4

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_12c
    move-exception v7

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_f4

    .line 1468
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_130
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_b5

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_133
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_b5

    .line 1466
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_138
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_76

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_13c
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_76

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_141
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_8
.end method

.method private logOutlierLocked(J)V
    .registers 14
    .param p1, "duration"    # J

    .prologue
    .line 1488
    iget-boolean v7, p0, mActivityManagerReady:Z

    if-nez v7, :cond_5

    .line 1517
    :cond_4
    :goto_4
    return-void

    .line 1492
    :cond_5
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1493
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1495
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1498
    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 1500
    :try_start_1b
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1501
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1502
    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    if-gtz v7, :cond_4

    iget v7, p0, mDischargeStartLevel:I

    iget-object v8, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_4

    .line 1505
    invoke-direct {p0}, logBatteryStatsLocked()V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_33} :catch_34

    goto :goto_4

    .line 1511
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :catch_34
    move-exception v6

    .line 1512
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private processValuesLocked(Z)V
    .registers 12
    .param p1, "force"    # Z

    .prologue
    .line 938
    const/4 v7, 0x0

    .line 939
    .local v7, "logOutlier":Z
    const-wide/16 v8, 0x0

    .line 942
    .local v8, "dischargeDuration":J
    sget-boolean v0, USE_FAKE_BATTERY:Z

    if-eqz v0, :cond_d

    .line 943
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 946
    :cond_d
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, mCriticalBatteryLevel:I

    if-gt v0, v1, :cond_384

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, mBatteryLevelCritical:Z

    .line 947
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_387

    .line 948
    const/4 v0, 0x1

    iput v0, p0, mPlugType:I

    .line 965
    :goto_21
    iget v0, p0, mPlugType:I

    if-eqz v0, :cond_3b8

    .line 966
    const/4 v0, 0x0

    iput v0, p0, mSecPlugTypeSummary:I

    .line 967
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_34

    .line 968
    iget v0, p0, mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mSecPlugTypeSummary:I

    .line 970
    :cond_34
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_40

    .line 971
    iget v0, p0, mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mSecPlugTypeSummary:I

    .line 973
    :cond_40
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_4c

    .line 974
    iget v0, p0, mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, mSecPlugTypeSummary:I

    .line 976
    :cond_4c
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_58

    .line 977
    iget v0, p0, mSecPlugTypeSummary:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mSecPlugTypeSummary:I

    .line 1009
    :cond_58
    :goto_58
    :try_start_58
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v3, p0, mPlugType:I

    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v5, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget-object v6, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_73} :catch_462

    .line 1016
    :goto_73
    invoke-direct {p0}, shutdownIfNoPowerLocked()V

    .line 1019
    if-nez p1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, mLastBatteryStatus:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, mLastBatteryHealth:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, mLastBatteryPresent:Z

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, mLastBatteryLevel:I

    if-ne v0, v1, :cond_10a

    iget v0, p0, mPlugType:I

    iget v1, p0, mLastPlugType:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v1, p0, mLastBatteryVoltage:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, mLastBatteryTemperature:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iget v1, p0, mLastMaxChargingCurrent:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryOnline:I

    iget v1, p0, mLastBatteryOnline:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    iget v1, p0, mLastBatteryCurrentAvg:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeType:I

    iget v1, p0, mLastBatteryChargeType:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    iget-boolean v1, p0, mLastBatteryPowerSharingOnline:Z

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    iget-boolean v1, p0, mLastBatteryHighVoltageCharger:Z

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    iget v1, p0, mLastBatteryCurrentNow:I

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    iget-boolean v1, p0, mLastchargerPogoOnline:Z

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    iget-boolean v1, p0, mLastBatterySWSelfDischarging:Z

    if-ne v0, v1, :cond_10a

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batterySecEvent:I

    iget v1, p0, mLastBatterySecEvent:I

    if-ne v0, v1, :cond_10a

    iget v0, p0, mSecPlugTypeSummary:I

    iget v1, p0, mLastSecPlugTypeSummary:I

    if-ne v0, v1, :cond_10a

    iget v0, p0, mInvalidCharger:I

    iget v1, p0, mLastInvalidCharger:I

    if-eq v0, v1, :cond_34f

    .line 1041
    :cond_10a
    iget v0, p0, mPlugType:I

    iget v1, p0, mLastPlugType:I

    if-eq v0, v1, :cond_15b

    .line 1042
    iget v0, p0, mLastPlugType:I

    if-nez v0, :cond_3bd

    .line 1047
    iget-wide v0, p0, mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15b

    iget v0, p0, mDischargeStartLevel:I

    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-eq v0, v1, :cond_15b

    .line 1048
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 1049
    const/4 v7, 0x1

    .line 1050
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1053
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mDischargeStartTime:J

    .line 1054
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1062
    :cond_15b
    :goto_15b
    iget v0, p0, mDischargeStartLevel:I

    if-gtz v0, :cond_16b

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-lez v0, :cond_16b

    .line 1063
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, mDischargeStartLevel:I

    .line 1066
    :cond_16b
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v0, v0

    iget-wide v2, p0, mLastSavedBatteryLevel:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3cf

    .line 1067
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v0, v0

    iput-wide v0, p0, mLastSavedBatteryLevel:J

    .line 1072
    :cond_17d
    :goto_17d
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, mLastBatteryStatus:I

    if-ne v0, v1, :cond_19b

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, mLastBatteryHealth:I

    if-ne v0, v1, :cond_19b

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, mLastBatteryPresent:Z

    if-ne v0, v1, :cond_19b

    iget v0, p0, mPlugType:I

    iget v1, p0, mLastPlugType:I

    if-eq v0, v1, :cond_1d7

    .line 1076
    :cond_19b
    const/16 v1, 0xaa3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_3e6

    const/4 v0, 0x1

    :goto_1be
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1080
    :cond_1d7
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, mLastBatteryLevel:I

    if-eq v0, v1, :cond_217

    .line 1083
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1086
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_217

    .line 1087
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1091
    :cond_217
    iget-boolean v0, p0, mBatteryLevelCritical:Z

    if-eqz v0, :cond_22c

    iget-boolean v0, p0, mLastBatteryLevelCritical:Z

    if-nez v0, :cond_22c

    iget v0, p0, mPlugType:I

    if-nez v0, :cond_22c

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 1096
    const/4 v7, 0x1

    .line 1099
    :cond_22c
    iget-boolean v0, p0, mBatteryLevelLow:Z

    if-nez v0, :cond_3e9

    .line 1101
    iget v0, p0, mPlugType:I

    if-nez v0, :cond_23f

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_23f

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, mBatteryLevelLow:Z

    .line 1119
    :cond_23f
    :goto_23f
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    int-to-long v0, v0

    iget-wide v2, p0, mBatteryMaxTemp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_258

    .line 1120
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    int-to-long v0, v0

    iput-wide v0, p0, mBatteryMaxTemp:J

    .line 1121
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1123
    :cond_258
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    int-to-long v0, v0

    iget-wide v2, p0, mBatteryMaxCurrent:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_271

    .line 1124
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    int-to-long v0, v0

    iput-wide v0, p0, mBatteryMaxCurrent:J

    .line 1125
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1130
    :cond_271
    sget-boolean v0, FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    if-eqz v0, :cond_29a

    .line 1131
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryOnline:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_29a

    .line 1132
    iget-boolean v0, p0, mWasUsedWirelessFastChargerPreviously:Z

    if-nez v0, :cond_29a

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, mWasUsedWirelessFastChargerPreviously:Z

    .line 1135
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable wireless charger menu in setting"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_wireless_charger_menu"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1146
    :cond_29a
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$TimeMeasurement;->resetTime()V

    .line 1148
    invoke-direct {p0}, sendIntentLocked()V

    .line 1151
    invoke-direct {p0}, sendSecEventIntentLocked()V

    .line 1157
    iget v0, p0, mPlugType:I

    if-eqz v0, :cond_40e

    iget v0, p0, mLastPlugType:I

    if-eqz v0, :cond_2b2

    iget v0, p0, mLastPlugType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_40e

    .line 1159
    :cond_2b2
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    :cond_2bc
    :goto_2bc
    invoke-direct {p0}, shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_427

    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, mSentLowBatteryBroadcast:Z

    .line 1182
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1203
    :cond_2cf
    :goto_2cf
    iget-object v0, p0, mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1206
    if-eqz v7, :cond_2df

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2df

    .line 1207
    invoke-direct {p0, v8, v9}, logOutlierLocked(J)V

    .line 1210
    :cond_2df
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, mLastBatteryStatus:I

    .line 1211
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, mLastBatteryHealth:I

    .line 1212
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, mLastBatteryPresent:Z

    .line 1213
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, mLastBatteryLevel:I

    .line 1214
    iget v0, p0, mPlugType:I

    iput v0, p0, mLastPlugType:I

    .line 1215
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, mLastBatteryVoltage:I

    .line 1216
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, mLastBatteryTemperature:I

    .line 1217
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iput v0, p0, mLastMaxChargingCurrent:I

    .line 1218
    iget-boolean v0, p0, mBatteryLevelCritical:Z

    iput-boolean v0, p0, mLastBatteryLevelCritical:Z

    .line 1219
    iget v0, p0, mInvalidCharger:I

    iput v0, p0, mLastInvalidCharger:I

    .line 1221
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryOnline:I

    iput v0, p0, mLastBatteryOnline:I

    .line 1222
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    iput v0, p0, mLastBatteryCurrentAvg:I

    .line 1223
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeType:I

    iput v0, p0, mLastBatteryChargeType:I

    .line 1224
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    iput-boolean v0, p0, mLastBatteryPowerSharingOnline:Z

    .line 1225
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    iput-boolean v0, p0, mLastBatteryHighVoltageCharger:Z

    .line 1226
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    iput v0, p0, mLastBatteryCurrentNow:I

    .line 1227
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    iput-boolean v0, p0, mLastchargerPogoOnline:Z

    .line 1228
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    iput-boolean v0, p0, mLastBatterySWSelfDischarging:Z

    .line 1229
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batterySecEvent:I

    iput v0, p0, mLastBatterySecEvent:I

    .line 1230
    iget v0, p0, mSecPlugTypeSummary:I

    iput v0, p0, mLastSecPlugTypeSummary:I

    .line 1235
    :cond_34f
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iget-boolean v1, p0, mLastWirelessChargingStatus:Z

    if-eq v0, v1, :cond_383

    .line 1237
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_440

    .line 1238
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "notify wireless on"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, writeToFile(Ljava/lang/String;JZ)Z

    .line 1240
    const-string v0, "/sys/class/sec/switch/wireless"

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, writeToFile(Ljava/lang/String;JZ)Z

    .line 1241
    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "set_wirelesscharger_mode,1"

    invoke-direct {p0, v0, v1}, fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1248
    :goto_37d
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, mLastWirelessChargingStatus:Z

    .line 1251
    :cond_383
    return-void

    .line 946
    :cond_384
    const/4 v0, 0x0

    goto/16 :goto_16

    .line 950
    :cond_387
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_392

    .line 951
    const/4 v0, 0x4

    iput v0, p0, mPlugType:I

    goto/16 :goto_21

    .line 953
    :cond_392
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_39d

    .line 954
    const/4 v0, 0x2

    iput v0, p0, mPlugType:I

    goto/16 :goto_21

    .line 955
    :cond_39d
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3a8

    .line 956
    const/4 v0, 0x4

    iput v0, p0, mPlugType:I

    goto/16 :goto_21

    .line 958
    :cond_3a8
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v0, :cond_3b3

    .line 959
    const/4 v0, 0x1

    iput v0, p0, mPlugType:I

    goto/16 :goto_21

    .line 962
    :cond_3b3
    const/4 v0, 0x0

    iput v0, p0, mPlugType:I

    goto/16 :goto_21

    .line 980
    :cond_3b8
    const/4 v0, 0x0

    iput v0, p0, mSecPlugTypeSummary:I

    goto/16 :goto_58

    .line 1056
    :cond_3bd
    iget v0, p0, mPlugType:I

    if-nez v0, :cond_15b

    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mDischargeStartTime:J

    .line 1059
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, mDischargeStartLevel:I

    goto/16 :goto_15b

    .line 1068
    :cond_3cf
    iget-wide v0, p0, mLastSavedBatteryLevel:J

    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17d

    .line 1069
    iget-object v0, p0, mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, p0, mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_17d

    .line 1076
    :cond_3e6
    const/4 v0, 0x0

    goto/16 :goto_1be

    .line 1107
    :cond_3e9
    iget v0, p0, mPlugType:I

    if-eqz v0, :cond_3f2

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, mBatteryLevelLow:Z

    goto/16 :goto_23f

    .line 1109
    :cond_3f2
    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_3ff

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, mBatteryLevelLow:Z

    goto/16 :goto_23f

    .line 1111
    :cond_3ff
    if-eqz p1, :cond_23f

    iget-object v0, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, mLowBatteryWarningLevel:I

    if-lt v0, v1, :cond_23f

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, mBatteryLevelLow:Z

    goto/16 :goto_23f

    .line 1168
    :cond_40e
    iget v0, p0, mPlugType:I

    if-nez v0, :cond_2bc

    iget v0, p0, mLastPlugType:I

    if-nez v0, :cond_41b

    iget v0, p0, mLastPlugType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2bc

    .line 1170
    :cond_41b
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2bc

    .line 1190
    :cond_427
    iget-boolean v0, p0, mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_2cf

    iget v0, p0, mLastBatteryLevel:I

    iget v1, p0, mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_2cf

    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, mSentLowBatteryBroadcast:Z

    .line 1192
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$9;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2cf

    .line 1243
    :cond_440
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "notify wireless off"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, writeToFile(Ljava/lang/String;JZ)Z

    .line 1245
    const-string v0, "/sys/class/sec/switch/wireless"

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, writeToFile(Ljava/lang/String;JZ)Z

    .line 1246
    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "set_wirelesscharger_mode,0"

    invoke-direct {p0, v0, v1}, fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_37d

    .line 1012
    :catch_462
    move-exception v0

    goto/16 :goto_73
.end method

.method private readBatteryAsocFromEfsLocked()J
    .registers 11

    .prologue
    const-wide/16 v4, 0x64

    const-wide/16 v8, 0x0

    const-wide/16 v2, -0x1

    .line 1788
    const-string v6, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v6}, readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .line 1789
    .local v0, "asoc":J
    cmp-long v6, v0, v8

    if-gez v6, :cond_20

    .line 1790
    const-string v6, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {p0, v6}, readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_21

    .line 1791
    const-string v4, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v4, v2, v3}, saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .line 1798
    .end local v0    # "asoc":J
    :cond_20
    :goto_20
    return-wide v0

    .line 1794
    .restart local v0    # "asoc":J
    :cond_21
    const-string v2, "/efs/FactoryApp/asoc"

    invoke-direct {p0, v2, v4, v5}, saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v4

    .line 1795
    goto :goto_20
.end method

.method private readBatteryInfo(Ljava/lang/String;)J
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1824
    if-nez p1, :cond_5

    .line 1825
    const-wide/16 v2, -0x1

    .line 1838
    :goto_4
    return-wide v2

    .line 1827
    :cond_5
    invoke-direct {p0, p1}, readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1828
    .local v1, "strData":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 1829
    .local v2, "ret":J
    if-nez v1, :cond_2c

    .line 1830
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : data is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1833
    :cond_2c
    :try_start_2c
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result-wide v2

    goto :goto_4

    .line 1834
    :catch_31
    move-exception v0

    .line 1835
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[BatteryInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : data is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private readBatteryMaxCurrentFromEfsLocked()J
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 1759
    const-string v4, "/efs/FactoryApp/max_current"

    invoke-direct {p0, v4}, readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .line 1760
    .local v0, "maxCurrent":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_14

    .line 1761
    const-string v4, "/efs/FactoryApp/max_current"

    invoke-direct {p0, v4, v2, v3}, saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .line 1764
    .end local v0    # "maxCurrent":J
    :cond_14
    return-wide v0
.end method

.method private readBatteryMaxTempFromEfsLocked()J
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 1730
    const-string v4, "/efs/FactoryApp/max_temp"

    invoke-direct {p0, v4}, readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .line 1731
    .local v0, "maxTemp":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_14

    .line 1732
    const-string v4, "/efs/FactoryApp/max_temp"

    invoke-direct {p0, v4, v2, v3}, saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .line 1735
    .end local v0    # "maxTemp":J
    :cond_14
    return-wide v0
.end method

.method private readBatteryUsageFromEfsLocked()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x1

    .line 1690
    const-string v4, "/efs/FactoryApp/batt_discharge_level"

    invoke-direct {p0, v4}, readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    .line 1691
    .local v0, "batteryUsage":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_14

    .line 1692
    const-string v4, "/efs/FactoryApp/batt_discharge_level"

    invoke-direct {p0, v4, v2, v3}, saveBatteryInfo(Ljava/lang/String;J)I

    move-wide v0, v2

    .line 1695
    .end local v0    # "batteryUsage":J
    :cond_14
    return-wide v0
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1842
    const/4 v4, 0x0

    .line 1843
    .local v4, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1845
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_3c

    .line 1846
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_3a

    .line 1847
    :try_start_11
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1848
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 1849
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[BatteryInfo] readFromFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3a} :catch_53

    :cond_3a
    move-object v2, v3

    .line 1861
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_3b
    :goto_3b
    return-object v4

    .line 1851
    :catch_3c
    move-exception v0

    .line 1852
    .local v0, "e":Ljava/io/IOException;
    :goto_3d
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] IOException in readFromFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    if-eqz v2, :cond_3b

    .line 1855
    :try_start_46
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3b

    .line 1857
    :catch_4a
    move-exception v1

    .line 1858
    .local v1, "err":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] Exception in readFromFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1851
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_53
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3d
.end method

.method private registerContentObserver(Landroid/content/ContentResolver;)V
    .registers 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 713
    const-string/jumbo v1, "led_indicator_charing"

    invoke-static {p1, v1, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_118

    move v1, v2

    :goto_e
    iput-boolean v1, p0, mLedChargingSettingsEnable:Z

    .line 714
    const-string/jumbo v1, "led_indicator_low_battery"

    invoke-static {p1, v1, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_11b

    move v1, v2

    :goto_1a
    iput-boolean v1, p0, mLedLowBatterySettingsEnable:Z

    .line 715
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Led Charging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLedChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Led Low Battery Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLedLowBatterySettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string/jumbo v1, "led_indicator_charing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 718
    const-string/jumbo v1, "led_indicator_low_battery"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 721
    const-string v1, "adaptive_fast_charging"

    invoke-static {p1, v1, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_11e

    move v1, v2

    :goto_71
    iput-boolean v1, p0, mAdaptiveFastChargingSettingsEnable:Z

    .line 722
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@AdaptiveFastCharging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, "/sys/class/sec/switch/afc_disable"

    invoke-direct {p0, v1}, readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "sys_afc_value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    iget-boolean v1, p0, mAdaptiveFastChargingSettingsEnable:Z

    if-eq v1, v2, :cond_ab

    :cond_9f
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-boolean v1, p0, mAdaptiveFastChargingSettingsEnable:Z

    if-nez v1, :cond_ca

    .line 726
    :cond_ab
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ need to change AdaptiveFastCharging Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-boolean v1, p0, mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, v1}, setAdaptiveFastCharging(Z)Z

    .line 729
    :cond_ca
    const-string v1, "adaptive_fast_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-virtual {p1, v1, v3, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 733
    const-string/jumbo v1, "show_wireless_charger_menu"

    invoke-static {p1, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_121

    move v1, v2

    :goto_df
    iput-boolean v1, p0, mWasUsedWirelessFastChargerPreviously:Z

    .line 735
    const-string/jumbo v1, "wireless_fast_charging"

    invoke-static {p1, v1, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_123

    :goto_ea
    iput-boolean v2, p0, mWirelessFastChargingSettingsEnable:Z

    .line 736
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@WirelessFastCharging Settings = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-boolean v1, p0, mWirelessFastChargingSettingsEnable:Z

    invoke-direct {p0, v1}, setWirelessFastCharging(Z)V

    .line 740
    const-string/jumbo v1, "wireless_fast_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-virtual {p1, v1, v3, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 742
    return-void

    .end local v0    # "sys_afc_value":Ljava/lang/String;
    :cond_118
    move v1, v3

    .line 713
    goto/16 :goto_e

    :cond_11b
    move v1, v3

    .line 714
    goto/16 :goto_1a

    :cond_11e
    move v1, v3

    .line 721
    goto/16 :goto_71

    .restart local v0    # "sys_afc_value":Ljava/lang/String;
    :cond_121
    move v1, v3

    .line 733
    goto :goto_df

    :cond_123
    move v2, v3

    .line 735
    goto :goto_ea
.end method

.method private saveBatteryInfo(Ljava/lang/String;J)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # J

    .prologue
    .line 1865
    invoke-direct {p0, p1, p2, p3}, writeToFile(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private sendIntentLocked()V
    .registers 15

    .prologue
    const-wide/16 v12, 0xa

    const/16 v11, 0x64

    const/4 v10, 0x0

    .line 1255
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x60000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1259
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v6, "pogoIntent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1262
    const/4 v7, 0x0

    .line 1263
    .local v7, "setPogoCondition":I
    iget v5, p0, mPogoDockIntent:I

    .line 1264
    .local v5, "oldPogoIntentState":I
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1265
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1266
    .local v4, "kids_home_mode":I
    const/4 v1, 0x0

    .line 1268
    .local v1, "device_provisioned":I
    iget-object v8, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    if-eqz v8, :cond_2ab

    .line 1269
    iget-object v8, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v8, :cond_40

    iget-object v8, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v8, :cond_40

    iget-object v8, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v8, v8, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v8, :cond_2a8

    .line 1270
    :cond_40
    const/4 v7, 0x2

    .line 1275
    :goto_41
    const/4 v8, 0x1

    iput v8, p0, mPogoDockIntent:I

    .line 1281
    :goto_44
    iget v8, p0, mPogoDockIntent:I

    if-eq v5, v8, :cond_75

    .line 1282
    iget-boolean v8, p0, mActivityManagerReady:Z

    if-eqz v8, :cond_60

    .line 1283
    const-string/jumbo v8, "device_provisioned"

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1284
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "kids_home_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1287
    :cond_60
    if-eqz v1, :cond_2af

    if-nez v4, :cond_2af

    .line 1288
    const-string v8, "android.intent.extra.DOCK_STATE"

    iget v9, p0, mPogoDockIntent:I

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1289
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$10;

    invoke-direct {v9, p0, v6}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1304
    :cond_75
    :goto_75
    iget-object v8, p0, mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    const-string v9, "BatteryService : SendIntentLocked() - pogo"

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/server/BatteryService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1306
    iget-object v8, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v8}, getIconLocked(I)I

    move-result v2

    .line 1308
    .local v2, "icon":I
    const-string/jumbo v8, "status"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    const-string/jumbo v8, "health"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1310
    const-string/jumbo v8, "present"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1311
    const-string/jumbo v8, "level"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1312
    const-string/jumbo v8, "scale"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1313
    const-string/jumbo v8, "icon-small"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1314
    const-string/jumbo v8, "plugged"

    iget v9, p0, mPlugType:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1315
    const-string/jumbo v8, "voltage"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1316
    const-string/jumbo v8, "temperature"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1317
    const-string/jumbo v8, "technology"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v9, v9, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string/jumbo v8, "invalid_charger"

    iget v9, p0, mInvalidCharger:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1319
    const-string/jumbo v8, "max_charging_current"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
    const-string/jumbo v8, "online"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1322
    const-string/jumbo v8, "current_avg"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1323
    const-string v8, "charge_type"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    const-string/jumbo v8, "power_sharing"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1325
    const-string/jumbo v8, "hv_charger"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1326
    const-string v8, "capacity"

    iget v9, p0, mBatteryCapacity:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1327
    const-string/jumbo v8, "current_now"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    const-string/jumbo v8, "pogo_plugged"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1331
    const-string/jumbo v8, "self_discharging"

    iget-object v9, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v9, v9, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1335
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scale:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", health:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", present:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", voltage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", temperature: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", technology: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, v10, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", AC powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", USB powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", POGO powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Wireless powered:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", icon:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", invalid charger:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mInvalidCharger:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", maxChargingCurrent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "online:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryOnline:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current avg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", charge type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryChargeType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", power sharing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", high voltage charger:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", capacity:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mBatteryCapacity:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", batterySWSelfDischarging:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v10, v10, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current_now:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v10, v10, Landroid/os/BatteryProperties;->batteryCurrentNow:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$11;

    invoke-direct {v9, p0, v3}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    iget-object v8, p0, mTimeMeasurement:Lcom/android/server/BatteryService$TimeMeasurement;

    const-string v9, "BatteryService : sendIntentLocked()"

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/server/BatteryService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 1373
    return-void

    .line 1273
    .end local v2    # "icon":I
    :cond_2a8
    const/4 v7, 0x1

    goto/16 :goto_41

    .line 1277
    :cond_2ab
    iput v10, p0, mPogoDockIntent:I

    goto/16 :goto_44

    .line 1299
    :cond_2af
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "device_provisioned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "kids_home_mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75
.end method

.method private sendOTGIntentLocked()V
    .registers 4

    .prologue
    .line 1421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$14;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1430
    return-void
.end method

.method private sendSecEventIntentLocked()V
    .registers 6

    .prologue
    const/high16 v4, 0x24000000

    .line 1377
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batterySecEvent:I

    iget v3, p0, mLastBatterySecEvent:I

    if-ne v2, v3, :cond_11

    iget v2, p0, mSecPlugTypeSummary:I

    iget v3, p0, mLastSecPlugTypeSummary:I

    if-ne v2, v3, :cond_11

    .line 1416
    :cond_10
    :goto_10
    return-void

    .line 1384
    :cond_11
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batterySecEvent:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5d

    const/4 v0, 0x1

    .line 1386
    .local v0, "batteryWaterInConnector":Z
    :goto_1a
    iget-boolean v2, p0, mLastSecEventWaterInConnector:Z

    if-eq v2, v0, :cond_3a

    .line 1387
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1390
    const-string/jumbo v2, "water"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1392
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$12;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1399
    iput-boolean v0, p0, mLastSecEventWaterInConnector:Z

    .line 1402
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3a
    iget v2, p0, mSecPlugTypeSummary:I

    iget v3, p0, mLastSecPlugTypeSummary:I

    if-eq v2, v3, :cond_10

    .line 1403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1406
    const-string/jumbo v2, "sec_plug_type"

    iget v3, p0, mSecPlugTypeSummary:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1408
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$13;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 1384
    .end local v0    # "batteryWaterInConnector":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private sendWirelessPowerSharingIntentLocked(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 1435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.power.action.RESPONSE_WIRELESS_POWER_SHARING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "power_sharing_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1438
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$15;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1445
    return-void
.end method

.method private setWirelessFastCharging(Z)V
    .registers 4
    .param p1, "isWirelessFastChargingSettingsEnable"    # Z

    .prologue
    .line 815
    if-eqz p1, :cond_9

    .line 816
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    const/4 v1, 0x2

    invoke-static {v0, v1}, fileWriteInt(Ljava/lang/String;I)V

    .line 821
    :goto_8
    return-void

    .line 819
    :cond_9
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    const/4 v1, 0x1

    invoke-static {v0, v1}, fileWriteInt(Ljava/lang/String;I)V

    goto :goto_8
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 825
    iget v4, p0, mPlugType:I

    if-eqz v4, :cond_25

    move v1, v2

    .line 826
    .local v1, "plugged":Z
    :goto_7
    iget v4, p0, mLastPlugType:I

    if-eqz v4, :cond_27

    move v0, v2

    .line 834
    .local v0, "oldPlugged":Z
    :goto_c
    if-nez v1, :cond_29

    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v4, v2, :cond_29

    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v5, p0, mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_29

    if-nez v0, :cond_24

    iget v4, p0, mLastBatteryLevel:I

    iget v5, p0, mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_29

    :cond_24
    :goto_24
    return v2

    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_25
    move v1, v3

    .line 825
    goto :goto_7

    .restart local v1    # "plugged":Z
    :cond_27
    move v0, v3

    .line 826
    goto :goto_c

    .restart local v0    # "oldPlugged":Z
    :cond_29
    move v2, v3

    .line 834
    goto :goto_24
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 5

    .prologue
    .line 845
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v2, :cond_17

    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_17

    .line 846
    iget-object v2, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    if-ltz v2, :cond_18

    const/4 v2, 0x7

    invoke-direct {p0, v2}, isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 892
    :cond_17
    :goto_17
    return-void

    .line 851
    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 852
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 853
    .local v0, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 854
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Emergency mode is on so doesn\'t shutdown"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 860
    .end local v0    # "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_38
    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 861
    const-string/jumbo v2, "persist.sys.shutdown"

    const-string v3, "LBSD"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_4b
    const-string v2, ""

    if-eqz v2, :cond_64

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 868
    new-instance v1, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;

    invoke-direct {v1}, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;-><init>()V

    .line 869
    .local v1, "hw0E":Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;
    const/4 v2, 0x1

    iput-byte v2, v1, Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;->ucBatteryEvent:B

    .line 870
    iget-object v2, p0, mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    invoke-virtual {v2, v1}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 874
    .end local v1    # "hw0E":Lcom/carrieriq/iqagent/client/metrics/hw/HW0E;
    :cond_64
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17
.end method

.method private shutdownIfOverTempLocked()V
    .registers 4

    .prologue
    .line 898
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v2, p0, mShutdownBatteryTemperature:I

    if-le v1, v2, :cond_16

    .line 900
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 902
    .local v0, "overTemp":I
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$5;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 918
    .end local v0    # "overTemp":I
    :cond_16
    return-void
.end method

.method private simulateValuesLocked()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 2314
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    if-nez v1, :cond_8

    .line 2403
    :cond_7
    :goto_7
    return-void

    .line 2319
    :cond_8
    const-string/jumbo v1, "sys.battery.simulation"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2320
    .local v0, "simVal":I
    if-eq v0, v5, :cond_7

    .line 2324
    const-string/jumbo v1, "sys.battery.level"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2325
    if-eq v0, v5, :cond_1e

    .line 2326
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 2329
    :cond_1e
    const-string/jumbo v1, "sys.battery.ac"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2330
    if-eq v0, v5, :cond_2e

    .line 2331
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_fa

    move v1, v2

    :goto_2c
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 2334
    :cond_2e
    const-string/jumbo v1, "sys.battery.wireless"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2335
    if-eq v0, v5, :cond_3e

    .line 2336
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_fd

    move v1, v2

    :goto_3c
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 2339
    :cond_3e
    const-string/jumbo v1, "sys.battery.usb"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2340
    if-eq v0, v5, :cond_4e

    .line 2341
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_100

    move v1, v2

    :goto_4c
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 2344
    :cond_4e
    const-string/jumbo v1, "sys.battery.pogo"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2345
    if-eq v0, v5, :cond_5e

    .line 2346
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_103

    move v1, v2

    :goto_5c
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->chargerPogoOnline:Z

    .line 2349
    :cond_5e
    const-string/jumbo v1, "sys.battery.status"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2350
    if-eq v0, v5, :cond_6b

    .line 2351
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 2354
    :cond_6b
    const-string/jumbo v1, "sys.battery.health"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2355
    if-eq v0, v5, :cond_78

    .line 2356
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 2359
    :cond_78
    const-string/jumbo v1, "sys.battery.present"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2360
    if-eq v0, v5, :cond_88

    .line 2361
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_106

    move v1, v2

    :goto_86
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 2364
    :cond_88
    const-string/jumbo v1, "sys.battery.voltage"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2365
    if-eq v0, v5, :cond_95

    .line 2366
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 2369
    :cond_95
    const-string/jumbo v1, "sys.battery.temperature"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2370
    if-eq v0, v5, :cond_a2

    .line 2371
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 2374
    :cond_a2
    const-string/jumbo v1, "sys.battery.online"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2375
    if-eq v0, v5, :cond_af

    .line 2376
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryOnline:I

    .line 2379
    :cond_af
    const-string/jumbo v1, "sys.battery.currentAvg"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2380
    if-eq v0, v5, :cond_bc

    .line 2381
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryCurrentAvg:I

    .line 2384
    :cond_bc
    const-string/jumbo v1, "sys.battery.chargerType"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2385
    if-eq v0, v5, :cond_c9

    .line 2386
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    iput v0, v1, Landroid/os/BatteryProperties;->batteryChargeType:I

    .line 2389
    :cond_c9
    const-string/jumbo v1, "sys.battery.powerSharing"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2390
    if-eq v0, v5, :cond_d9

    .line 2391
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_109

    move v1, v2

    :goto_d7
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->batteryPowerSharingOnline:Z

    .line 2394
    :cond_d9
    const-string/jumbo v1, "sys.battery.AFC"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2395
    if-eq v0, v5, :cond_e9

    .line 2396
    iget-object v4, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_10b

    move v1, v2

    :goto_e7
    iput-boolean v1, v4, Landroid/os/BatteryProperties;->batteryHighVoltageCharger:Z

    .line 2399
    :cond_e9
    const-string/jumbo v1, "sys.battery.selfDischg"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2400
    if-eq v0, v5, :cond_7

    .line 2401
    iget-object v1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    if-eqz v0, :cond_10d

    :goto_f6
    iput-boolean v2, v1, Landroid/os/BatteryProperties;->batterySWSelfDischarging:Z

    goto/16 :goto_7

    :cond_fa
    move v1, v3

    .line 2331
    goto/16 :goto_2c

    :cond_fd
    move v1, v3

    .line 2336
    goto/16 :goto_3c

    :cond_100
    move v1, v3

    .line 2341
    goto/16 :goto_4c

    :cond_103
    move v1, v3

    .line 2346
    goto/16 :goto_5c

    :cond_106
    move v1, v3

    .line 2361
    goto/16 :goto_86

    :cond_109
    move v1, v3

    .line 2391
    goto :goto_d7

    :cond_10b
    move v1, v3

    .line 2396
    goto :goto_e7

    :cond_10d
    move v2, v3

    .line 2401
    goto :goto_f6
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .registers 4
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    .line 921
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_3
    iget-boolean v0, p0, mUpdatesStopped:Z

    if-nez v0, :cond_12

    .line 923
    iput-object p1, p0, mBatteryProps:Landroid/os/BatteryProperties;

    .line 926
    invoke-direct {p0}, simulateValuesLocked()V

    .line 930
    const/4 v0, 0x0

    invoke-direct {p0, v0}, processValuesLocked(Z)V

    .line 934
    :goto_10
    monitor-exit v1

    .line 935
    return-void

    .line 932
    :cond_12
    iget-object v0, p0, mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v0, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    goto :goto_10

    .line 934
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 6

    .prologue
    .line 746
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 747
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 756
    .local v0, "defWarnLevel":I
    iput v0, p0, mLowBatteryWarningLevel:I

    .line 757
    iget v2, p0, mLowBatteryWarningLevel:I

    iget v3, p0, mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1f

    .line 758
    iget v2, p0, mCriticalBatteryLevel:I

    iput v2, p0, mLowBatteryWarningLevel:I

    .line 760
    :cond_1f
    iget v2, p0, mLowBatteryWarningLevel:I

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, mLowBatteryCloseWarningLevel:I

    .line 762
    const/4 v2, 0x1

    invoke-direct {p0, v2}, processValuesLocked(Z)V

    .line 763
    return-void
.end method

.method private writeToFile(Ljava/lang/String;J)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # J

    .prologue
    .line 1869
    const/4 v3, 0x0

    .line 1871
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_5f

    .line 1872
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    if-eqz v4, :cond_5c

    .line 1873
    const-wide/16 v6, 0x0

    :try_start_12
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1874
    const-string/jumbo v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1875
    .local v1, "eol":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 1876
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[BatteryInfo] writeToFile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_59} :catch_76

    .line 1878
    const/4 v5, 0x0

    move-object v3, v4

    .line 1890
    .end local v1    # "eol":Ljava/lang/String;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :goto_5b
    return v5

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_5c
    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_5d
    :goto_5d
    const/4 v5, -0x1

    goto :goto_5b

    .line 1880
    :catch_5f
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/io/IOException;
    :goto_60
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] IOException in writeToFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    if-eqz v3, :cond_5d

    .line 1884
    :try_start_69
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_5d

    .line 1886
    :catch_6d
    move-exception v2

    .line 1887
    .local v2, "err":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "!@[BatteryInfo] Exception in writeToFile"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1880
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_76
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_60
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .prologue
    .line 627
    const/16 v2, 0x226

    if-ne p1, v2, :cond_36

    .line 628
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "onBootPhase: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 632
    const/4 v2, 0x1

    :try_start_10
    iput-boolean v2, p0, mActivityManagerReady:Z

    .line 634
    new-instance v0, Lcom/android/server/BatteryService$2;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 642
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 643
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 646
    invoke-direct {p0}, updateBatteryWarningLevelLocked()V

    .line 648
    invoke-direct {p0, v1}, registerContentObserver(Landroid/content/ContentResolver;)V

    .line 650
    monitor-exit v3

    .line 672
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_32
    :goto_32
    return-void

    .line 650
    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_33

    throw v2

    .line 653
    :cond_36
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_32

    .line 655
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$3;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_32
.end method

.method public onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 611
    const-string v1, "batteryproperties"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 612
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    iput-object v1, p0, mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 615
    :try_start_d
    iget-object v1, p0, mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    new-instance v2, Lcom/android/server/BatteryService$BatteryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-interface {v1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_34

    .line 620
    :goto_18
    new-instance v1, Lcom/android/server/BatteryService$NativeDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/server/BatteryService$NativeDeathRecipient;-><init>(Lcom/android/server/BatteryService;Landroid/os/IBinder;)V

    iput-object v1, p0, mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;

    .line 621
    const-string v1, "battery"

    new-instance v2, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 622
    const-class v1, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v1, v2}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 623
    return-void

    .line 616
    :catch_34
    move-exception v1

    goto :goto_18
.end method

.method setAdaptiveFastCharging(Z)Z
    .registers 8
    .param p1, "adaptiveFastChargingEnable"    # Z

    .prologue
    .line 1559
    const/4 v0, 0x1

    .line 1561
    .local v0, "result":Z
    const-string v2, "/sys/class/sec/switch/afc_disable"

    const-wide/16 v4, 0x0

    if-nez p1, :cond_28

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p0, v2, v4, v5, v1}, writeToFile(Ljava/lang/String;JZ)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1562
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success to set AFC sysfs as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :goto_27
    return v0

    .line 1561
    :cond_28
    const/4 v1, 0x0

    goto :goto_8

    .line 1564
    :cond_2a
    const/4 v0, 0x0

    .line 1565
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "fail to set AFC sysfs"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method setOTGEnableDisable(Z)Z
    .registers 6
    .param p1, "otgEnable"    # Z

    .prologue
    .line 1552
    const-string v0, "/sys/class/power_supply/otg/online"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method setPowerSharing(Z)Z
    .registers 6
    .param p1, "powerSharing"    # Z

    .prologue
    .line 1540
    const-string v0, "/sys/class/power_supply/ps/status"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method setWirelessPowerSharing(Z)Z
    .registers 6
    .param p1, "powerSharing"    # Z

    .prologue
    .line 1546
    const-string v0, "/sys/class/power_supply/ps/status"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, writeToFile(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method writeToFile(Ljava/lang/String;JZ)Z
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1604
    const/4 v3, 0x0

    .line 1605
    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_26

    .line 1608
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :goto_25
    return v5

    .line 1614
    :cond_26
    :try_start_26
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "rw"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_33} :catch_47
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_33} :catch_4c

    .line 1620
    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v4, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_33
    invoke-virtual {v4, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1621
    if-eqz p4, :cond_59

    const-string v6, "1"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    :goto_3e
    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1622
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_44} :catch_60

    .line 1633
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_25

    .line 1615
    :catch_47
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_25

    .line 1623
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4c
    move-exception v0

    .line 1624
    .local v0, "e":Ljava/io/IOException;
    :goto_4d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1626
    :try_start_50
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_25

    .line 1627
    :catch_54
    move-exception v1

    .line 1628
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 1621
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_59
    :try_start_59
    const-string v6, "0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_60

    move-result-object v6

    goto :goto_3e

    .line 1623
    :catch_60
    move-exception v0

    move-object v3, v4

    .end local v4    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_4d
.end method
