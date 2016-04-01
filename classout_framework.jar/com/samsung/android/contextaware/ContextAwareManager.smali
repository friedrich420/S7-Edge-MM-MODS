.class public Lcom/samsung/android/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    }
.end annotation


# static fields
.field public static final ABNORMAL_PRESSURE_MONITOR:I

.field public static final ABNORMAL_SHOCK_SERVICE:I

.field public static final ACCELEROMETER_SENSOR_SERVICE:I

.field public static final ACTIVE_TIME_SERVICE:I

.field public static final ACTIVITY_TRACKER_BATCH_SERVICE:I

.field public static final ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

.field public static final ACTIVITY_TRACKER_SERVICE:I

.field public static final ANY_MOTION_DETECTOR_SERVICE:I

.field public static final APDR_SERVICE:I

.field public static final AUTO_BRIGHTNESS_SERVICE:I

.field public static final AUTO_ROTATION_SERVICE:I

.field public static final BEST_LOCATION_SERVICE:I

.field public static final BOTTOM_FLAT_DETECTOR_SERVICE:I

.field public static final BOUNCE_LONG_MOTION_SERVICE:I

.field public static final BOUNCE_SHORT_MOTION_SERVICE:I

.field public static final CALL_MOTION_SERVICE:I

.field public static final CALL_POSE_SERVICE:I

.field public static final CAPTURE_MOTION_SERVICE:I

.field public static final CARE_GIVER_SERVICE:I

.field public static final CARRYING_STATUS_MONITOR_SERVICE:I

.field public static final CMD_PROCESS_FAULT_DETECTION:I

.field public static final CURRENT_STATUS_FOR_POSITIONING_SERVICE:I = 0x0

.field public static final DEFAULT_VERSION:I = 0x1

.field public static final DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

.field public static final DIRECT_CALL_SERVICE:I

.field public static final DUAL_DISPLAY_ANGLE_SERVICE:I

.field public static final EAD_SERVICE:I

.field public static final EXERCISE_SERVICE:I

.field public static final FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

.field public static final FLAT_MOTION_SERVICE:I

.field public static final FLIP_COVER_ACTION_SERVICE:I

.field public static final GESTURE_APPROACH_SERVICE:I

.field public static final GYROSCOPE_SENSOR_SERVICE:I

.field public static final GYRO_TEMPERATURE_SERVICE:I

.field public static final HALL_SENSOR_SERVICE:I

.field public static final LIFE_LOG_COMPONENT_SERVICE:I

.field public static final LIFE_LOG_SERVICE:I

.field public static final LOCATION_SERVICE:I

.field public static final LOG_LEVEL_DEBUG:I

.field public static final LOG_LEVEL_ERROR:I

.field public static final LOG_LEVEL_INFO:I

.field public static final LOG_LEVEL_TRACE:I

.field public static final LOG_LEVEL_WARN:I

.field public static final LPP_SERVICE:I

.field public static final MAGNETIC_SENSOR_SERVICE:I

.field public static final MAIN_SCREEN_DETECTION_SERVICE:I

.field public static final MOTION_SERVICE:I

.field public static final MOVEMENT_ALERT_SERVICE:I

.field public static final MOVEMENT_FOR_POSITIONING_SERVICE:I

.field public static final MOVEMENT_SERVICE:I

.field public static final MOVING_SERVICE:I

.field public static final ORIENTATION_SENSOR_SERVICE:I

.field public static final OTHER_VERSION:I = 0x2

.field public static final PEDOMETER_SERVICE:I

.field public static final PHONE_STATE_MONITOR_SERVICE:I

.field public static final POWER_NOTI_SERVICE:I

.field public static final PROPERTYGET_ACTIVITY_TRACKER_BATCH_HISTORY_DATA:I = 0x3

.field public static final PROPERTYGET_ANY_MOTION_DETECTOR_DATA:I = 0x5

.field public static final PROPERTYGET_DEVICE_PHYSICAL_CONTEXT_MONITOR_AOD_STATUS:I = 0x7

.field public static final PROPERTYGET_DEVICE_PHYSICAL_CONTEXT_MONITOR_AOD_VERSION:I = 0x8

.field public static final PROPERTYGET_EXERCISE_DATA:I = 0x0

.field public static final PROPERTYGET_PEDOMETER_HISTORY_DATA:I = 0x2

.field public static final PROPERTYGET_PHONESTATE_DATA:I = 0x1

