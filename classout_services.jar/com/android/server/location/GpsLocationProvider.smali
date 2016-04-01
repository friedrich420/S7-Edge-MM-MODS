.class public Lcom/android/server/location/GpsLocationProvider;
.super Lcom/android/server/location/GpsLocationProvider_samsung;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$BackOff;,
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field private static final AGPS_REF_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final BDS_DELETE_ALMANAC:I = 0x4000000

.field private static final BDS_DELETE_ALMANAC_CORR:I = 0x1000000

.field private static final BDS_DELETE_EPHEMERIS:I = 0x2000000

.field private static final BDS_DELETE_SVDIR:I = 0x200000

.field private static final BDS_DELETE_SVSTEER:I = 0x400000

.field private static final BDS_DELETE_TIME:I = 0x800000

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GLO_DELETE_ALMANAC:I = 0x8000

.field private static final GLO_DELETE_ALMANAC_CORR:I = 0x40000

.field private static final GLO_DELETE_EPHEMERIS:I = 0x4000

.field private static final GLO_DELETE_SVDIR:I = 0x10000

.field private static final GLO_DELETE_SVSTEER:I = 0x20000

.field private static final GLO_DELETE_TIME:I = 0x100000

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnIpType:I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mCellLocation:Landroid/telephony/CellLocation;

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGnssUsed:[I

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private final mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private final mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPeriodicTimeInjection:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 110
    const-string v0, "GpsLocationProvider"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, VERBOSE:Z

    .line 112
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v8, 0x3

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2497
    invoke-static {}, class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 679
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider_samsung;-><init>()V

    .line 279
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 281
    iput v4, p0, mLocationFlags:I

    .line 284
    iput v6, p0, mStatus:I

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mStatusUpdateTime:J

    .line 312
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v1, v8, v9, v2, v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    iput-object v1, p0, mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    .line 313
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v1, v8, v9, v2, v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;-><init>(JJ)V

    iput-object v1, p0, mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    .line 328
    iput v4, p0, mInjectNtpTimePending:I

    .line 329
    iput v4, p0, mDownloadXtraDataPending:I

    .line 341
    const/16 v1, 0x3e8

    iput v1, p0, mFixInterval:I

    .line 356
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mFixRequestTime:J

    .line 358
    iput v4, p0, mTimeToFirstFix:I

    .line 365
    iput-object v7, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 367
    iput-object v7, p0, mWorkSource:Landroid/os/WorkSource;

    .line 369
    iput-boolean v4, p0, mDisableGps:Z

    .line 378
    iput v4, p0, mSuplServerPort:I

    .line 381
    iput-boolean v4, p0, mSuplEsEnabled:Z

    .line 386
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mLocation:Landroid/location/Location;

    .line 387
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, mLocationExtras:Landroid/os/Bundle;

    .line 395
    const-string/jumbo v1, "dummy-apn"

    iput-object v1, p0, mAGpsApn:Ljava/lang/String;

    .line 396
    iput v6, p0, mApnIpType:I

    .line 422
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, mClientSource:Landroid/os/WorkSource;

    .line 430
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v1, p0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 458
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v1, p0, mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1288
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$10;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$10;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v1, p0, mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 1946
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$11;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$11;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v1, p0, mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2487
    new-array v1, v5, [I

    iput-object v1, p0, mSvs:[I

    .line 2488
    new-array v1, v5, [F

    iput-object v1, p0, mSnrs:[F

    .line 2489
    new-array v1, v5, [F

    iput-object v1, p0, mSvElevations:[F

    .line 2490
    new-array v1, v5, [F

    iput-object v1, p0, mSvAzimuths:[F

    .line 2491
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, mSvMasks:[I

    .line 2492
    new-array v1, v5, [I

    iput-object v1, p0, mGnssUsed:[I

    .line 2495
    const/16 v1, 0x78

    new-array v1, v1, [B

    iput-object v1, p0, mNmeaBuffer:[B

    .line 680
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 681
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, mNtpTime:Landroid/util/NtpTrustedTime;

    .line 682
    iput-object p2, p0, mILocationManager:Landroid/location/ILocationManager;

    .line 684
    iget-object v1, p0, mLocation:Landroid/location/Location;

    iget-object v2, p0, mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 687
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    .line 688
    iget-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v2, "GpsLocationProvider"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 689
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 691
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 692
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mWakeupIntent:Landroid/app/PendingIntent;

    .line 693
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mTimeoutIntent:Landroid/app/PendingIntent;

    .line 695
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, mConnMgr:Landroid/net/ConnectivityManager;

    .line 698
    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 702
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 706
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 713
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, mProperties:Ljava/util/Properties;

    .line 714
    const/16 v1, 0xd

    invoke-direct {p0, v1, v4, v7}, sendMessage(IILjava/lang/Object;)V

    .line 717
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v3, p0, mSuplEsEnabled:Z

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v1, p0, mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 721
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$4;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v1, p0, mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    .line 733
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$5;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v1, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 755
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$6;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v1, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 779
    new-instance v1, Lcom/android/server/location/GpsLocationProvider$7;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 785
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 786
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 788
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, native_agps_ni_message([BI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 105
    invoke-static {}, native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 105
    invoke-static {}, native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/location/GpsLocationProvider;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    .line 105
    iput-object p1, p0, mCellLocation:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, hibernate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p5}, native_inject_time(JJI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-boolean v0, p0, mPeriodicTimeInjection:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .registers 1

    .prologue
    .line 105
    invoke-static {}, native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(IDDDIIII)Z
    .registers 12
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .prologue
    .line 105
    invoke-static/range {p0 .. p10}, native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-boolean v0, p0, mEnabled:Z

    return v0
.end method

.method static synthetic access$3000(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 105
    invoke-static {p0}, native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 105
    invoke-static {p0}, native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-static {p0, p1}, native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, handleEnable()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, handleDisable()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-boolean v0, p0, mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-direct {p0, p1}, checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic access$4202(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 105
    invoke-direct {p0, p1}, handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/Properties;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic access$4600()Z
    .registers 1

    .prologue
    .line 105
    invoke-static {}, native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-direct {p0, p1}, checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 105
    invoke-direct {p0}, updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, requestSetID(I)V

    return-void
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .registers 19
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1771
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 1773
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1774
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1775
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1778
    :cond_1f
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 1779
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1781
    :cond_27
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 1782
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 1784
    :cond_2f
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_38

    .line 1785
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 1787
    :cond_38
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_43

    .line 1788
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1790
    :cond_43
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 534
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 535
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v4, v1

    if-ge v0, v4, :cond_2a

    .line 536
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v3

    .line 538
    .local v3, "supl_init":[B
    iget-boolean v4, p0, mEnabled:Z

    invoke-virtual {p0, v4}, extension_checkSmsSuplInit(Z)I

    move-result v2

    .line 539
    .local v2, "result":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1b

    invoke-direct {p0}, native_init()Z

    .line 540
    :cond_1b
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_22

    invoke-direct {p0}, native_init()Z

    .line 541
    :cond_22
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_2b

    .line 543
    array-length v4, v3

    invoke-virtual {p0, v3, v4}, extension_agps_ni_message([BI)V

    .line 550
    .end local v2    # "result":I
    .end local v3    # "supl_init":[B
    :cond_2a
    return-void

    .line 547
    .restart local v2    # "result":I
    .restart local v3    # "supl_init":[B
    :cond_2b
    const/4 v4, 0x1

    invoke-direct {p0, v4}, requestSetID(I)V

    .line 548
    array-length v4, v3

    invoke-direct {p0, v3, v4}, native_agps_ni_message([BI)V

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 553
    const-string/jumbo v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 555
    .local v1, "supl_init":[B
    iget-boolean v2, p0, mEnabled:Z

    iget-object v3, p0, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2, v3}, extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I

    move-result v0

    .line 556
    .local v0, "result":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1b

    invoke-direct {p0}, native_init()Z

    .line 557
    :cond_1b
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_22

    invoke-direct {p0}, native_init()Z

    .line 558
    :cond_22
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2b

    .line 560
    array-length v2, v1

    invoke-virtual {p0, v1, v2}, extension_agps_ni_message([BI)V

    .line 566
    :goto_2a
    return-void

    .line 564
    :cond_2b
    const/4 v2, 0x1

    invoke-direct {p0, v2}, requestSetID(I)V

    .line 565
    array-length v2, v1

    invoke-direct {p0, v1, v2}, native_agps_ni_message([BI)V

    goto :goto_2a
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1316
    if-nez p1, :cond_a

    .line 1317
    const/4 v0, -0x1

    .line 1350
    .local v0, "flags":I
    :cond_3
    :goto_3
    if-eqz v0, :cond_146

    .line 1351
    invoke-direct {p0, v0}, native_delete_aiding_data(I)V

    .line 1352
    const/4 v1, 0x1

    .line 1355
    :goto_9
    return v1

    .line 1319
    .end local v0    # "flags":I
    :cond_a
    const/4 v0, 0x0

    .line 1320
    .restart local v0    # "flags":I
    const-string/jumbo v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x1

    .line 1321
    :cond_16
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    or-int/lit8 v0, v0, 0x2

    .line 1322
    :cond_20
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x4

    .line 1323
    :cond_2b
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    or-int/lit8 v0, v0, 0x8

    .line 1324
    :cond_36
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    or-int/lit8 v0, v0, 0x10

    .line 1325
    :cond_41
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    or-int/lit8 v0, v0, 0x20

    .line 1326
    :cond_4c
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    or-int/lit8 v0, v0, 0x40

    .line 1327
    :cond_57
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    or-int/lit16 v0, v0, 0x80

    .line 1328
    :cond_62
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    or-int/lit16 v0, v0, 0x100

    .line 1329
    :cond_6d
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    or-int/lit16 v0, v0, 0x200

    .line 1330
    :cond_78
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    or-int/lit16 v0, v0, 0x400

    .line 1331
    :cond_83
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    or-int/lit16 v0, v0, 0x800

    .line 1332
    :cond_8d
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    or-int/lit16 v0, v0, 0x1000

    .line 1333
    :cond_97
    const-string/jumbo v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    or-int/lit16 v0, v0, 0x2000

    .line 1334
    :cond_a2
    const-string/jumbo v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    or-int/lit16 v0, v0, 0x4000

    .line 1335
    :cond_ad
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1336
    :cond_b9
    const-string/jumbo v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1337
    :cond_c5
    const-string/jumbo v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 1338
    :cond_d1
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dc

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 1339
    :cond_dc
    const-string/jumbo v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1340
    :cond_e8
    const-string/jumbo v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 1341
    :cond_f4
    const-string/jumbo v1, "ephemeris-BDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1342
    :cond_100
    const-string v1, "almanac-BDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10b

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 1343
    :cond_10b
    const-string/jumbo v1, "svdir-BDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_117

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 1344
    :cond_117
    const-string/jumbo v1, "svsteer-BDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_123

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 1345
    :cond_123
    const-string v1, "almanac-corr-BDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12e

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 1346
    :cond_12e
    const-string/jumbo v1, "time-BDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13a

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1347
    :cond_13a
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    .line 1355
    :cond_146
    const/4 v1, 0x0

    goto/16 :goto_9
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 11
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2365
    if-nez p1, :cond_6

    move v0, v8

    .line 2397
    :cond_5
    :goto_5
    return v0

    .line 2370
    :cond_6
    iget-object v0, p0, mAGpsApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, mApnIpType:I

    if-eqz v0, :cond_15

    .line 2371
    iget v0, p0, mApnIpType:I

    goto :goto_5

    .line 2374
    :cond_15
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2375
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2377
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_21
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "protocol"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2384
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2385
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4a} :catch_70
    .catchall {:try_start_21 .. :try_end_4a} :catchall_8f

    move-result v0

    .line 2392
    if-eqz v6, :cond_5

    .line 2393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 2387
    :cond_51
    :try_start_51
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_69} :catch_70
    .catchall {:try_start_51 .. :try_end_69} :catchall_8f

    .line 2392
    if-eqz v6, :cond_6e

    .line 2393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6e
    :goto_6e
    move v0, v8

    .line 2397
    goto :goto_5

    .line 2389
    :catch_70
    move-exception v7

    .line 2390
    .local v7, "e":Ljava/lang/Exception;
    :try_start_71
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_8f

    .line 2392
    if-eqz v6, :cond_6e

    .line 2393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6e

    .line 2392
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_8f
    move-exception v0

    if-eqz v6, :cond_95

    .line 2393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 1797
    sparse-switch p1, :sswitch_data_12

    .line 1811
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 1799
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1801
    :sswitch_7
    const/4 v0, 0x5

    goto :goto_4

    .line 1803
    :sswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 1805
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 1807
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_4

    .line 1809
    :sswitch_f
    const/4 v0, 0x3

    goto :goto_4

    .line 1797
    nop

    :sswitch_data_12
    .sparse-switch
        -0x95 -> :sswitch_7
        -0x67 -> :sswitch_b
        -0x66 -> :sswitch_f
        -0x65 -> :sswitch_9
        0x0 -> :sswitch_5
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2339
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2340
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2342
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_8
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2348
    if-eqz v6, :cond_32

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2349
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_40
    .catchall {:try_start_8 .. :try_end_2b} :catchall_4e

    move-result-object v0

    .line 2356
    if-eqz v6, :cond_31

    .line 2357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2361
    :cond_31
    :goto_31
    return-object v0

    .line 2351
    :cond_32
    :try_start_32
    const-string v0, "GpsLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_40
    .catchall {:try_start_32 .. :try_end_39} :catchall_4e

    .line 2356
    if-eqz v6, :cond_3e

    .line 2357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    :goto_3e
    move-object v0, v8

    .line 2361
    goto :goto_31

    .line 2353
    :catch_40
    move-exception v7

    .line 2354
    .local v7, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v0, "GpsLocationProvider"

    const-string v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4e

    .line 2356
    if-eqz v6, :cond_3e

    .line 2357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 2356
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v0

    if-eqz v6, :cond_54

    .line 2357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_54
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .registers 11
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1031
    if-eqz p2, :cond_20

    .line 1032
    const-string v5, "SUPL_MODE"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1034
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1036
    :try_start_11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_21

    move-result v2

    .line 1044
    :cond_15
    invoke-direct {p0, v4}, hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_3c

    .line 1045
    const/4 v3, 0x1

    .line 1056
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_20
    :goto_20
    return v3

    .line 1037
    .restart local v1    # "modeString":Ljava/lang/String;
    .restart local v2    # "suplMode":I
    :catch_21
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1050
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3c
    if-eqz p3, :cond_20

    const/4 v5, 0x4

    invoke-direct {p0, v5}, hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_20

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_20

    move v3, v4

    .line 1053
    goto :goto_20
.end method

.method private handleDisable()V
    .registers 3

    .prologue
    .line 1105
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, updateClientUids(Landroid/os/WorkSource;)V

    .line 1108
    invoke-direct {p0}, stopNavigating()V

    .line 1109
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1110
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1113
    invoke-direct {p0}, native_cleanup()V

    .line 1115
    iget-object v0, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1116
    iget-object v0, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1117
    return-void
.end method

.method private handleDownloadXtraData()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 935
    iget v0, p0, mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_6

    .line 979
    :goto_5
    return-void

    .line 939
    :cond_6
    iget-boolean v0, p0, mNetworkAvailable:Z

    if-nez v0, :cond_e

    .line 941
    const/4 v0, 0x0

    iput v0, p0, mDownloadXtraDataPending:I

    goto :goto_5

    .line 944
    :cond_e
    iput v1, p0, mDownloadXtraDataPending:I

    .line 947
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 948
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$9;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$9;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method private handleEnable()V
    .registers 5

    .prologue
    .line 1060
    const-string v1, "GpsLocationProvider"

    const-string/jumbo v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-direct {p0}, native_init()Z

    move-result v0

    .line 1064
    .local v0, "enabled":Z
    if-eqz v0, :cond_3a

    .line 1065
    invoke-direct {p0}, native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, mSupportsXtra:Z

    .line 1068
    iget-object v1, p0, mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1069
    const/4 v1, 0x1

    iget-object v2, p0, mSuplServerHost:Ljava/lang/String;

    iget v3, p0, mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, native_set_agps_server(ILjava/lang/String;I)V

    .line 1071
    :cond_20
    iget-object v1, p0, mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 1072
    const/4 v1, 0x2

    iget-object v2, p0, mC2KServerHost:Ljava/lang/String;

    iget v3, p0, mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, native_set_agps_server(ILjava/lang/String;I)V

    .line 1076
    :cond_2c
    invoke-virtual {p0}, extension_set_supl_server()V

    .line 1079
    iget-object v1, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1080
    iget-object v1, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1087
    :goto_39
    return-void

    .line 1082
    :cond_3a
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1083
    const/4 v1, 0x0

    :try_start_3e
    iput-boolean v1, p0, mEnabled:Z

    .line 1084
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_49

    .line 1085
    const-string v1, "GpsLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1084
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private handleInjectNtpTime()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 876
    iget v0, p0, mInjectNtpTimePending:I

    if-ne v0, v1, :cond_6

    .line 932
    :goto_5
    return-void

    .line 880
    :cond_6
    iget-boolean v0, p0, mNetworkAvailable:Z

    if-nez v0, :cond_e

    .line 882
    const/4 v0, 0x0

    iput v0, p0, mInjectNtpTimePending:I

    goto :goto_5

    .line 885
    :cond_e
    iput v1, p0, mInjectNtpTimePending:I

    .line 888
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 889
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$8;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$8;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1156
    iput-object p1, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1157
    iput-object p2, p0, mWorkSource:Landroid/os/WorkSource;

    .line 1158
    invoke-direct {p0}, updateRequirements()V

    .line 1159
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 982
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 983
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, native_inject_location(DDF)V

    .line 986
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 13
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 808
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d0

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, mNetworkAvailable:Z

    .line 811
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, mNetworkAvailable:Z

    if-eqz v0, :cond_d3

    const-string v0, "available"

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-eqz p2, :cond_65

    .line 816
    invoke-static {}, native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 817
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    .line 818
    .local v8, "dataEnabled":Z
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d8

    if-eqz v8, :cond_d8

    const/4 v4, 0x1

    .line 819
    .local v4, "networkAvailable":Z
    :goto_48
    invoke-direct {p0}, getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 820
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_51

    .line 821
    const-string/jumbo v6, "dummy-apn"

    .line 824
    :cond_51
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 833
    .end local v4    # "networkAvailable":Z
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v8    # "dataEnabled":Z
    :cond_65
    :goto_65
    iget-boolean v0, p0, mNetworkAvailable:Z

    invoke-virtual {p0, v0}, extension_reloadMakeAutoSuplUrl(Z)V

    .line 836
    if-eqz p2, :cond_b7

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b7

    iget v0, p0, mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b7

    .line 838
    iget-boolean v0, p0, mNetworkAvailable:Z

    if-eqz v0, :cond_e3

    .line 839
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 840
    .local v7, "apnName":Ljava/lang/String;
    if-nez v7, :cond_85

    .line 843
    const-string/jumbo v7, "dummy-apn"

    .line 845
    :cond_85
    iput-object v7, p0, mAGpsApn:Ljava/lang/String;

    .line 846
    invoke-direct {p0, v7}, getApnIpType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mApnIpType:I

    .line 847
    invoke-direct {p0}, setRouting()V

    .line 849
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, mAGpsApn:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, mApnIpType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 852
    .local v9, "message":Ljava/lang/String;
    const-string v0, "GpsLocationProvider"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, mAGpsApn:Ljava/lang/String;

    iget v1, p0, mApnIpType:I

    invoke-direct {p0, v0, v1}, native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 855
    const/4 v0, 0x2

    iput v0, p0, mAGpsDataConnectionState:I

    .line 865
    .end local v7    # "apnName":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    :cond_b7
    :goto_b7
    iget-boolean v0, p0, mNetworkAvailable:Z

    if-eqz v0, :cond_cf

    .line 866
    iget v0, p0, mInjectNtpTimePending:I

    if-nez v0, :cond_c5

    .line 867
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, sendMessage(IILjava/lang/Object;)V

    .line 869
    :cond_c5
    iget v0, p0, mDownloadXtraDataPending:I

    if-nez v0, :cond_cf

    .line 870
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, sendMessage(IILjava/lang/Object;)V

    .line 873
    :cond_cf
    return-void

    .line 808
    :cond_d0
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 811
    :cond_d3
    const-string/jumbo v0, "unavailable"

    goto/16 :goto_1a

    .line 818
    .restart local v8    # "dataEnabled":Z
    :cond_d8
    const/4 v4, 0x0

    goto/16 :goto_48

    .line 828
    .end local v8    # "dataEnabled":Z
    :cond_db
    const-string v0, "GpsLocationProvider"

    const-string v1, "Skipped network state update because AGPS-RIL in GPS HAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 857
    :cond_e3
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call native_agps_data_conn_failed, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, mAGpsApn:Ljava/lang/String;

    .line 859
    const/4 v0, 0x0

    iput v0, p0, mApnIpType:I

    .line 860
    const/4 v0, 0x0

    iput v0, p0, mAGpsDataConnectionState:I

    .line 861
    invoke-direct {p0}, native_agps_data_conn_failed()V

    goto :goto_b7
.end method

.method private hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 1455
    iget v0, p0, mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private hibernate()V
    .registers 8

    .prologue
    .line 1447
    invoke-direct {p0}, stopNavigating()V

    .line 1448
    iget-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1449
    iget-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1451
    .local v0, "now":J
    iget-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, mFixInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1452
    return-void
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 585
    invoke-static {}, native_is_supported()Z

    move-result v0

    return v0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 662
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_18

    .line 663
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 665
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 666
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_33

    .line 668
    :try_start_e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 675
    const/4 v4, 0x1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_12
    return v4

    .line 668
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_13
    move-exception v4

    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_18

    .line 671
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v4, 0x0

    goto :goto_12

    .line 668
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_33
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_14
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "configValues":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v4, :cond_62

    aget-object v3, v0, v2

    .line 648
    .local v3, "item":Ljava/lang/String;
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 651
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_48

    .line 652
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 647
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 654
    :cond_48
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 657
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_62
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I[I)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x1

    .line 589
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset GPS properties, previous size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0, p1, p2}, loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 591
    const/4 v4, 0x0

    .line 592
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v9, "ro.hardware.gps"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4b

    .line 594
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/etc/gps."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    .line 599
    .end local v6    # "propFilename":Ljava/lang/String;
    :cond_4b
    if-nez v4, :cond_52

    .line 600
    const-string v9, "/etc/gps.conf"

    invoke-direct {p0, v9, p2}, loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 602
    :cond_52
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GPS properties reloaded, size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v9, "C2K_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, mC2KServerHost:Ljava/lang/String;

    .line 608
    const-string v9, "C2K_PORT"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, "portString":Ljava/lang/String;
    iget-object v9, p0, mC2KServerHost:Ljava/lang/String;

    if-eqz v9, :cond_88

    if-eqz v5, :cond_88

    .line 611
    :try_start_82
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, mC2KServerPort:I
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_88} :catch_c9

    .line 617
    :cond_88
    :goto_88
    invoke-static {}, native_is_gnss_configuration_supported()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 620
    :try_start_8e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 621
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 623
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "final config = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_b6} :catch_e4

    .line 633
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_b6
    iget-object v9, p0, mProperties:Ljava/util/Properties;

    const-string v10, "SUPL_ES"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 634
    .local v7, "suplESProperty":Ljava/lang/String;
    if-eqz v7, :cond_c8

    .line 636
    :try_start_c0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_f6

    :goto_c6
    iput-boolean v8, p0, mSuplEsEnabled:Z
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_c8} :catch_f8

    .line 641
    :cond_c8
    :goto_c8
    return-void

    .line 612
    .end local v7    # "suplESProperty":Ljava/lang/String;
    :catch_c9
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse C2K_PORT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 624
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_e4
    move-exception v2

    .line 625
    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "GpsLocationProvider"

    const-string/jumbo v10, "failed to dump properties contents"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 628
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_ee
    const-string v9, "GpsLocationProvider"

    const-string v10, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 636
    .restart local v7    # "suplESProperty":Ljava/lang/String;
    :cond_f6
    const/4 v8, 0x0

    goto :goto_c6

    .line 637
    :catch_f8
    move-exception v1

    .line 638
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to parse SUPL_ES: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8
.end method

.method private reportAGpsStatus(II[B)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1630
    packed-switch p2, :pswitch_data_14a

    .line 1706
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Unknown AGPS status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_1f
    :goto_1f
    return-void

    .line 1632
    :pswitch_20
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SUPL IP addr[]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iput v8, p0, mAGpsDataConnectionState:I

    .line 1637
    iget-object v4, p0, mConnMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v5, "enableSUPL"

    invoke-virtual {v4, v7, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 1639
    .local v2, "result":I
    if-eqz p3, :cond_6c

    .line 1641
    :try_start_4c
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1642
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IP address converted to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/net/UnknownHostException; {:try_start_4c .. :try_end_6c} :catch_b5

    .line 1651
    :cond_6c
    :goto_6c
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1652
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1654
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v8, :cond_9a

    .line 1656
    :cond_8d
    iput v7, p0, mAGpsDataConnectionState:I

    .line 1657
    invoke-direct {p0}, native_agps_data_conn_failed()V

    .line 1658
    const-string v4, "GpsLocationProvider"

    const-string/jumbo v5, "native_agps_data_conn_failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_9a
    if-nez v2, :cond_e4

    .line 1663
    const-string v4, "GpsLocationProvider"

    const-string v5, "PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v4, p0, mAGpsApn:Ljava/lang/String;

    if-eqz v4, :cond_d1

    .line 1665
    invoke-direct {p0}, setRouting()V

    .line 1666
    iget-object v4, p0, mAGpsApn:Ljava/lang/String;

    iget v5, p0, mApnIpType:I

    invoke-direct {p0, v4, v5}, native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 1667
    iput v9, p0, mAGpsDataConnectionState:I

    goto/16 :goto_1f

    .line 1643
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_b5
    move-exception v1

    .line 1644
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad IP Address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1645
    iput-object v10, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_6c

    .line 1669
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_d1
    const-string v4, "GpsLocationProvider"

    const-string/jumbo v5, "mAGpsApn not set when receiving PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iput v9, p0, mAGpsDataConnectionState:I

    .line 1671
    iget-object v4, p0, mAGpsApn:Ljava/lang/String;

    iget v5, p0, mApnIpType:I

    invoke-direct {p0, v4, v5}, native_agps_data_conn_open(Ljava/lang/String;I)V

    goto/16 :goto_1f

    .line 1673
    :cond_e4
    if-ne v2, v8, :cond_ef

    .line 1674
    const-string v4, "GpsLocationProvider"

    const-string v5, "PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1677
    :cond_ef
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startUsingNetworkFeature failed, value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iput v7, p0, mAGpsDataConnectionState:I

    .line 1680
    invoke-direct {p0}, native_agps_data_conn_failed()V

    goto/16 :goto_1f

    .line 1684
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "result":I
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :pswitch_10f
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget v4, p0, mAGpsDataConnectionState:I

    if-eqz v4, :cond_1f

    .line 1687
    invoke-virtual {p0}, extension_reportAGpsStatus()V

    .line 1689
    iget-object v4, p0, mConnMgr:Landroid/net/ConnectivityManager;

    const-string/jumbo v5, "enableSUPL"

    invoke-virtual {v4, v7, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1691
    invoke-direct {p0}, native_agps_data_conn_closed()V

    .line 1692
    iput v7, p0, mAGpsDataConnectionState:I

    .line 1693
    iput-object v10, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto/16 :goto_1f

    .line 1697
    :pswitch_12e
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1700
    :pswitch_137
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1703
    :pswitch_140
    const-string v4, "GpsLocationProvider"

    const-string v5, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1630
    nop

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_10f
        :pswitch_12e
        :pswitch_137
        :pswitch_140
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1889
    invoke-virtual {p0, p1, p2}, extension_reportGeofenceAddStatus(II)V

    .line 1892
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 1893
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1895
    :cond_f
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1896
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1919
    invoke-virtual {p0, p1, p2}, extension_reportGeofencePauseStatus(II)V

    .line 1922
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 1923
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1925
    :cond_f
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1926
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1904
    invoke-virtual {p0, p1, p2}, extension_reportGeofenceRemoveStatus(II)V

    .line 1907
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 1908
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1910
    :cond_f
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1911
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1934
    invoke-virtual {p0, p1, p2}, extension_reportGeofenceResumeStatus(II)V

    .line 1937
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 1938
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1940
    :cond_f
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 1941
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .registers 31
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1857
    invoke-virtual/range {p0 .. p13}, extension_reportGeofenceStatus(IIDDDFFFJ)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_15

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_15
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1863
    invoke-direct/range {v2 .. v14}, buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 1872
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 1873
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_34

    .line 1874
    const/16 v16, 0x0

    .line 1876
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v3, 0x0

    sget v4, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15, v4}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1881
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .registers 30
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1824
    invoke-virtual/range {p0 .. p16}, extension_reportGeofenceTransition(IIDDDFFFJIJ)V

    .line 1828
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 1829
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_f
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 1831
    invoke-direct/range {v0 .. v12}, buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 1840
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v6, 0x0

    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1847
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 21
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1464
    sget-boolean v4, VERBOSE:Z

    if-eqz v4, :cond_33

    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportLocation lat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_33
    iget-object v5, p0, mLocation:Landroid/location/Location;

    monitor-enter v5

    .line 1468
    :try_start_36
    iput p1, p0, mLocationFlags:I

    .line 1469
    and-int/lit8 v4, p1, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_57

    .line 1470
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1471
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1472
    iget-object v4, p0, mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1475
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1477
    :cond_57
    and-int/lit8 v4, p1, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_133

    .line 1478
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1482
    :goto_61
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_13d

    .line 1483
    iget-object v4, p0, mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1487
    :goto_6d
    and-int/lit8 v4, p1, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_144

    .line 1488
    iget-object v4, p0, mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1492
    :goto_7a
    and-int/lit8 v4, p1, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_14b

    .line 1493
    iget-object v4, p0, mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1497
    :goto_87
    iget-object v4, p0, mLocation:Landroid/location/Location;

    iget-object v6, p0, mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_13a

    .line 1500
    :try_start_8e
    iget-object v4, p0, mILocationManager:Landroid/location/ILocationManager;

    iget-object v6, p0, mLocation:Landroid/location/Location;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_96} :catch_152
    .catchall {:try_start_8e .. :try_end_96} :catchall_13a

    .line 1504
    :goto_96
    :try_start_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_13a

    .line 1506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, mLastFixTime:J

    .line 1508
    iget v4, p0, mTimeToFirstFix:I

    if-nez v4, :cond_d6

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d6

    .line 1509
    iget-wide v4, p0, mLastFixTime:J

    iget-wide v6, p0, mFixRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, mTimeToFirstFix:I

    .line 1510
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mTimeToFirstFix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v4, p0, mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget v5, p0, mTimeToFirstFix:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V

    .line 1515
    iget-wide v4, p0, mLastFixTime:J

    move-wide/from16 v0, p11

    invoke-virtual {p0, v4, v5, v0, v1}, extension_sendGpsTime(JJ)V

    .line 1519
    :cond_d6
    iget-boolean v4, p0, mSingleShot:Z

    if-eqz v4, :cond_dd

    .line 1520
    invoke-direct {p0}, stopNavigating()V

    .line 1523
    :cond_dd
    iget-boolean v4, p0, mStarted:Z

    if-eqz v4, :cond_116

    iget v4, p0, mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_116

    .line 1526
    const/4 v4, 0x1

    invoke-direct {p0, v4}, hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_fb

    iget v4, p0, mFixInterval:I

    const v5, 0xea60

    if-ge v4, v5, :cond_fb

    .line 1527
    iget-object v4, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1531
    :cond_fb
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1533
    iget-object v4, p0, mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1534
    const/4 v4, 0x2

    iget v5, p0, mSvCount:I

    invoke-direct {p0, v4, v5}, updateStatus(II)V

    .line 1537
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_116
    const/4 v4, 0x1

    invoke-direct {p0, v4}, hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_132

    iget-boolean v4, p0, mStarted:Z

    if-eqz v4, :cond_132

    iget v4, p0, mFixInterval:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_132

    .line 1539
    const-string v4, "GpsLocationProvider"

    const-string/jumbo v5, "got fix, hibernating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-direct {p0}, hibernate()V

    .line 1542
    :cond_132
    return-void

    .line 1480
    :cond_133
    :try_start_133
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_61

    .line 1504
    :catchall_13a
    move-exception v4

    monitor-exit v5
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_13a

    throw v4

    .line 1485
    :cond_13d
    :try_start_13d
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_6d

    .line 1490
    :cond_144
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_7a

    .line 1495
    :cond_14b
    iget-object v4, p0, mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_87

    .line 1501
    :catch_152
    move-exception v2

    .line 1502
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "GpsLocationProvider"

    const-string v6, "RemoteException calling reportLocation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catchall {:try_start_13d .. :try_end_15a} :catchall_13a

    goto/16 :goto_96
.end method

.method private reportMeasurementData(Landroid/location/GpsMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 1723
    iget-object v0, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V

    .line 1724
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GpsNavigationMessageEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    .prologue
    .line 1730
    iget-object v0, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V

    .line 1731
    return-void
.end method

.method private reportNmea(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .prologue
    .line 1714
    iget-object v2, p0, mNmeaBuffer:[B

    iget-object v3, p0, mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, native_read_nmea([BI)I

    move-result v0

    .line 1715
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1716
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1717
    return-void
.end method

.method private reportStatus(I)V
    .registers 9
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1548
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportStatus status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-boolean v1, p0, mNavigating:Z

    .line 1551
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_52

    .line 1568
    :goto_20
    iget-boolean v2, p0, mNavigating:Z

    if-eq v1, v2, :cond_41

    .line 1569
    iget-object v2, p0, mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-boolean v3, p0, mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V

    .line 1572
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, mNavigating:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1574
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1576
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_41
    return-void

    .line 1553
    :pswitch_42
    iput-boolean v6, p0, mNavigating:Z

    .line 1554
    iput-boolean v6, p0, mEngineOn:Z

    goto :goto_20

    .line 1557
    :pswitch_47
    iput-boolean v5, p0, mNavigating:Z

    goto :goto_20

    .line 1560
    :pswitch_4a
    iput-boolean v6, p0, mEngineOn:Z

    goto :goto_20

    .line 1563
    :pswitch_4d
    iput-boolean v5, p0, mEngineOn:Z

    .line 1564
    iput-boolean v5, p0, mNavigating:Z

    goto :goto_20

    .line 1551
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1582
    iget-object v1, p0, mSvs:[I

    iget-object v2, p0, mSnrs:[F

    iget-object v3, p0, mSvElevations:[F

    iget-object v4, p0, mSvAzimuths:[F

    iget-object v5, p0, mSvMasks:[I

    iget-object v6, p0, mGnssUsed:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_read_sv_status([I[F[F[F[I[I)I

    move-result v1

    .line 1583
    .local v1, "svCount":I
    iget-object v0, p0, mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v2, p0, mSvs:[I

    iget-object v3, p0, mSnrs:[F

    iget-object v4, p0, mSvElevations:[F

    iget-object v5, p0, mSvAzimuths:[F

    iget-object v6, p0, mSvMasks:[I

    aget v6, v6, v13

    iget-object v7, p0, mSvMasks:[I

    aget v7, v7, v12

    iget-object v8, p0, mSvMasks:[I

    aget v8, v8, v14

    iget-object v9, p0, mGnssUsed:[I

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII[I)V

    .line 1594
    sget-boolean v0, VERBOSE:Z

    if-eqz v0, :cond_116

    .line 1595
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ephemerisMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSvMasks:[I

    aget v3, v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " almanacMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSvMasks:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_70
    if-ge v10, v1, :cond_116

    .line 1599
    const-string v2, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, mSvs:[I

    aget v3, v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, mSnrs:[F

    aget v3, v3, v10

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " elev: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, mSvElevations:[F

    aget v3, v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " azimuth: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, mSvAzimuths:[F

    aget v3, v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " glonass mask: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, mGnssUsed:[I

    aget v3, v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, mSvMasks:[I

    aget v0, v0, v13

    iget-object v4, p0, mSvs:[I

    aget v4, v4, v10

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v12, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_10d

    const-string v0, "  "

    :goto_d4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, mSvMasks:[I

    aget v0, v0, v12

    iget-object v4, p0, mSvs:[I

    aget v4, v4, v10

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v12, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_110

    const-string v0, "  "

    :goto_e9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, mSvMasks:[I

    aget v0, v0, v14

    iget-object v4, p0, mSvs:[I

    aget v4, v4, v10

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v12, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_113

    const-string v0, ""

    :goto_fe
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_70

    .line 1599
    :cond_10d
    const-string v0, " E"

    goto :goto_d4

    :cond_110
    const-string v0, " A"

    goto :goto_e9

    :cond_113
    const-string v0, "U"

    goto :goto_fe

    .line 1610
    .end local v10    # "i":I
    :cond_116
    iget-object v0, p0, mSvs:[I

    iget-object v2, p0, mSvMasks:[I

    iget-object v3, p0, mSnrs:[F

    invoke-virtual {p0, v0, v2, v3, v1}, extension_printSvStatus([I[I[FI)V

    .line 1614
    iget v0, p0, mStatus:I

    iget-object v2, p0, mSvMasks:[I

    aget v2, v2, v14

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, updateStatus(II)V

    .line 1616
    iget-boolean v0, p0, mNavigating:Z

    if-eqz v0, :cond_162

    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_162

    iget-wide v2, p0, mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_162

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_162

    .line 1619
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    invoke-virtual {v11, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1621
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v11, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1622
    iget v0, p0, mSvCount:I

    invoke-direct {p0, v12, v0}, updateStatus(II)V

    .line 1624
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_162
    return-void
.end method

.method private requestRefLocation(I)V
    .registers 15
    .param p1, "flags"    # I

    .prologue
    .line 2077
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2079
    .local v10, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    .line 2080
    .local v11, "phoneType":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_113

    .line 2081
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 2083
    .local v8, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-nez v8, :cond_29

    iget-object v0, p0, mCellLocation:Landroid/telephony/CellLocation;

    if-eqz v0, :cond_29

    .line 2084
    iget-object v8, p0, mCellLocation:Landroid/telephony/CellLocation;

    .end local v8    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 2085
    .restart local v8    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    const-string v0, "GpsLocationProvider"

    const-string v4, "Fail to getting Ref Locatoin. USE Ref location from listener!!!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_29
    if-eqz v8, :cond_90

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_90

    .line 2090
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2091
    .local v2, "mcc":I
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2092
    .local v3, "mnc":I
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    .line 2093
    .local v9, "networkType":I
    const/4 v0, 0x3

    if-eq v9, v0, :cond_6e

    const/16 v0, 0x8

    if-eq v9, v0, :cond_6e

    const/16 v0, 0x9

    if-eq v9, v0, :cond_6e

    const/16 v0, 0xa

    if-eq v9, v0, :cond_6e

    const/16 v0, 0xf

    if-ne v9, v0, :cond_91

    .line 2098
    :cond_6e
    const/4 v1, 0x2

    .line 2127
    .local v1, "type":I
    :goto_6f
    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-eq v0, v4, :cond_7f

    invoke-static {}, getVendor()Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v4, Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GpsLocationProvider_samsung$Vendor;

    if-ne v0, v4, :cond_80

    .line 2128
    :cond_7f
    const/4 v1, 0x1

    .line 2131
    :cond_80
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v5

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_agps_set_ref_location_cellid(IIIIII)V

    .line 2178
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v8    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v9    # "networkType":I
    :cond_90
    :goto_90
    return-void

    .line 2099
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v8    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v9    # "networkType":I
    :cond_91
    const/16 v0, 0xd

    if-ne v9, v0, :cond_97

    .line 2100
    const/4 v1, 0x4

    .restart local v1    # "type":I
    goto :goto_6f

    .line 2103
    .end local v1    # "type":I
    :cond_97
    const/16 v0, 0x12

    if-ne v9, v0, :cond_f7

    .line 2104
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v12

    .line 2106
    .local v12, "voiceNetworkType":I
    const/4 v0, 0x3

    if-eq v12, v0, :cond_b2

    const/16 v0, 0x8

    if-eq v12, v0, :cond_b2

    const/16 v0, 0x9

    if-eq v12, v0, :cond_b2

    const/16 v0, 0xa

    if-eq v12, v0, :cond_b2

    const/16 v0, 0xf

    if-ne v12, v0, :cond_cd

    .line 2111
    :cond_b2
    const/4 v1, 0x2

    .line 2112
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType = IWLAN, VoiceNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 2113
    .end local v1    # "type":I
    :cond_cd
    const/16 v0, 0xd

    if-ne v12, v0, :cond_db

    .line 2114
    const/4 v1, 0x4

    .line 2115
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v4, "networkType = IWLAN, VoiceNetworkType = LTE"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 2117
    .end local v1    # "type":I
    :cond_db
    const/4 v1, 0x1

    .line 2118
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType = IWLAN, VoiceNetworkType is not LTE & HSDPA, type =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    .line 2122
    .end local v1    # "type":I
    .end local v12    # "voiceNetworkType":I
    :cond_f7
    const/4 v1, 0x1

    .line 2123
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType is not IWLAN and type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    .line 2133
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v8    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v9    # "networkType":I
    :cond_113
    const/4 v0, 0x2

    if-ne v11, v0, :cond_90

    .line 2134
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    check-cast v7, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2135
    .local v7, "cdma_cell":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v7, :cond_90

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_90

    .line 2138
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2139
    .restart local v2    # "mcc":I
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2140
    .restart local v3    # "mnc":I
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    .line 2141
    .restart local v9    # "networkType":I
    const/4 v0, 0x3

    if-eq v9, v0, :cond_161

    const/16 v0, 0x8

    if-eq v9, v0, :cond_161

    const/16 v0, 0x9

    if-eq v9, v0, :cond_161

    const/16 v0, 0xa

    if-eq v9, v0, :cond_161

    const/16 v0, 0xf

    if-ne v9, v0, :cond_171

    .line 2146
    :cond_161
    const/4 v1, 0x2

    .line 2175
    .restart local v1    # "type":I
    :goto_162
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getLteTac()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getLteCellId()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, native_agps_set_ref_location_cellid(IIIIII)V

    goto/16 :goto_90

    .line 2147
    .end local v1    # "type":I
    :cond_171
    const/16 v0, 0xd

    if-ne v9, v0, :cond_177

    .line 2148
    const/4 v1, 0x4

    .restart local v1    # "type":I
    goto :goto_162

    .line 2151
    .end local v1    # "type":I
    :cond_177
    const/16 v0, 0x12

    if-ne v9, v0, :cond_1d6

    .line 2152
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v12

    .line 2154
    .restart local v12    # "voiceNetworkType":I
    const/4 v0, 0x3

    if-eq v12, v0, :cond_192

    const/16 v0, 0x8

    if-eq v12, v0, :cond_192

    const/16 v0, 0x9

    if-eq v12, v0, :cond_192

    const/16 v0, 0xa

    if-eq v12, v0, :cond_192

    const/16 v0, 0xf

    if-ne v12, v0, :cond_1ad

    .line 2159
    :cond_192
    const/4 v1, 0x2

    .line 2160
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType = IWLAN, VoiceNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_162

    .line 2161
    .end local v1    # "type":I
    :cond_1ad
    const/16 v0, 0xd

    if-ne v12, v0, :cond_1bb

    .line 2162
    const/4 v1, 0x4

    .line 2163
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v4, "networkType = IWLAN, VoiceNetworkType = LTE"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_162

    .line 2165
    .end local v1    # "type":I
    :cond_1bb
    const/4 v1, 0x1

    .line 2166
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType = IWLAN, VoiceNetworkType is not LTE & HSDPA, type =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_162

    .line 2170
    .end local v1    # "type":I
    .end local v12    # "voiceNetworkType":I
    :cond_1d6
    const/4 v1, 0x1

    .line 2171
    .restart local v1    # "type":I
    const-string v0, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType is not IWLAN and type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_162
.end method

.method private requestSetID(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 2036
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2038
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2039
    .local v3, "type":I
    const-string v0, ""

    .line 2041
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 2042
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1d

    .line 2061
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_19
    :goto_19
    invoke-direct {p0, v3, v0}, native_agps_set_id(ILjava/lang/String;)V

    .line 2062
    return-void

    .line 2047
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1d
    move-object v0, v1

    .line 2048
    const/4 v3, 0x1

    goto :goto_19

    .line 2051
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_20
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    .line 2052
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2053
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 2057
    move-object v0, v1

    .line 2058
    const/4 v3, 0x2

    goto :goto_19
.end method

.method private requestUtcTime()V
    .registers 1

    .prologue
    .line 2070
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 6
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2184
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2185
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2186
    return-void
.end method

.method private setEngineCapabilities(I)V
    .registers 7
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1737
    iput p1, p0, mEngineCapabilities:I

    .line 1739
    const/16 v0, 0x10

    invoke-direct {p0, v0}, hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, mPeriodicTimeInjection:Z

    if-nez v0, :cond_15

    .line 1740
    iput-boolean v1, p0, mPeriodicTimeInjection:Z

    .line 1741
    invoke-direct {p0}, requestUtcTime()V

    .line 1745
    :cond_15
    iget-object v3, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_2d

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1747
    iget-object v0, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2f

    :goto_29
    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1749
    return-void

    :cond_2d
    move v0, v2

    .line 1745
    goto :goto_1e

    :cond_2f
    move v1, v2

    .line 1747
    goto :goto_29
.end method

.method private setRouting()V
    .registers 5

    .prologue
    .line 2418
    iget-object v1, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_5

    .line 2431
    :goto_4
    return-void

    .line 2422
    :cond_5
    iget-object v1, p0, mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x3

    iget-object v3, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2426
    .local v0, "result":Z
    if-nez v0, :cond_2b

    .line 2427
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2429
    :cond_2b
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1004
    if-eqz p1, :cond_4

    .line 1005
    iput-object p1, p0, mSuplServerHost:Ljava/lang/String;

    .line 1007
    :cond_4
    if-eqz p2, :cond_c

    .line 1009
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_24

    .line 1014
    :cond_c
    :goto_c
    iget-object v1, p0, mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget v1, p0, mSuplServerPort:I

    if-lez v1, :cond_23

    iget v1, p0, mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_23

    .line 1017
    const/4 v1, 0x1

    iget-object v2, p0, mSuplServerHost:Ljava/lang/String;

    iget v3, p0, mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, native_set_agps_server(ILjava/lang/String;I)V

    .line 1019
    :cond_23
    return-void

    .line 1010
    :catch_24
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private startNavigating(Z)V
    .registers 12
    .param p1, "singleShot"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1359
    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_86

    .line 1360
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iput v2, p0, mTimeToFirstFix:I

    .line 1362
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastFixTime:J

    .line 1363
    iput-boolean v8, p0, mStarted:Z

    .line 1364
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 1365
    iput-boolean p1, p0, mSingleShot:Z

    .line 1366
    iput v8, p0, mPositionMode:I

    .line 1368
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_87

    move v6, v8

    .line 1374
    .local v6, "agpsEnabled":Z
    :goto_3c
    iget v0, p0, mPositionMode:I

    iget-object v1, p0, mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0, v1, p1}, extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I

    move-result v0

    iput v0, p0, mPositionMode:I

    .line 1380
    iget v0, p0, mPositionMode:I

    packed-switch v0, :pswitch_data_d0

    .line 1391
    const-string/jumbo v7, "unknown"

    .line 1394
    .local v7, "mode":Ljava/lang/String;
    :goto_4e
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-direct {p0, v8}, hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_93

    iget v3, p0, mFixInterval:I

    .line 1398
    .local v3, "interval":I
    :goto_6f
    iget v1, p0, mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_96

    .line 1400
    iput-boolean v2, p0, mStarted:Z

    .line 1401
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 1402
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    .end local v7    # "mode":Ljava/lang/String;
    :cond_86
    :goto_86
    return-void

    :cond_87
    move v6, v2

    .line 1368
    goto :goto_3c

    .line 1382
    .restart local v6    # "agpsEnabled":Z
    :pswitch_89
    const-string/jumbo v7, "standalone"

    .line 1383
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_4e

    .line 1385
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_8d
    const-string v7, "MS_ASSISTED"

    .line 1386
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_4e

    .line 1388
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_90
    const-string v7, "MS_BASED"

    .line 1389
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_4e

    .line 1397
    :cond_93
    const/16 v3, 0x3e8

    goto :goto_6f

    .line 1405
    .restart local v3    # "interval":I
    :cond_96
    invoke-direct {p0}, native_start()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1406
    iput-boolean v2, p0, mStarted:Z

    .line 1407
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 1408
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 1413
    :cond_a9
    invoke-direct {p0, v8, v2}, updateStatus(II)V

    .line 1414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mFixRequestTime:J

    .line 1415
    invoke-direct {p0, v8}, hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1418
    iget v0, p0, mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_86

    .line 1419
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v2, p0, mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_86

    .line 1380
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_89
        :pswitch_90
        :pswitch_8d
    .end packed-switch
.end method

.method private stopNavigating()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1427
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-boolean v0, p0, mStarted:Z

    if-eqz v0, :cond_25

    .line 1429
    iput-boolean v2, p0, mStarted:Z

    .line 1430
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    .line 1431
    iput-boolean v2, p0, mSingleShot:Z

    .line 1432
    invoke-direct {p0}, native_stop()Z

    .line 1433
    iput v2, p0, mTimeToFirstFix:I

    .line 1434
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastFixTime:J

    .line 1435
    iput v2, p0, mLocationFlags:I

    .line 1437
    invoke-virtual {p0}, extension_stopNavigating()V

    .line 1441
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, updateStatus(II)V

    .line 1443
    :cond_25
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    const-string v2, "GpsLocationProvider"

    const-string/jumbo v3, "received SIM related action: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 521
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 523
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM MCC/MNC is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 525
    :try_start_38
    iget-object v2, p0, mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v2}, reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 526
    iget-object v2, p0, mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, mSuplEsEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 527
    monitor-exit v3

    .line 531
    :goto_45
    return-void

    .line 527
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_46

    throw v2

    .line 529
    :cond_49
    const-string v2, "GpsLocationProvider"

    const-string v3, "SIM MCC/MNC is still not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2401
    const-string v4, "IP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2414
    :goto_b
    return v1

    .line 2404
    :cond_c
    const-string v4, "IPV6"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v1, v2

    .line 2405
    goto :goto_b

    .line 2407
    :cond_16
    const-string v4, "IPV4V6"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2408
    const/4 v1, 0x3

    goto :goto_b

    .line 2412
    :cond_20
    const-string v4, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2413
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GpsLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 2414
    goto :goto_b
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1218
    iget-object v7, p0, mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1219
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_9

    .line 1260
    :cond_8
    return-void

    .line 1222
    :cond_9
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1223
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1226
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_41

    .line 1227
    const/4 v4, -0x1

    .line 1228
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_41

    .line 1230
    :try_start_19
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1231
    .local v6, "uid":I
    iget-object v7, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1233
    if-eq v6, v4, :cond_35

    .line 1234
    move v4, v6

    .line 1235
    iget-object v7, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_35} :catch_38

    .line 1228
    .end local v6    # "uid":I
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1237
    :catch_38
    move-exception v1

    .line 1238
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1244
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_41
    if-eqz v2, :cond_8

    .line 1245
    const/4 v4, -0x1

    .line 1246
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_45
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 1248
    :try_start_4b
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1249
    .restart local v6    # "uid":I
    iget-object v7, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1251
    if-eq v6, v4, :cond_67

    .line 1252
    move v4, v6

    .line 1253
    iget-object v7, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_67} :catch_6a

    .line 1246
    .end local v6    # "uid":I
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1255
    :catch_6a
    move-exception v1

    .line 1256
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67
.end method

.method private updateLowPowerMode()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 570
    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 571
    .local v0, "disableGps":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "batterySaverGpsMode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_34

    .line 578
    :goto_16
    iget-boolean v1, p0, mDisableGps:Z

    if-eq v0, v1, :cond_1f

    .line 579
    iput-boolean v0, p0, mDisableGps:Z

    .line 580
    invoke-direct {p0}, updateRequirements()V

    .line 582
    :cond_1f
    return-void

    .line 575
    :pswitch_20
    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_32

    :goto_30
    or-int/2addr v0, v1

    goto :goto_16

    :cond_32
    const/4 v1, 0x0

    goto :goto_30

    .line 571
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method private updateRequirements()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1163
    iget-object v0, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_b

    .line 1214
    :cond_a
    :goto_a
    return-void

    .line 1167
    :cond_b
    const/4 v8, 0x0

    .line 1170
    .local v8, "singleShot":Z
    iget-object v0, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 1174
    const/4 v8, 0x1

    .line 1176
    iget-object v0, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationRequest;

    .line 1177
    .local v7, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_25

    .line 1178
    const/4 v8, 0x0

    goto :goto_25

    .line 1183
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "lr":Landroid/location/LocationRequest;
    :cond_39
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_c1

    iget-boolean v0, p0, mDisableGps:Z

    if-nez v0, :cond_c1

    .line 1186
    iget-object v0, p0, mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, updateClientUids(Landroid/os/WorkSource;)V

    .line 1188
    iget-object v0, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, mFixInterval:I

    .line 1191
    iget v0, p0, mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_97

    .line 1192
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const v0, 0x7fffffff

    iput v0, p0, mFixInterval:I

    .line 1197
    :cond_97
    iget-boolean v0, p0, mStarted:Z

    if-eqz v0, :cond_b8

    invoke-direct {p0, v9}, hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1199
    iget v1, p0, mPositionMode:I

    iget v3, p0, mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1201
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1203
    :cond_b8
    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_a

    .line 1205
    invoke-direct {p0, v8}, startNavigating(Z)V

    goto/16 :goto_a

    .line 1208
    :cond_c1
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, updateClientUids(Landroid/os/WorkSource;)V

    .line 1210
    invoke-direct {p0}, stopNavigating()V

    .line 1211
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1212
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_a
.end method

.method private updateStatus(II)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1135
    iget-object v1, p0, mLocationExtras:Landroid/os/Bundle;

    monitor-enter v1

    .line 1136
    :try_start_3
    iget v0, p0, mStatus:I

    if-ne p1, v0, :cond_b

    iget v0, p0, mSvCount:I

    if-eq p2, v0, :cond_1d

    .line 1137
    :cond_b
    iput p1, p0, mStatus:I

    .line 1138
    iput p2, p0, mSvCount:I

    .line 1139
    iget-object v0, p0, mLocationExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "satellites"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mStatusUpdateTime:J

    .line 1142
    :cond_1d
    monitor-exit v1

    .line 1143
    return-void

    .line 1142
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    .line 1755
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, sendMessage(IILjava/lang/Object;)V

    .line 1757
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1096
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1097
    :try_start_4
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_a

    monitor-exit v1

    .line 1102
    :goto_9
    return-void

    .line 1098
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, mEnabled:Z

    .line 1099
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 1101
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, sendMessage(IILjava/lang/Object;)V

    goto :goto_9

    .line 1099
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2436
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    const-string v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    const/4 v1, 0x1

    invoke-direct {p0, v1}, hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    :cond_48
    const/4 v1, 0x2

    invoke-direct {p0, v1}, hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    :cond_54
    const/4 v1, 0x4

    invoke-direct {p0, v1}, hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    :cond_60
    const/16 v1, 0x8

    invoke-direct {p0, v1}, hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    :cond_6d
    const/16 v1, 0x10

    invoke-direct {p0, v1}, hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    :cond_7a
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    invoke-direct {p0}, native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2448
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 995
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 996
    :try_start_4
    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_a

    monitor-exit v1

    .line 1001
    :goto_9
    return-void

    .line 997
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, mEnabled:Z

    .line 998
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 1000
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, sendMessage(IILjava/lang/Object;)V

    goto :goto_9

    .line 998
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    return-object v0
.end method

.method public getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 795
    const-string/jumbo v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 1961
    iget-object v0, p0, mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .prologue
    .line 800
    sget-object v0, PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1128
    if-eqz p1, :cond_a

    .line 1129
    const-string/jumbo v0, "satellites"

    iget v1, p0, mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1131
    :cond_a
    iget v0, p0, mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 1147
    iget-wide v0, p0, mStatusUpdateTime:J

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 1121
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1122
    :try_start_3
    iget-boolean v0, p0, mEnabled:Z

    monitor-exit v1

    return v0

    .line 1123
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 1978
    const-string v7, "GpsLocationProvider"

    const-string/jumbo v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1992
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1993
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1994
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_f6

    const/4 v7, 0x1

    :goto_96
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1995
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_f8

    const/4 v7, 0x1

    :goto_9d
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1996
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_fa

    const/4 v7, 0x1

    :goto_a4
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1997
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1998
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1999
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2000
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2001
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2002
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2006
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2008
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_c3

    const-string p10, ""

    .line 2009
    :cond_c3
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2012
    .local v4, "extraProp":Ljava/util/Properties;
    :try_start_c8
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d2} :catch_fc

    .line 2019
    :goto_d2
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_da
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_119

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2021
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da

    .line 1994
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "extraProp":Ljava/util/Properties;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_f6
    const/4 v7, 0x0

    goto :goto_96

    .line 1995
    :cond_f8
    const/4 v7, 0x0

    goto :goto_9d

    .line 1996
    :cond_fa
    const/4 v7, 0x0

    goto :goto_a4

    .line 2014
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "extraProp":Ljava/util/Properties;
    :catch_fc
    move-exception v2

    .line 2016
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 2024
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_119
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2026
    iget-object v7, p0, mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2027
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1266
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1268
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1269
    invoke-direct {p0, p2}, deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1284
    :cond_12
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    return v2

    .line 1270
    :cond_16
    const-string/jumbo v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1271
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, sendMessage(IILjava/lang/Object;)V

    .line 1272
    const/4 v2, 0x1

    goto :goto_12

    .line 1273
    :cond_27
    const-string/jumbo v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1274
    iget-boolean v3, p0, mSupportsXtra:Z

    if-eqz v3, :cond_12

    .line 1275
    invoke-direct {p0}, xtraDownloadRequest()V

    .line 1276
    const/4 v2, 0x1

    goto :goto_12

    .line 1278
    :cond_39
    iget-boolean v3, p0, mEnabled:Z

    invoke-virtual {p0, p1, p2, v3}, extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1279
    const/4 v2, 0x1

    goto :goto_12

    .line 1281
    :cond_43
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1152
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0, v1, v2}, sendMessage(IILjava/lang/Object;)V

    .line 1153
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 804
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, sendMessage(IILjava/lang/Object;)V

    .line 805
    return-void
.end method