.field public static final PROPERTYGET_STEP_LEVEL_MONITOR:I = 0x4

.field public static final PROPERTY_ABNORMAL_SHOCK_DURATION:I = 0x2d

.field public static final PROPERTY_ABNORMAL_SHOCK_STRENGTH:I = 0x2c

.field public static final PROPERTY_ABNORMAL_SHOCK_USER_ACTION:I = 0x2e

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_ACTIVITY:I = 0x26

.field public static final PROPERTY_ACTIVITY_TRACKER_EXTANDED_INTTERUPT_MODE_PERIOD:I = 0x27

.field public static final PROPERTY_ACTIVITY_TRACKER_INTTERUPT_MODE_ACTIVITY:I = 0x25

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x8

.field public static final PROPERTY_AUTO_BRIGHTNESS_DEVICE_MODE:I = 0x40

.field public static final PROPERTY_AUTO_BRIGHTNESS_EBOOK_CONFIG_DATA:I = 0x41

.field public static final PROPERTY_CARE_GIVER_DURATION:I = 0x29

.field public static final PROPERTY_CARE_GIVER_STRENGTH:I = 0x28

.field public static final PROPERTY_DPCM_AOD_ON_OFF:I = 0x50

.field public static final PROPERTY_DPCM_SENSOR_AOD_OVER_TURN_DURATION:I = 0x54

.field public static final PROPERTY_DPCM_SENSOR_AOD_PROXI_CHECK_DURATION:I = 0x56

.field public static final PROPERTY_DPCM_SENSOR_AOD_PROXI_USE_PERIOD:I = 0x55

.field public static final PROPERTY_DPCM_SENSOR_AOD_SCENARIO_OFF:I = 0x58

.field public static final PROPERTY_DPCM_SENSOR_AOD_SCENARIO_ON:I = 0x57

.field public static final PROPERTY_DPCM_SENSOR_AOD_TIMEOUT:I = 0x53

.field public static final PROPERTY_DPCM_SENSOR_ON_OFF_BRIGHTNESS:I = 0x52

.field public static final PROPERTY_DPCM_SENSOR_ON_OFF_PROXIMITY:I = 0x51

.field public static final PROPERTY_DUAL_DISPLAY_ANGLE_OFF_ANGLE:I = 0x4d

.field public static final PROPERTY_DUAL_DISPLAY_ANGLE_ON_ANGLE:I = 0x4c

.field public static final PROPERTY_EAD_DURATION:I = 0x43

.field public static final PROPERTY_EAD_MODE:I = 0x42

.field public static final PROPERTY_ENVIRONMENT_SENSOR_INTERVAL:I = 0xd

.field public static final PROPERTY_EXERCISE_DATA_TYPE:I = 0x3f

.field public static final PROPERTY_FLAT_MOTION_FOR_TABLE_MODE:I = 0x3d

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_COMPONENT_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_COMPONENT_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LIFE_LOG_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_LIFE_LOG_STAYING_AREA_RADIUS:I = 0x1f

.field public static final PROPERTY_LIFE_LOG_STAYING_RADIUS:I = 0x1e

.field public static final PROPERTY_LIFE_LOG_STAYING_STOP_PERIOD:I = 0x1c

.field public static final PROPERTY_LIFE_LOG_STAYING_WAIT_PERIOD:I = 0x1d

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_LOCATION_HEIGHT:I = 0x3

.field public static final PROPERTY_LOCATION_WEIGHT:I = 0x2

.field public static final PROPERTY_LPP_RESOLUTION:I = 0x20

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0xc

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0xa

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_MIN_DURATION:I = 0xb

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_NOMOVE_DURATION:I = 0x9

.field public static final PROPERTY_PEDOMETER_CURRENT_INFO_COLLECTION_TIME:I = 0x13

.field public static final PROPERTY_PEDOMETER_DELIVERY_COUNT:I = 0x11

.field public static final PROPERTY_PEDOMETER_EXERCISE_MODE:I = 0x3e

.field public static final PROPERTY_PEDOMETER_GENDER:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x5

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x4

.field public static final PROPERTY_POI_CREATION_DB_SETTING:I = 0x1b

.field public static final PROPERTY_SENSORHUB_TIMER_COUNT:I = 0x1a

.field public static final PROPERTY_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_SLEEP_MONITOR_SAMPLING_INTERVAL:I = 0x2b

.field public static final PROPERTY_SLEEP_MONITOR_SENSIBILITY:I = 0x2a

.field public static final PROPERTY_SLOCATION_CURLOC_CORE_FUNC:I = 0x4b

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_ADD:I = 0x44

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_PAUSE_RESUME:I = 0x46

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_REMOVE:I = 0x45

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_SET_LOC_DATA:I = 0x48

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_START_AR:I = 0x49

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_STOP_AR:I = 0x4a

.field public static final PROPERTY_SLOCATION_GEOFENCE_CORE_UPDATE:I = 0x47

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:I = 0x23

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MINUMUM_ANGLE:I = 0x22

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_MOVING_THRS:I = 0x24

.field public static final PROPERTY_SPECIFIC_POSE_ALERT_RETENTION_TIME:I = 0x21

.field public static final PROPERTY_STAYING_ALERT_STOP_PERIOD:I = 0x17

.field public static final PROPERTY_STAYING_ALERT_WAIT_PERIOD:I = 0x18

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x7

.field public static final PROPERTY_STEP_COUNT_TIMER_STEPCOUNT:I = 0x19

.field public static final PROPERTY_STEP_LEVEL_MONITOR_DEVICE_TYPE:I = 0x39

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_COUNT:I = 0x3c

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_END_TIME:I = 0x38

.field public static final PROPERTY_STEP_LEVEL_MONITOR_NOTIFICATION_START_TIME:I = 0x37

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_DURATION:I = 0x3b

.field public static final PROPERTY_STEP_LEVEL_MONITOR_STEP_LEVEL_TYPE:I = 0x3a

.field public static final PROPERTY_TEMPERATURE_ALERT_HIGH_TEMPERATURE:I = 0x15

.field public static final PROPERTY_TEMPERATURE_ALERT_IS_INCLUDING:I = 0x16

.field public static final PROPERTY_TEMPERATURE_ALERT_LOW_TEMPERATURE:I = 0x14

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_TEST_AGGREATION_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_WAKE_UP_VOICE_MODE:I = 0x35

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_AM:I = 0x10

.field public static final PROPERTY_WAKE_UP_VOICE_SOUND_SOURCE_GRAMMER:I = 0x12

.field public static final PUT_DOWN_MOTION_SERVICE:I

.field public static final RAW_BAROMETER_SENSOR_SERVICE:I

.field public static final RAW_GPS_SERVICE:I

.field public static final RAW_SATELLITE_SERVICE:I

.field public static final RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

.field public static final RAW_WPS_SERVICE:I

.field public static final REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

.field public static final REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

.field public static final REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

.field public static final REQUEST_PEDOMETER_CURRENT_INFO:I

.field public static final REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

.field public static final SENSORHUB_RESET_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.SENSORHUB_RESET"

.field public static final SENSOR_STATUS_CHECK_SERVICE:I

.field public static final SHAKE_MOTION_SERVICE:I

.field public static final SLEEP_MONITOR_SERVICE:I

.field public static final SLOCATION_SERVICE:I

.field public static final SPECIFIC_POSE_ALERT_SERVICE:I

.field public static final STAYING_ALERT_SERVICE:I

.field public static final STEP_COUNT_ALERT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

.field public static final STEP_LEVEL_MONITOR_SERVICE:I

.field public static final STOP_ALERT_SERVICE:I

.field private static final TAG:Ljava/lang/String; = "CAE"

.field public static final TEMPERATURE_ALERT_SERVICE:I

.field public static final TEMPERATURE_HUMIDITY_SERVICE:I

.field public static final TEST_FLAT_MOTION_SERVICE:I

.field public static final WAKE_UP_VOICE_SERVICE:I

.field public static final WIRELESS_CHARGING_MONITOR:I

.field public static final WRIST_UP_MOTION_SERVICE:I


# instance fields
.field private final mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mCaeMgrLooper:Landroid/os/Looper;

.field private final mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LOCATION_SERVICE:I

    .line 60
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MOVING_SERVICE:I

    .line 64
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LPP_SERVICE:I

    .line 67
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, TEMPERATURE_HUMIDITY_SERVICE:I

    .line 71
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LIFE_LOG_SERVICE:I

    .line 75
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, PEDOMETER_SERVICE:I

    .line 79
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, RAW_GPS_SERVICE:I

    .line 83
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, RAW_SATELLITE_SERVICE:I

    .line 87
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, RAW_WPS_SERVICE:I

    .line 91
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_BEST_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, BEST_LOCATION_SERVICE:I

    .line 95
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ACCELEROMETER_SENSOR_SERVICE:I

    .line 99
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ORIENTATION_SENSOR_SERVICE:I

    .line 103
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MAGNETIC_SENSOR_SERVICE:I

    .line 107
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, GYROSCOPE_SENSOR_SERVICE:I

    .line 111
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, GESTURE_APPROACH_SERVICE:I

    .line 115
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, STEP_COUNT_ALERT_SERVICE:I

    .line 119
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MOTION_SERVICE:I

    .line 123
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MOVEMENT_SERVICE:I

    .line 127
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, AUTO_ROTATION_SERVICE:I

    .line 131
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, POWER_NOTI_SERVICE:I

    .line 135
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, APDR_SERVICE:I

    .line 139
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MOVEMENT_FOR_POSITIONING_SERVICE:I

    .line 143
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, DIRECT_CALL_SERVICE:I

    .line 147
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, STOP_ALERT_SERVICE:I

    .line 151
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

    .line 155
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, RAW_BAROMETER_SENSOR_SERVICE:I

    .line 159
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, CALL_POSE_SERVICE:I

    .line 163
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, SHAKE_MOTION_SERVICE:I

    .line 167
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARE_GIVER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, CARE_GIVER_SERVICE:I

    .line 171
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ABNORMAL_SHOCK_SERVICE:I

    .line 175
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, FLIP_COVER_ACTION_SERVICE:I

    .line 179
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, GYRO_TEMPERATURE_SERVICE:I

    .line 183
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, PUT_DOWN_MOTION_SERVICE:I

    .line 187
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, WAKE_UP_VOICE_SERVICE:I

    .line 191
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_SHORT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, BOUNCE_SHORT_MOTION_SERVICE:I

    .line 195
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOUNCE_LONG_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, BOUNCE_LONG_MOTION_SERVICE:I

    .line 199
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WRIST_UP_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, WRIST_UP_MOTION_SERVICE:I

    .line 203
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, FLAT_MOTION_SERVICE:I

    .line 207
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MOVEMENT_ALERT_SERVICE:I

    .line 211
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEST_FLAT_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, TEST_FLAT_MOTION_SERVICE:I

    .line 215
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_TEMPERATURE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, TEMPERATURE_ALERT_SERVICE:I

    .line 219
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, STAYING_ALERT_SERVICE:I

    .line 223
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LIFE_LOG_COMPONENT_SERVICE:I

    .line 227
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ACTIVITY_TRACKER_SERVICE:I

    .line 231
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    .line 235
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ACTIVITY_TRACKER_BATCH_SERVICE:I

    .line 239
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_EXTANDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    .line 243
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SPECIFIC_POSE_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, SPECIFIC_POSE_ALERT_SERVICE:I

    .line 247
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, SLEEP_MONITOR_SERVICE:I

    .line 251
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CAPTURE_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, CAPTURE_MOTION_SERVICE:I

    .line 255
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_MOTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, CALL_MOTION_SERVICE:I

    .line 259
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, STEP_LEVEL_MONITOR_SERVICE:I

    .line 263
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    .line 267
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVE_TIME:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ACTIVE_TIME_SERVICE:I

    .line 271
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLAT_MOTION_FOR_TABLE_MODE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    .line 275
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARRYING_STATUS_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, CARRYING_STATUS_MONITOR_SERVICE:I

    .line 279
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOTTOM_FLAT_DETECTOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, BOTTOM_FLAT_DETECTOR_SERVICE:I

    .line 283
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, EXERCISE_SERVICE:I

    .line 287
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PHONE_STATE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, PHONE_STATE_MONITOR_SERVICE:I

    .line 291
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, AUTO_BRIGHTNESS_SERVICE:I

    .line 295
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ABNORMAL_PRESSURE_MONITOR:I

    .line 299
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_HALL_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, HALL_SENSOR_SERVICE:I

    .line 303
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EAD:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, EAD_SERVICE:I

    .line 307
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DUAL_DISPLAY_ANGLE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, DUAL_DISPLAY_ANGLE_SERVICE:I

    .line 311
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, SLOCATION_SERVICE:I

    .line 315
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WIRELESS_CHARGING_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, WIRELESS_CHARGING_MONITOR:I

    .line 320
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

    .line 324
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MAIN_SCREEN_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, MAIN_SCREEN_DETECTION_SERVICE:I

    .line 328
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ANY_MOTION_DETECTOR_RUNNER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, ANY_MOTION_DETECTOR_SERVICE:I

    .line 332
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SENSOR_STATUS_CHECK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, SENSOR_STATUS_CHECK_SERVICE:I

    .line 337
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, CMD_PROCESS_FAULT_DETECTION:I

    .line 341
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, REQUEST_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:I

    .line 345
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_PEDOMETER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, REQUEST_PEDOMETER_CURRENT_INFO:I

    .line 349
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    .line 353
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    .line 357
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_SLEEP_MONITOR_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    .line 654
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LOG_LEVEL_TRACE:I

    .line 657
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LOG_LEVEL_DEBUG:I

    .line 660
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LOG_LEVEL_INFO:I

    .line 663
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LOG_LEVEL_WARN:I

    .line 666
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1403
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/ContextAwareManager$1;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;)V

    iput-object v1, p0, mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 698
    const-string v1, "context_aware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareService;

    move-result-object v1

    iput-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    .line 701
    iput-object p1, p0, mMainLooper:Landroid/os/Looper;

    .line 703
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAEMgr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 707
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, mCaeMgrLooper:Landroid/os/Looper;

    .line 708
    iget-object v1, p0, mCaeMgrLooper:Landroid/os/Looper;

    if-nez v1, :cond_3c

    .line 709
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 713
    :cond_3c
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/ContextAwareManager;

    .prologue
    .line 50
    iget-object v0, p0, mCaeMgrLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/ContextAwareManager;

    .prologue
    .line 50
    iget-object v0, p0, mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .prologue
    .line 853
    if-nez p1, :cond_4

    .line 854
    const/4 v0, 0x0

    .line 868
    :cond_3
    :goto_3
    return-object v0

    .line 857
    :cond_4
    const/4 v0, 0x0

    .line 859
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v3, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 860
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 861
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 862
    .local v1, "delegate":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 863
    move-object v0, v1

    .line 864
    goto :goto_3
.end method

.method private setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "propertyObj"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 1155
    const/4 v1, 0x0

    .line 1158
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 1164
    :goto_7
    return v1

    .line 1160
    :catch_8
    move-exception v0

    .line 1161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "askInfo"    # I

    .prologue
    .line 832
    invoke-direct {p0, p1}, getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 833
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_c

    .line 834
    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 838
    .restart local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    :cond_c
    :try_start_c
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->getContextInfo(Landroid/os/IBinder;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 842
    :goto_11
    return-void

    .line 839
    :catch_12
    move-exception v1

    .line 840
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in getContextInfo: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public final getVersion()I
    .registers 4

    .prologue
    .line 1436
    const/4 v1, 0x0

    .line 1438
    .local v1, "version":I
    :try_start_1
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->getVersion()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 1442
    :goto_7
    return v1

    .line 1439
    :catch_8
    move-exception v0

    .line 1440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public final initializeAutoTest()V
    .registers 3

    .prologue
    .line 1310
    :try_start_0
    iget-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->initializeAutoTest()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1314
    :goto_5
    return-void

    .line 1311
    :catch_6
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 725
    invoke-direct {p0, p1}, getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 726
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_11

    .line 727
    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 728
    .restart local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v2, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_11
    :try_start_11
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 736
    :goto_16
    return-void

    .line 733
    :catch_17
    move-exception v1

    .line 734
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public final registerWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 748
    invoke-direct {p0, p1}, getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 749
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_11

    .line 750
    new-instance v0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 751
    .restart local v0    # "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v2, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_11
    :try_start_11
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->registerWatcher(Landroid/os/IBinder;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 759
    :goto_16
    return-void

    .line 756
    :catch_17
    move-exception v1

    .line 757
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in registerWatcher: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public final resetCAService(I)V
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 1175
    :try_start_0
    iget-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->resetCAService(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1179
    :goto_5
    return-void

    .line 1176
    :catch_6
    move-exception v0

    .line 1177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final setCALogger(ZZIZ)V
    .registers 7
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 1298
    :try_start_0
    iget-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setCALogger(ZZIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1303
    :goto_5
    return-void

    .line 1300
    :catch_6
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final setCAProperty(IID)Z
    .registers 8
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # D

    .prologue
    .line 956
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 957
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 958
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIF)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F

    .prologue
    .line 938
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 939
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 940
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(III)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I

    .prologue
    .line 902
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 903
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 904
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIJ)Z
    .registers 8
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # J

    .prologue
    .line 920
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 921
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 922
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/lang/String;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 974
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 975
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 976
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/ArrayList;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1119
    .local p3, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1120
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayListTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1121
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IILjava/util/HashSet;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1137
    .local p3, "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1138
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerHashSetTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1139
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(IIZ)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Z

    .prologue
    .line 884
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 885
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 886
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[B)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [B

    .prologue
    .line 992
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 993
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-static {p3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 995
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[C)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [C

    .prologue
    .line 1011
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1012
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getCharArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1013
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[D)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [D

    .prologue
    .line 1083
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1084
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getDoubleArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1085
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[F)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [F

    .prologue
    .line 1065
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1066
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getFloatArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1067
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[I)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [I

    .prologue
    .line 1029
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1030
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getIntegerArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1031
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[J)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [J

    .prologue
    .line 1047
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1048
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getLongArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1049
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setCAProperty(II[Ljava/lang/String;)Z
    .registers 6
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # [Ljava/lang/String;

    .prologue
    .line 1101
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 1102
    .local v0, "propertyObj":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getStringArrayTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 1103
    invoke-direct {p0, p1, p2, v0}, setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v1

    return v1
.end method

.method public final setScenarioForDebugging(IILjava/util/List;Ljava/util/List;)Z
    .registers 11
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 1376
    .local p3, "enableService":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "packet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x1

    .line 1378
    .local v3, "result":Z
    if-eqz p3, :cond_1d

    .line 1379
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1380
    .local v1, "i":I
    iget-object v4, p0, mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v4, v1}, registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    goto :goto_7

    .line 1385
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1e
    :try_start_1e
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3b

    .line 1386
    iget-object v5, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v5, p1, p2, v4}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setScenarioForDebugging(II[B)Z

    move-result v3

    .line 1388
    if-nez v3, :cond_3c

    .line 1389
    const-string v4, "CAE"

    const-string/jumbo v5, "setScenarioForDebugging error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3a} :catch_3f

    .line 1390
    const/4 v3, 0x0

    .line 1399
    :cond_3b
    :goto_3b
    return v3

    .line 1385
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1394
    :catch_3f
    move-exception v0

    .line 1395
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 1396
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3b
.end method

.method public final setScenarioForTest(II)Z
    .registers 6
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 1350
    const/4 v1, 0x0

    .line 1352
    .local v1, "result":Z
    :try_start_1
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setScenarioForTest(II)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 1357
    :goto_7
    return v1

    .line 1354
    :catch_8
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public final setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 1424
    :try_start_0
    iget-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->setVersion(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1428
    :goto_5
    return-void

    .line 1425
    :catch_6
    move-exception v0

    .line 1426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final startAutoTest()V
    .registers 3

    .prologue
    .line 1321
    :try_start_0
    iget-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->startAutoTest()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1325
    :goto_5
    return-void

    .line 1322
    :catch_6
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public final stopAutoTest()V
    .registers 3

    .prologue
    .line 1332
    :try_start_0
    iget-object v1, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->stopAutoTest()V

    .line 1333
    iget-object v1, p0, mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v1}, unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1337
    :goto_a
    return-void

    .line 1334
    :catch_b
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .prologue
    .line 768
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/ContextList$ContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 769
    .local v1, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v4

    invoke-virtual {p0, p1, v4}, unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 771
    .end local v1    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_14
    return-void
.end method

.method public final unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 783
    invoke-direct {p0, p1}, getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 784
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_7

    .line 795
    :cond_6
    :goto_6
    return-void

    .line 789
    :cond_7
    :try_start_7
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 790
    iget-object v2, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_6

    .line 792
    :catch_15
    move-exception v1

    .line 793
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final unregisterWatcher(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p2, "service"    # I

    .prologue
    .line 807
    invoke-direct {p0, p1}, getListnerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 808
    .local v0, "caListener":Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_7

    .line 819
    :cond_6
    :goto_6
    return-void

    .line 813
    :cond_7
    :try_start_7
    iget-object v2, p0, mContextAwareService:Lcom/samsung/android/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareService;->unregisterWatcher(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 814
    iget-object v2, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_6

    .line 816
    :catch_15
    move-exception v1

    .line 817
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in unregisterWatcher: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
