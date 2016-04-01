.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field private static final ATT_AT_COMMAND_GPS:Ljava/lang/String; = "AT+GPSVALUE"

.field private static final CHANGE_STATUSBAR_ICON:Ljava/lang/String; = "android.intent.action.CHANGE_STATUSBAR_ICON"

.field public static final D:Z

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCATION_REMOVE_NSFLP:I = 0x2

.field private static final LOCATION_REQUEST_NSFLP:I = 0x1

.field private static final MAX_LOCATION_REQUEST_LOG:I = 0x78

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x1

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final UNKNOWN_INTERVAL_NSFLP:I = 0x0

.field private static final UNKNOWN_QUALITY_NSFLP:I = 0x0

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field private static mSecSalesCode:Ljava/lang/String;

.field private static systemApplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cellProvider:Lcom/samsung/location/CellGeofenceProvider;

.field private fusedProviderEnable:Z

.field private gpsProviderEnable:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLocationRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviderRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/location/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mService:Landroid/os/Messenger;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWorkSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field private networkProviderEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 128
    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, D:Z

    .line 164
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, systemApplist:Ljava/util/ArrayList;

    .line 265
    const/4 v0, 0x0

    sput-object v0, mSecSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 170
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 191
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, mEnabledProviders:Ljava/util/Set;

    .line 194
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, mDisabledProviders:Ljava/util/Set;

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mMockProviders:Ljava/util/HashMap;

    .line 203
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mReceivers:Ljava/util/HashMap;

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mProviders:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mRealProviders:Ljava/util/HashMap;

    .line 214
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mProvidersByName:Ljava/util/HashMap;

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mRecordsByProvider:Ljava/util/HashMap;

    .line 221
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v1, p0, mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mLastLocation:Ljava/util/HashMap;

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mProxyProviders:Ljava/util/ArrayList;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mLocationRequests:Ljava/util/ArrayList;

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mProviderRequestMap:Ljava/util/HashMap;

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mWorkSourceMap:Ljava/util/HashMap;

    .line 248
    iput-boolean v3, p0, gpsProviderEnable:Z

    .line 249
    iput-boolean v3, p0, networkProviderEnable:Z

    .line 250
    iput-boolean v3, p0, fusedProviderEnable:Z

    .line 251
    iput-boolean v2, p0, mBound:Z

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, mService:Landroid/os/Messenger;

    .line 256
    iput v2, p0, mCurrentUserId:I

    .line 257
    new-array v1, v3, [I

    aput v2, v1, v2

    iput-object v1, p0, mCurrentUserProfiles:[I

    .line 481
    new-instance v1, Lcom/android/server/LocationManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, mConnection:Landroid/content/ServiceConnection;

    .line 2977
    new-instance v1, Lcom/android/server/LocationManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 269
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 270
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 273
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_GPS_ConfigAgpsSetting"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, mSecSalesCode:Ljava/lang/String;

    .line 277
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 279
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 303
    sget-boolean v1, D:Z

    if-eqz v1, :cond_d0

    const-string v1, "LocationManagerService"

    const-string v2, "Constructed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_d0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mProvidersByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    .line 126
    invoke-direct {p0, p1}, removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget-object v0, p0, mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    invoke-direct {p0}, applyAllProviderRequirementsLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    invoke-direct {p0}, updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, switchUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 126
    iget v0, p0, mCurrentUserId:I

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 126
    sget-object v0, mSecSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/LocationManagerService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 126
    iput-object p1, p0, mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/server/LocationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, mBound:Z

    return p1
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 1331
    iget-object v0, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    return-void
.end method

.method private addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    const/4 v2, 0x0

    .line 3070
    iget-object v1, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 3071
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3073
    :cond_28
    new-instance v0, Lcom/android/server/location/MockProvider;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 3074
    .local v0, "provider":Lcom/android/server/location/MockProvider;
    invoke-direct {p0, v0}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3075
    iget-object v1, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    iget-object v1, p0, mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3077
    iget-object v1, p0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    return-void
.end method

.method private applyAllProviderRequirementsLocked()V
    .registers 4

    .prologue
    .line 2170
    iget-object v2, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2172
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2176
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_6

    .line 2178
    .end local v1    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_24
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .registers 16
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1734
    iget-object v9, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1735
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_b

    .line 1823
    :goto_a
    return-void

    .line 1737
    :cond_b
    iget-object v9, p0, mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1738
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v8, Landroid/os/WorkSource;

    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    .line 1739
    .local v8, "worksource":Landroid/os/WorkSource;
    new-instance v3, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v3}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 1741
    .local v3, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz v5, :cond_e5

    .line 1742
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1743
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_45

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v9}, isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1745
    :cond_45
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v10, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v11, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-virtual {p0, v9, v10, v11, v12}, checkLocationAccess(IILjava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1750
    iget-object v1, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1751
    .local v1, "locationRequest":Landroid/location/LocationRequest;
    iget-object v9, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1752
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    iget-wide v12, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_23

    .line 1753
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 1754
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_23

    .line 1760
    .end local v1    # "locationRequest":Landroid/location/LocationRequest;
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_76
    iget-boolean v9, v3, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v9, :cond_e5

    .line 1766
    iget-wide v10, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long v6, v10, v12

    .line 1767
    .local v6, "thresholdInterval":J
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8a
    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1768
    .restart local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_ac

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {p0, v9}, isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 1770
    :cond_ac
    iget-object v1, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1771
    .restart local v1    # "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-gtz v9, :cond_8a

    .line 1772
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v9, :cond_d9

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->size()I

    move-result v9

    if-lez v9, :cond_d9

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d9

    .line 1777
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_8a

    .line 1780
    :cond_d9
    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v10, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_8a

    .line 1790
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "locationRequest":Landroid/location/LocationRequest;
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6    # "thresholdInterval":J
    :cond_e5
    sget-boolean v9, D:Z

    if-eqz v9, :cond_10c

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "provider request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_10c
    iget-object v9, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "com.sec.feature.nsflp"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18b

    .line 1794
    const-string/jumbo v9, "gps"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13d

    .line 1795
    iget-object v9, p0, mProviderRequestMap:Ljava/util/HashMap;

    const-string/jumbo v10, "gps"

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    iget-object v9, p0, mWorkSourceMap:Ljava/util/HashMap;

    const-string/jumbo v10, "gps"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    iget-boolean v9, p0, gpsProviderEnable:Z

    if-nez v9, :cond_18b

    .line 1799
    const-string v9, "LocationManagerService"

    const-string/jumbo v10, "gpsProvider is disable, so return"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1802
    :cond_13d
    const-string/jumbo v9, "network"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_164

    .line 1803
    iget-object v9, p0, mProviderRequestMap:Ljava/util/HashMap;

    const-string/jumbo v10, "network"

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    iget-object v9, p0, mWorkSourceMap:Ljava/util/HashMap;

    const-string/jumbo v10, "network"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    iget-boolean v9, p0, networkProviderEnable:Z

    if-nez v9, :cond_18b

    .line 1807
    const-string v9, "LocationManagerService"

    const-string/jumbo v10, "networkProvider is disable, so return"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1810
    :cond_164
    const-string/jumbo v9, "fused"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18b

    .line 1811
    iget-object v9, p0, mProviderRequestMap:Ljava/util/HashMap;

    const-string/jumbo v10, "fused"

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    iget-object v9, p0, mWorkSourceMap:Ljava/util/HashMap;

    const-string/jumbo v10, "fused"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    iget-boolean v9, p0, fusedProviderEnable:Z

    if-nez v9, :cond_18b

    .line 1815
    const-string v9, "LocationManagerService"

    const-string/jumbo v10, "fusedProvider is disable, so return"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1822
    :cond_18b
    invoke-interface {v2, v3, v8}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto/16 :goto_a
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .registers 5
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3038
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkCallerIsProvider()V
    .registers 3

    .prologue
    .line 2683
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2696
    :cond_a
    return-void

    .line 2695
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, isUidALocationProvider(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2699
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "need INSTALL_LOCATION_PROVIDER permission, or UID of a currently bound location provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDeviceStatsAllowed()V
    .registers 4

    .prologue
    .line 1498
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    return-void
.end method

.method private checkExerciseLocationAllowed(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2433
    const/4 v0, 0x0

    .line 2434
    .local v0, "isAllow":Z
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_27

    const/4 v0, 0x1

    .line 2436
    :goto_6
    if-nez v0, :cond_29

    .line 2437
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" package is not allowed to use exercise locaion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2434
    :cond_27
    const/4 v0, 0x0

    goto :goto_6

    .line 2439
    :cond_29
    return-void
.end method

.method private checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 15
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "hideFromAppOps"    # Z

    .prologue
    .line 1979
    if-nez p2, :cond_d

    if-nez p1, :cond_d

    .line 1980
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1981
    :cond_d
    if-eqz p2, :cond_19

    if-eqz p1, :cond_19

    .line 1982
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1983
    :cond_19
    if-eqz p2, :cond_2a

    .line 1984
    invoke-direct {p0, p2}, checkPendingIntent(Landroid/app/PendingIntent;)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1985
    invoke-direct/range {v0 .. v6}, getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    .line 1987
    :goto_29
    return-object v0

    :cond_2a
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    goto :goto_29
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1957
    if-nez p1, :cond_1c

    .line 1958
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1960
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1961
    .local v5, "uid":I
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1962
    .local v3, "packages":[Ljava/lang/String;
    if-nez v3, :cond_42

    .line 1963
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1965
    :cond_42
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_45
    if-ge v1, v2, :cond_53

    aget-object v4, v0, v1

    .line 1966
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    return-void

    .line 1965
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 1968
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_53
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1972
    if-nez p1, :cond_1c

    .line 1973
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_1c
    return-void
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .registers 4
    .param p1, "allowedResolutionLevel"    # I

    .prologue
    .line 1429
    const/4 v0, 0x2

    if-ge p1, v0, :cond_b

    .line 1430
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_b
    return-void
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .registers 7
    .param p1, "allowedResolutionLevel"    # I
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1477
    invoke-direct {p0, p2}, getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v0

    .line 1478
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_74

    .line 1479
    packed-switch v0, :pswitch_data_76

    .line 1487
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" location provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1481
    :pswitch_28
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1484
    :pswitch_4e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" location provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1491
    :cond_74
    return-void

    .line 1479
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_28
    .end packed-switch
.end method

.method private checkUpdateAppOpsAllowed()V
    .registers 4

    .prologue
    .line 1503
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;
    .registers 9
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "resolutionLevel"    # I

    .prologue
    const-wide/32 v4, 0x927c0

    .line 1931
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 1932
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    const/4 v1, 0x2

    if-ge p2, v1, :cond_28

    .line 1933
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_48

    .line 1942
    :goto_12
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1d

    .line 1943
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1945
    :cond_1d
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_28

    .line 1946
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1950
    :cond_28
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3b

    .line 1951
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1953
    :cond_3b
    return-object v0

    .line 1935
    :sswitch_3c
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_12

    .line 1938
    :sswitch_42
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_12

    .line 1933
    :sswitch_data_48
    .sparse-switch
        0x64 -> :sswitch_3c
        0xcb -> :sswitch_42
    .end sparse-switch
.end method

.method private doesUidHavePackage(ILjava/lang/String;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2707
    if-nez p2, :cond_4

    .line 2719
    :cond_3
    :goto_3
    return v5

    .line 2710
    :cond_4
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 2711
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 2714
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_f
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2715
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2716
    const/4 v5, 0x1

    goto :goto_3

    .line 2714
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 532
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, "systemPackageName":Ljava/lang/String;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 535
    .local v7, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    iget v12, p0, mCurrentUserId:I

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 538
    .local v6, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_137

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 539
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 545
    .local v3, "packageName":Ljava/lang/String;
    const/16 v10, 0x40

    :try_start_37
    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 546
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v7}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 547
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resolves service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "com.android.location.service.FusedLocationProvider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", but has wrong signature, ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_67} :catch_68

    goto :goto_25

    .line 551
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_68
    move-exception v0

    .line 552
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "missing package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 557
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_83
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_a2

    .line 558
    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found fused provider without metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 562
    :cond_a2
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "serviceVersion"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 564
    .local v9, "version":I
    if-nez v9, :cond_119

    .line 568
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_d8

    .line 569
    sget-boolean v10, D:Z

    if-eqz v10, :cond_25

    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback candidate not in /system: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 575
    :cond_d8
    invoke-virtual {v4, v8, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_fc

    .line 577
    sget-boolean v10, D:Z

    if-eqz v10, :cond_25

    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback candidate not signed the same as system: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 583
    :cond_fc
    sget-boolean v10, D:Z

    if-eqz v10, :cond_118

    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found fallback provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_118
    return-void

    .line 586
    :cond_119
    sget-boolean v10, D:Z

    if-eqz v10, :cond_25

    const-string v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback candidate not version 0: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 590
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "version":I
    :cond_137
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getAllowedResolutionLevel(II)I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1403
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    .line 1405
    const/4 v0, 0x2

    .line 1410
    :goto_b
    return v0

    .line 1406
    :cond_c
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_18

    .line 1408
    const/4 v0, 0x1

    goto :goto_b

    .line 1410
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getCallerAllowedResolutionLevel()I
    .registers 3

    .prologue
    .line 1420
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1441
    const-string/jumbo v4, "gps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "passive"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1465
    :cond_14
    :goto_14
    return v2

    .line 1445
    :cond_15
    const-string/jumbo v4, "network"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "fused"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_27
    move v2, v3

    .line 1448
    goto :goto_14

    .line 1451
    :cond_29
    iget-object v4, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1452
    .local v0, "lp":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_14

    .line 1453
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 1454
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v1, :cond_14

    .line 1455
    iget-boolean v4, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-nez v4, :cond_14

    .line 1458
    iget-boolean v4, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v4, :cond_45

    iget-boolean v4, v1, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v4, :cond_14

    :cond_45
    move v2, v3

    .line 1460
    goto :goto_14
.end method

.method private getNewTimestamp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2081
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2082
    .local v0, "c":Ljava/util/Calendar;
    const-string v1, "[yyyy-MM-dd HH:mm:ss]"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 16
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    .prologue
    .line 1913
    iget-object v1, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1914
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_1c

    .line 1915
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1917
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    :cond_1c
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 18
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    .prologue
    .line 1895
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1896
    .local v9, "binder":Landroid/os/IBinder;
    iget-object v1, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1897
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_2e

    .line 1898
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1901
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_1d
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_30

    .line 1906
    iget-object v1, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    move-object v1, v0

    .line 1908
    :goto_2f
    return-object v1

    .line 1902
    :catch_30
    move-exception v10

    .line 1903
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "linkToDeath failed:"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1904
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .registers 3
    .param p1, "resolutionLevel"    # I

    .prologue
    .line 1385
    packed-switch p1, :pswitch_data_c

    .line 1391
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1387
    :pswitch_5
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_4

    .line 1389
    :pswitch_8
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_4

    .line 1385
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static getStringStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0, "mThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 2086
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2087
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2088
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    .line 2956
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2957
    .local v0, "myLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 2962
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0, v1}, isMockProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2963
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 2966
    :cond_19
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2967
    :try_start_1c
    invoke-direct {p0, v1}, isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2968
    if-nez p2, :cond_29

    .line 2970
    iget-object v2, p0, mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 2972
    :cond_29
    invoke-direct {p0, v0, p2}, handleLocationChangedLocked(Landroid/location/Location;Z)V

    .line 2974
    :cond_2c
    monitor-exit v3

    .line 2975
    return-void

    .line 2974
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_2e

    throw v2
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .registers 41
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    .line 2775
    sget-boolean v31, D:Z

    if-eqz v31, :cond_25

    const-string v31, "LocationManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "incoming location: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 2778
    .local v20, "now":J
    if-eqz p2, :cond_41

    const-string/jumbo v24, "passive"

    .line 2781
    .local v24, "provider":Ljava/lang/String;
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/location/LocationProviderInterface;

    .line 2782
    .local v19, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v19, :cond_46

    .line 2930
    :cond_40
    :goto_40
    return-void

    .line 2778
    .end local v19    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v24    # "provider":Ljava/lang/String;
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v24

    goto :goto_2e

    .line 2785
    .restart local v19    # "p":Lcom/android/server/location/LocationProviderInterface;
    .restart local v24    # "provider":Ljava/lang/String;
    :cond_46
    const-string/jumbo v31, "noGPSLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v15

    .line 2786
    .local v15, "noGPSLocation":Landroid/location/Location;
    const/4 v14, 0x0

    .line 2787
    .local v14, "lastNoGPSLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, mLastLocation:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    .line 2788
    .local v12, "lastLocation":Landroid/location/Location;
    if-nez v12, :cond_185

    .line 2789
    new-instance v12, Landroid/location/Location;

    .end local v12    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2790
    .restart local v12    # "lastLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, mLastLocation:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    :cond_78
    :goto_78
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;

    .line 2803
    .local v13, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v13, :cond_a3

    .line 2804
    new-instance v13, Landroid/location/Location;

    .end local v13    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2805
    .restart local v13    # "lastLocationCoarseInterval":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2807
    :cond_a3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v34

    invoke-virtual {v13}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v36

    sub-long v32, v34, v36

    .line 2809
    .local v32, "timeDiffNanos":J
    const-wide v34, 0x8bb2c97000L

    cmp-long v31, v32, v34

    if-lez v31, :cond_bb

    .line 2810
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2815
    :cond_bb
    const-string/jumbo v31, "noGPSLocation"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v15

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 2820
    .local v29, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v29, :cond_40

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-eqz v31, :cond_40

    .line 2823
    const/4 v6, 0x0

    .line 2824
    .local v6, "coarseLocation":Landroid/location/Location;
    if-eqz v15, :cond_eb

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, mLocationFudger:Lcom/android/server/location/LocationFudger;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v6

    .line 2829
    :cond_eb
    invoke-interface/range {v19 .. v19}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v16

    .line 2832
    .local v16, "newStatusUpdateTime":J
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2833
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v30

    .line 2835
    .local v30, "status":I
    const/4 v7, 0x0

    .line 2836
    .local v7, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v8, 0x0

    .line 2839
    .local v8, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_100
    :goto_100
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_32b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2840
    .local v25, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v26, v0

    .line 2841
    .local v26, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v27, 0x0

    .line 2843
    .local v27, "receiverDead":Z
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    .line 2844
    .local v28, "receiverUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, isCurrentProfile(I)Z

    move-result v31

    if-nez v31, :cond_19e

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, isUidALocationProvider(I)Z

    move-result v31

    if-nez v31, :cond_19e

    .line 2845
    sget-boolean v31, D:Z

    if-eqz v31, :cond_100

    .line 2846
    const-string v31, "LocationManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "skipping loc update for background user "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " (current user: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, mCurrentUserId:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", app: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 2792
    .end local v6    # "coarseLocation":Landroid/location/Location;
    .end local v7    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v8    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v16    # "newStatusUpdateTime":J
    .end local v25    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v27    # "receiverDead":Z
    .end local v28    # "receiverUserId":I
    .end local v29    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v30    # "status":I
    .end local v32    # "timeDiffNanos":J
    :cond_185
    const-string/jumbo v31, "noGPSLocation"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v14

    .line 2793
    if-nez v15, :cond_78

    if-eqz v14, :cond_78

    .line 2796
    const-string/jumbo v31, "noGPSLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    goto/16 :goto_78

    .line 2853
    .restart local v6    # "coarseLocation":Landroid/location/Location;
    .restart local v7    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v8    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v16    # "newStatusUpdateTime":J
    .restart local v25    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v27    # "receiverDead":Z
    .restart local v28    # "receiverUserId":I
    .restart local v29    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v30    # "status":I
    .restart local v32    # "timeDiffNanos":J
    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1dd

    .line 2854
    sget-boolean v31, D:Z

    if-eqz v31, :cond_100

    const-string v31, "LocationManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "skipping loc update for blacklisted app: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 2859
    :cond_1dd
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    move/from16 v31, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v34, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v31

    if-nez v31, :cond_22e

    .line 2861
    sget-boolean v31, D:Z

    if-eqz v31, :cond_100

    const-string v31, "LocationManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "skipping loc update for no op app: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    .line 2866
    :cond_22e
    const/16 v18, 0x0

    .line 2867
    .local v18, "notifyLocation":Landroid/location/Location;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v31, v0

    const/16 v34, 0x2

    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_320

    .line 2868
    move-object/from16 v18, v6

    .line 2872
    :goto_240
    if-eqz v18, :cond_296

    .line 2873
    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2874
    .local v11, "lastLoc":Landroid/location/Location;
    if-eqz v11, :cond_254

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-wide/from16 v2, v20

    invoke-static {v0, v11, v1, v2, v3}, shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v31

    if-eqz v31, :cond_296

    .line 2875
    :cond_254
    if-nez v11, :cond_324

    .line 2876
    new-instance v11, Landroid/location/Location;

    .end local v11    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2877
    .restart local v11    # "lastLoc":Landroid/location/Location;
    move-object/from16 v0, v25

    iput-object v11, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2881
    :goto_261
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v31

    if-nez v31, :cond_28d

    .line 2882
    const-string v31, "LocationManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    const/16 v27, 0x1

    .line 2885
    :cond_28d
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 2889
    .end local v11    # "lastLoc":Landroid/location/Location;
    :cond_296
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    move-wide/from16 v22, v0

    .line 2890
    .local v22, "prevStatusUpdateTime":J
    cmp-long v31, v16, v22

    if-lez v31, :cond_2e2

    const-wide/16 v34, 0x0

    cmp-long v31, v22, v34

    if-nez v31, :cond_2ae

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2e2

    .line 2893
    :cond_2ae
    move-wide/from16 v0, v16

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2894
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v31

    if-nez v31, :cond_2e2

    .line 2895
    const/16 v27, 0x1

    .line 2896
    const-string v31, "LocationManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_2e2
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v31

    if-lez v31, :cond_2fc

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v34

    cmp-long v31, v34, v20

    if-gez v31, :cond_308

    .line 2902
    :cond_2fc
    if-nez v8, :cond_303

    .line 2903
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2905
    .restart local v8    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_303
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2908
    :cond_308
    if-eqz v27, :cond_100

    .line 2909
    if-nez v7, :cond_311

    .line 2910
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2912
    .restart local v7    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_311
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_100

    .line 2913
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_100

    .line 2870
    .end local v22    # "prevStatusUpdateTime":J
    :cond_320
    move-object/from16 v18, v12

    goto/16 :goto_240

    .line 2879
    .restart local v11    # "lastLoc":Landroid/location/Location;
    :cond_324
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_261

    .line 2919
    .end local v11    # "lastLoc":Landroid/location/Location;
    .end local v18    # "notifyLocation":Landroid/location/Location;
    .end local v25    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v27    # "receiverDead":Z
    .end local v28    # "receiverUserId":I
    :cond_32b
    if-eqz v7, :cond_345

    .line 2920
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_331
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_345

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/LocationManagerService$Receiver;

    .line 2921
    .restart local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_331

    .line 2924
    .end local v26    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_345
    if-eqz v8, :cond_40

    .line 2925
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_34b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_361

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2926
    .restart local v25    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/16 v31, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_34b

    .line 2928
    .end local v25    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_361
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, applyRequirementsLocked(Ljava/lang/String;)V

    goto/16 :goto_40
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1350
    iget-object v1, p0, mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1351
    const/4 v1, 0x1

    .line 1359
    :goto_9
    return v1

    .line 1353
    :cond_a
    iget-object v1, p0, mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1354
    const/4 v1, 0x0

    goto :goto_9

    .line 1357
    :cond_14
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1359
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_9
.end method

.method private isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1372
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p2}, isUidALocationProvider(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1373
    const/4 v0, 0x0

    .line 1375
    :goto_11
    return v0

    :cond_12
    invoke-direct {p0, p1}, isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_11
.end method

.method private isCurrentProfile(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 520
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, mCurrentUserProfiles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 522
    iget-object v1, p0, mCurrentUserProfiles:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_12

    .line 523
    const/4 v1, 0x1

    monitor-exit v2

    .line 526
    :goto_11
    return v1

    .line 521
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 526
    :cond_15
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_11

    .line 527
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2948
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2949
    :try_start_3
    iget-object v0, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2950
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private isUidALocationProvider(I)Z
    .registers 6
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 2670
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_6

    .line 2679
    :cond_5
    :goto_5
    return v2

    .line 2673
    :cond_6
    iget-object v3, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v3, :cond_16

    .line 2674
    iget-object v3, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    invoke-virtual {v3}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, doesUidHavePackage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2676
    :cond_16
    iget-object v3, p0, mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderProxy;

    .line 2677
    .local v1, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, doesUidHavePackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_5

    .line 2679
    .end local v1    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_33
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private loadProvidersLocked()V
    .registers 35

    .prologue
    .line 600
    new-instance v26, Lcom/android/server/location/PassiveProvider;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 601
    .local v26, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 605
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 607
    new-instance v21, Lcom/android/server/location/GpsLocationProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 609
    .local v21, "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 610
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 611
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GpsLocationProvider;->getExerciseLocationProvider()Landroid/location/IExerciseLocationProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v3, "gps"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GpsLocationProvider;->getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 616
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GpsLocationProvider;->getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 617
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/location/GpsLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 620
    .end local v21    # "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    :cond_7f
    new-instance v2, Lcom/samsung/location/CellGeofenceProvider;

    invoke-direct {v2}, Lcom/samsung/location/CellGeofenceProvider;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, cellProvider:Lcom/samsung/location/CellGeofenceProvider;

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, cellProvider:Lcom/samsung/location/CellGeofenceProvider;

    invoke-virtual {v2}, Lcom/samsung/location/CellGeofenceProvider;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_99

    move-object/from16 v0, p0

    iget-object v2, v0, cellProvider:Lcom/samsung/location/CellGeofenceProvider;

    invoke-virtual {v2}, Lcom/samsung/location/CellGeofenceProvider;->enable()V

    .line 634
    :cond_99
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 635
    .local v31, "resources":Landroid/content/res/Resources;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v29, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x1070029

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    .line 638
    .local v27, "pkgs":[Ljava/lang/String;
    sget-boolean v2, D:Z

    if-eqz v2, :cond_cf

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "certificates for location providers pulled from: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_cf
    if-eqz v27, :cond_da

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    :cond_da
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "network"

    const-string v4, "com.android.location.service.v3.NetworkLocationProvider"

    const v5, 0x1120052

    const v6, 0x1040025

    const v7, 0x1070029

    move-object/from16 v0, p0

    iget-object v8, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v25

    .line 653
    .local v25, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v25, :cond_25e

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v3, "network"

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, mProxyProviders:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 662
    :goto_119
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "fused"

    const-string v4, "com.android.location.service.FusedLocationProvider"

    const v5, 0x1120053

    const v6, 0x1040026

    const v7, 0x1070029

    move-object/from16 v0, p0

    iget-object v8, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v2 .. v8}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v19

    .line 670
    .local v19, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v19, :cond_268

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, mProxyProviders:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v3, "fused"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :goto_15c
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x1120055

    const v7, 0x1040028

    const v8, 0x1070029

    move-object/from16 v0, p0

    iget-object v9, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v3, v7, v8, v9}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v2, :cond_183

    .line 687
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "no geocoder provider found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_183
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_279

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    move-result-object v17

    .line 696
    .local v17, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v4

    const v5, 0x1120054

    const v6, 0x1040027

    const v7, 0x1070029

    invoke-static/range {v2 .. v7}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    move-result-object v20

    .line 703
    .local v20, "fusedProxy":Lcom/android/server/location/FusedProxy;
    if-nez v20, :cond_1b3

    .line 704
    const-string v2, "LocationManagerService"

    const-string v3, "Unable to bind FusedProxy."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v20    # "fusedProxy":Lcom/android/server/location/FusedProxy;
    :cond_1b3
    :goto_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x1120056

    const v4, 0x1040029

    const v5, 0x1070029

    move-object/from16 v0, p0

    iget-object v6, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    if-eqz v17, :cond_284

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    move-result-object v8

    :goto_1ce
    invoke-static/range {v2 .. v8}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v28

    .line 719
    .local v28, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v28, :cond_1db

    .line 720
    const-string v2, "LocationManagerService"

    const-string v3, "Unable to bind FLP Geofence proxy."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1db
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v4

    .line 725
    .local v4, "activityRecognitionHardwareIsSupported":Z
    const/4 v5, 0x0

    .line 726
    .local v5, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    if-eqz v4, :cond_287

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v5

    .line 731
    :goto_1ea
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const v6, 0x1120057

    const v7, 0x104002a

    const v8, 0x1070029

    invoke-static/range {v2 .. v8}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v30

    .line 739
    .local v30, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v30, :cond_208

    .line 740
    const-string v2, "LocationManagerService"

    const-string v3, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_208
    const v2, 0x107002a

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    .line 745
    .local v33, "testProviderStrings":[Ljava/lang/String;
    move-object/from16 v16, v33

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_21a
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e1

    aget-object v32, v16, v22

    .line 746
    .local v32, "testProviderString":Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 747
    .local v18, "fragments":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 748
    .local v24, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_290

    .line 749
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider \""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\" already exists"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    .end local v4    # "activityRecognitionHardwareIsSupported":Z
    .end local v5    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v17    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    .end local v18    # "fragments":[Ljava/lang/String;
    .end local v19    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v22    # "i$":I
    .end local v23    # "len$":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v28    # "provider":Lcom/android/server/location/GeofenceProxy;
    .end local v30    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    .end local v32    # "testProviderString":Ljava/lang/String;
    .end local v33    # "testProviderStrings":[Ljava/lang/String;
    :cond_25e
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "no network location provider found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_119

    .line 676
    .restart local v19    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_268
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "no fused location provider found"

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Location service needs a fused location provider"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15c

    .line 707
    :cond_279
    const/16 v17, 0x0

    .line 708
    .restart local v17    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    const-string v2, "LocationManagerService"

    const-string v3, "FLP HAL not supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b3

    .line 712
    :cond_284
    const/4 v8, 0x0

    goto/16 :goto_1ce

    .line 729
    .restart local v4    # "activityRecognitionHardwareIsSupported":Z
    .restart local v5    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .restart local v28    # "provider":Lcom/android/server/location/GeofenceProxy;
    :cond_287
    const-string v2, "LocationManagerService"

    const-string v3, "Hardware Activity-Recognition not supported."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ea

    .line 751
    .restart local v16    # "arr$":[Ljava/lang/String;
    .restart local v18    # "fragments":[Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v23    # "len$":I
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v30    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    .restart local v32    # "testProviderString":Ljava/lang/String;
    .restart local v33    # "testProviderStrings":[Ljava/lang/String;
    :cond_290
    new-instance v6, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const/4 v2, 0x2

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v2, 0x3

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v2, 0x4

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const/4 v2, 0x5

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v2, 0x6

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    const/4 v2, 0x7

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const/16 v2, 0x8

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v2, 0x9

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct/range {v6 .. v15}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 761
    .local v6, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 745
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_21a

    .line 763
    .end local v6    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v18    # "fragments":[Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    .end local v32    # "testProviderString":Ljava/lang/String;
    :cond_2e1
    return-void
.end method

.method private loadProvidersLocked_CHN()V
    .registers 49

    .prologue
    .line 767
    const v7, 0x1040025

    .line 768
    .local v7, "id_config_networkLocationProviderPackageName":I
    const v35, 0x1040028

    .line 769
    .local v35, "id_config_geocoderProviderPackageName":I
    const v13, 0x1040026

    .line 770
    .local v13, "id_config_fusedLocationProviderPackageName":I
    const v8, 0x1070029

    .line 771
    .local v8, "id_config_locationProviderPackageNames":I
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 772
    .local v47, "vendor":Ljava/lang/String;
    const-string v3, "CHN"

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "CHC"

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "CHU"

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "CTC"

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_307

    .line 773
    :cond_3b
    const v7, 0x1040742

    .line 774
    const v35, 0x1040745

    .line 775
    const v13, 0x1040744

    .line 776
    const v8, 0x1070081

    .line 783
    :cond_47
    :goto_47
    sget-boolean v3, D:Z

    if-eqz v3, :cond_b8

    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadProvidersLocked_CHN, network : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " geocoder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fused : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " location : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_b8
    new-instance v39, Lcom/android/server/location/PassiveProvider;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 790
    .local v39, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 792
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 794
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_137

    .line 796
    new-instance v33, Lcom/android/server/location/GpsLocationProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 798
    .local v33, "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 799
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 800
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/location/GpsLocationProvider;->getExerciseLocationProvider()Landroid/location/IExerciseLocationProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    .line 801
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "gps"

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/location/GpsLocationProvider;->getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 805
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/location/GpsLocationProvider;->getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 806
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/location/GpsLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 809
    .end local v33    # "gpsProvider":Lcom/android/server/location/GpsLocationProvider;
    :cond_137
    new-instance v3, Lcom/samsung/location/CellGeofenceProvider;

    invoke-direct {v3}, Lcom/samsung/location/CellGeofenceProvider;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, cellProvider:Lcom/samsung/location/CellGeofenceProvider;

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, cellProvider:Lcom/samsung/location/CellGeofenceProvider;

    invoke-virtual {v3}, Lcom/samsung/location/CellGeofenceProvider;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_151

    move-object/from16 v0, p0

    iget-object v3, v0, cellProvider:Lcom/samsung/location/CellGeofenceProvider;

    invoke-virtual {v3}, Lcom/samsung/location/CellGeofenceProvider;->enable()V

    .line 823
    :cond_151
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    .line 824
    .local v44, "resources":Landroid/content/res/Resources;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v42, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v40

    .line 827
    .local v40, "pkgs":[Ljava/lang/String;
    sget-boolean v3, D:Z

    if-eqz v3, :cond_184

    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "certificates for location providers pulled from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v40 .. v40}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_184
    if-eqz v40, :cond_18f

    invoke-static/range {v40 .. v40}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 831
    :cond_18f
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "network"

    const-string v5, "com.android.location.service.v3.NetworkLocationProvider"

    const v6, 0x1120052

    move-object/from16 v0, p0

    iget-object v9, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v3 .. v9}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v38

    .line 842
    .local v38, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v38, :cond_31f

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "network"

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, mProxyProviders:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 851
    :goto_1c8
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "fused"

    const-string v11, "com.android.location.service.FusedLocationProvider"

    const v12, 0x1120053

    move-object/from16 v0, p0

    iget-object v15, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move v14, v8

    invoke-static/range {v9 .. v15}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v31

    .line 859
    .local v31, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v31, :cond_329

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, mProxyProviders:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "fused"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :goto_206
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const v4, 0x1120055

    move-object/from16 v0, p0

    iget-object v5, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move/from16 v0, v35

    invoke-static {v3, v4, v0, v8, v5}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v3, :cond_229

    .line 876
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "no geocoder provider found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_229
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_33a

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    move-result-object v29

    .line 885
    .local v29, "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v16

    const v17, 0x1120054

    const v18, 0x1040027

    move/from16 v19, v8

    invoke-static/range {v14 .. v19}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    move-result-object v32

    .line 892
    .local v32, "fusedProxy":Lcom/android/server/location/FusedProxy;
    if-nez v32, :cond_258

    .line 893
    const-string v3, "LocationManagerService"

    const-string v4, "Unable to bind FusedProxy."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v32    # "fusedProxy":Lcom/android/server/location/FusedProxy;
    :cond_258
    :goto_258
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const v15, 0x1120056

    const v16, 0x1040029

    move-object/from16 v0, p0

    iget-object v0, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    move-object/from16 v19, v0

    if-eqz v29, :cond_345

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    move-result-object v20

    :goto_274
    move/from16 v17, v8

    invoke-static/range {v14 .. v20}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v41

    .line 908
    .local v41, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v41, :cond_283

    .line 909
    const-string v3, "LocationManagerService"

    const-string v4, "Unable to bind FLP Geofence proxy."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_283
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v16

    .line 914
    .local v16, "activityRecognitionHardwareIsSupported":Z
    const/16 v17, 0x0

    .line 915
    .local v17, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    if-eqz v16, :cond_349

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v17

    .line 920
    :goto_293
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const v18, 0x1120057

    const v19, 0x104002a

    const v20, 0x1070029

    invoke-static/range {v14 .. v20}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v43

    .line 928
    .local v43, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v43, :cond_2b1

    .line 929
    const-string v3, "LocationManagerService"

    const-string v4, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_2b1
    const v3, 0x107002a

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v46

    .line 934
    .local v46, "testProviderStrings":[Ljava/lang/String;
    move-object/from16 v28, v46

    .local v28, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v34, 0x0

    .local v34, "i$":I
    :goto_2c3
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_3a5

    aget-object v45, v28, v34

    .line 935
    .local v45, "testProviderString":Ljava/lang/String;
    const-string v3, ","

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 936
    .local v30, "fragments":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v30, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    .line 937
    .local v37, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_352

    .line 938
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    .end local v16    # "activityRecognitionHardwareIsSupported":Z
    .end local v17    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .end local v28    # "arr$":[Ljava/lang/String;
    .end local v29    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    .end local v30    # "fragments":[Ljava/lang/String;
    .end local v31    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v34    # "i$":I
    .end local v36    # "len$":I
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v39    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v40    # "pkgs":[Ljava/lang/String;
    .end local v41    # "provider":Lcom/android/server/location/GeofenceProxy;
    .end local v42    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v43    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    .end local v44    # "resources":Landroid/content/res/Resources;
    .end local v45    # "testProviderString":Ljava/lang/String;
    .end local v46    # "testProviderStrings":[Ljava/lang/String;
    :cond_307
    const-string v3, "CHM"

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 778
    const v7, 0x1040743

    .line 779
    const v35, 0x1040746

    .line 780
    const v13, 0x1040744

    .line 781
    const v8, 0x1070082

    goto/16 :goto_47

    .line 847
    .restart local v38    # "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    .restart local v39    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .restart local v40    # "pkgs":[Ljava/lang/String;
    .restart local v42    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v44    # "resources":Landroid/content/res/Resources;
    :cond_31f
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "no network location provider found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c8

    .line 865
    .restart local v31    # "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_329
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "no fused location provider found"

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Location service needs a fused location provider"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_206

    .line 896
    :cond_33a
    const/16 v29, 0x0

    .line 897
    .restart local v29    # "flpHardwareProvider":Lcom/android/server/location/FlpHardwareProvider;
    const-string v3, "LocationManagerService"

    const-string v4, "FLP HAL not supported"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_258

    .line 901
    :cond_345
    const/16 v20, 0x0

    goto/16 :goto_274

    .line 918
    .restart local v16    # "activityRecognitionHardwareIsSupported":Z
    .restart local v17    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .restart local v41    # "provider":Lcom/android/server/location/GeofenceProxy;
    :cond_349
    const-string v3, "LocationManagerService"

    const-string v4, "Hardware Activity-Recognition not supported."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_293

    .line 940
    .restart local v28    # "arr$":[Ljava/lang/String;
    .restart local v30    # "fragments":[Ljava/lang/String;
    .restart local v34    # "i$":I
    .restart local v36    # "len$":I
    .restart local v37    # "name":Ljava/lang/String;
    .restart local v43    # "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    .restart local v45    # "testProviderString":Ljava/lang/String;
    .restart local v46    # "testProviderStrings":[Ljava/lang/String;
    :cond_352
    new-instance v18, Lcom/android/internal/location/ProviderProperties;

    const/4 v3, 0x1

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const/4 v3, 0x2

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    const/4 v3, 0x3

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    const/4 v3, 0x4

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    const/4 v3, 0x5

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    const/4 v3, 0x6

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    const/4 v3, 0x7

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    const/16 v3, 0x8

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v3, 0x9

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-direct/range {v18 .. v27}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 950
    .local v18, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 934
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2c3

    .line 952
    .end local v18    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v30    # "fragments":[Ljava/lang/String;
    .end local v37    # "name":Ljava/lang/String;
    .end local v45    # "testProviderString":Ljava/lang/String;
    :cond_3a5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 3223
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3224
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_e
    return-void
.end method

.method private pickBest(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1640
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "gps"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1641
    const-string/jumbo v0, "gps"

    .line 1645
    :goto_c
    return-object v0

    .line 1642
    :cond_d
    const-string/jumbo v0, "network"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1643
    const-string/jumbo v0, "network"

    goto :goto_c

    .line 1645
    :cond_1a
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c
.end method

.method private removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 1336
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1337
    iget-object v0, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1338
    iget-object v0, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 16
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    const/4 v8, 0x0

    .line 2121
    sget-boolean v1, D:Z

    if-eqz v1, :cond_32

    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_32
    iget-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.sec.feature.nsflp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    sget-object v1, systemApplist:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 2125
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUpdates, receiver.requestedID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const/4 v2, 0x2

    iget-object v3, p1, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, sendRequestInform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2132
    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    Location Remove at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, getNewTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n      remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2134
    .local v9, "location_request":Ljava/lang/String;
    invoke-direct {p0, v9}, saveLocationRequestString(Ljava/lang/String;)V

    .line 2136
    iget-object v1, p0, mReceivers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d1

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 2137
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2138
    monitor-enter p1

    .line 2139
    :try_start_cd
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2140
    monitor-exit p1
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_f5

    .line 2143
    :cond_d1
    invoke-virtual {p1, v8}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2146
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 2147
    .local v12, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v10, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2148
    .local v10, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v10, :cond_ff

    .line 2150
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2152
    .local v13, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v13, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_e5

    .line 2140
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v10    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v12    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_f5
    move-exception v1

    :try_start_f6
    monitor-exit p1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw v1

    .line 2155
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v10    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v12    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_f8
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2159
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_ff
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_103
    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2161
    .local v11, "provider":Ljava/lang/String;
    invoke-direct {p0, v11}, isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 2165
    invoke-direct {p0, v11}, applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_103

    .line 2167
    .end local v11    # "provider":Ljava/lang/String;
    :cond_119
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .registers 24
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2031
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.sec.feature.nsflp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    sget-object v5, systemApplist:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2032
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getQuality()I

    move-result v12

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    invoke-direct/range {v5 .. v12}, sendRequestInform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2039
    :cond_32
    if-nez p1, :cond_36

    sget-object p1, DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2040
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v14

    .line 2041
    .local v14, "name":Ljava/lang/String;
    if-nez v14, :cond_45

    .line 2042
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "provider name must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2045
    :cond_45
    sget-boolean v5, D:Z

    if-eqz v5, :cond_9e

    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_9e
    move-object/from16 v0, p0

    iget-object v5, v0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/location/LocationProviderInterface;

    .line 2048
    .local v16, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v16, :cond_c4

    .line 2049
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "provider doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2052
    :cond_c4
    new-instance v17, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2053
    .local v17, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2054
    .local v15, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v15, :cond_e3

    .line 2055
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 2058
    :cond_e3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n    Location Request at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, getNewTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n      request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2061
    .local v13, "location_request":Ljava/lang/String;
    const/16 v5, 0x3e8

    move/from16 v0, p4

    if-ne v0, v5, :cond_180

    const-string v5, "com.android.angryGps"

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_180

    .line 2063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n        >> Location Request is from Android System(1000) print stack dump!.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    const-string/jumbo v7, "stack dump"

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, getStringStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2066
    :cond_180
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, saveLocationRequestString(Ljava/lang/String;)V

    .line 2068
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v14, v1}, isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v4

    .line 2069
    .local v4, "isProviderEnabled":Z
    if-eqz v4, :cond_19b

    .line 2070
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, applyRequirementsLocked(Ljava/lang/String;)V

    .line 2077
    :goto_194
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2078
    return-void

    .line 2073
    :cond_19b
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v5}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_194
.end method

.method public static resolutionLevelToOp(I)I
    .registers 2
    .param p0, "allowedResolutionLevel"    # I

    .prologue
    const/4 v0, 0x1

    .line 1508
    if-eqz p0, :cond_7

    .line 1509
    if-ne p0, v0, :cond_6

    .line 1510
    const/4 v0, 0x0

    .line 1515
    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method private saveLocationRequestString(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2092
    iget-object v0, p0, mLocationRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_10

    iget-object v0, p0, mLocationRequests:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2093
    :cond_10
    iget-object v0, p0, mLocationRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2094
    return-void
.end method

.method private sendRequestInform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 11
    .param p1, "mode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "quality"    # I

    .prologue
    .line 2492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2493
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    const-string/jumbo v2, "provider"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    const-string/jumbo v2, "listenerid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    const-string/jumbo v2, "interval"

    invoke-virtual {v0, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2497
    const-string/jumbo v2, "quality"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2499
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2500
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 2501
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2503
    invoke-virtual {p0, v1}, notifyNSFLP(Landroid/os/Message;)Z

    .line 2504
    return-void
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .registers 16
    .param p0, "loc"    # Landroid/location/Location;
    .param p1, "lastLoc"    # Landroid/location/Location;
    .param p2, "record"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p3, "now"    # J

    .prologue
    .line 2741
    if-nez p1, :cond_4

    .line 2742
    const/4 v6, 0x1

    .line 2771
    :goto_3
    return v6

    .line 2746
    :cond_4
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v4

    .line 2747
    .local v4, "minTime":J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long v0, v6, v8

    .line 2749
    .local v0, "delta":J
    const-wide/16 v6, 0x64

    sub-long v6, v4, v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_22

    .line 2750
    const/4 v6, 0x0

    goto :goto_3

    .line 2754
    :cond_22
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v6

    float-to-double v2, v6

    .line 2755
    .local v2, "minDistance":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_3a

    .line 2756
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gtz v6, :cond_3a

    .line 2757
    const/4 v6, 0x0

    goto :goto_3

    .line 2762
    :cond_3a
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v6

    if-gtz v6, :cond_44

    .line 2763
    const/4 v6, 0x0

    goto :goto_3

    .line 2767
    :cond_44
    iget-object v6, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v6}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-gez v6, :cond_50

    .line 2768
    const/4 v6, 0x0

    goto :goto_3

    .line 2771
    :cond_50
    const/4 v6, 0x1

    goto :goto_3
.end method

.method private switchUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 960
    iget v2, p0, mCurrentUserId:I

    if-ne v2, p1, :cond_5

    .line 975
    :goto_4
    return-void

    .line 963
    :cond_5
    iget-object v2, p0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 964
    iget-object v2, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 965
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 966
    :try_start_13
    iget-object v2, p0, mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 967
    iget-object v2, p0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 968
    iget-object v2, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 969
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, updateProviderListenersLocked(Ljava/lang/String;Z)V

    goto :goto_23

    .line 974
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_38

    throw v2

    .line 971
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3b
    :try_start_3b
    iput p1, p0, mCurrentUserId:I

    .line 972
    invoke-virtual {p0, p1}, updateUserProfiles(I)V

    .line 973
    invoke-direct {p0}, updateProvidersLocked()V

    .line 974
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_38

    goto :goto_4
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1691
    const/4 v3, 0x0

    .line 1693
    .local v3, "listeners":I
    iget-object v7, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1694
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_c

    .line 1731
    :cond_b
    :goto_b
    return-void

    .line 1696
    :cond_c
    const/4 v1, 0x0

    .line 1698
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1699
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_53

    .line 1700
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1701
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v0, :cond_53

    .line 1702
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1703
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_3a

    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {p0, v7}, isCurrentProfile(I)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1706
    :cond_3a
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 1707
    if-nez v1, :cond_49

    .line 1708
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    .restart local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_49
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    .line 1701
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1717
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_53
    if-eqz v1, :cond_69

    .line 1718
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2    # "i":I
    :goto_5b
    if-ltz v2, :cond_69

    .line 1719
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1718
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 1723
    .end local v2    # "i":I
    :cond_69
    if-eqz p2, :cond_74

    .line 1724
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1725
    if-lez v3, :cond_b

    .line 1726
    invoke-direct {p0, p1}, applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_b

    .line 1729
    :cond_74
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_b
.end method

.method private updateProvidersLocked()V
    .registers 10

    .prologue
    .line 1663
    const/4 v0, 0x0

    .line 1664
    .local v0, "changesMade":Z
    iget-object v6, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3f

    .line 1665
    iget-object v6, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1666
    .local v4, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v2

    .line 1667
    .local v2, "isEnabled":Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 1669
    .local v5, "shouldBeEnabled":Z
    if-eqz v2, :cond_35

    if-nez v5, :cond_35

    .line 1670
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1674
    iget-object v6, p0, mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1675
    iget-object v6, p0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1676
    const/4 v0, 0x1

    .line 1664
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1677
    :cond_35
    if-nez v2, :cond_32

    if-eqz v5, :cond_32

    .line 1678
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1679
    const/4 v0, 0x1

    goto :goto_32

    .line 1682
    .end local v2    # "isEnabled":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "shouldBeEnabled":Z
    :cond_3f
    if-eqz v0, :cond_5d

    .line 1683
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1685
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.MODE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1688
    :cond_5d
    return-void
.end method


# virtual methods
.method public addExerciseLocationListener(Landroid/location/IExerciseLocationListener;Ljava/lang/String;)Z
    .registers 7
    .param p1, "listener"    # Landroid/location/IExerciseLocationListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2411
    iget-object v2, p0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    if-nez v2, :cond_6

    .line 2423
    :goto_5
    return v1

    .line 2418
    :cond_6
    :try_start_6
    iget-object v2, p0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    invoke-interface {v2, p1}, Landroid/location/IExerciseLocationProvider;->addExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 2423
    const/4 v1, 0x1

    goto :goto_5

    .line 2419
    :catch_d
    move-exception v0

    .line 2420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "mExerciseLocationProvider.addExerciseLocationListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z
    .registers 10
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2334
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2335
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    invoke-direct {p0, v0, v6}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2339
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2340
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2341
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2344
    .local v2, "identity":J
    :try_start_16
    invoke-virtual {p0, v4, v5, p2, v0}, checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    move-result v1

    .line 2346
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2349
    if-eqz v1, :cond_23

    iget-object v6, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    if-nez v6, :cond_2a

    .line 2350
    :cond_23
    const/4 v6, 0x0

    .line 2352
    :goto_24
    return v6

    .line 2346
    .end local v1    # "hasLocationAccess":Z
    :catchall_25
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2352
    .restart local v1    # "hasLocationAccess":Z
    :cond_2a
    iget-object v6, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    move-result v6

    goto :goto_24
.end method

.method public addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z
    .registers 10
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2366
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2367
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v6, "gps"

    invoke-direct {p0, v0, v6}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2371
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2372
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2373
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2376
    .local v2, "identity":J
    :try_start_16
    invoke-virtual {p0, v4, v5, p2, v0}, checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_25

    move-result v1

    .line 2378
    .local v1, "hasLocationAccess":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    if-eqz v1, :cond_23

    iget-object v6, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    if-nez v6, :cond_2a

    .line 2382
    :cond_23
    const/4 v6, 0x0

    .line 2384
    :goto_24
    return v6

    .line 2378
    .end local v1    # "hasLocationAccess":Z
    :catchall_25
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2384
    .restart local v1    # "hasLocationAccess":Z
    :cond_2a
    iget-object v6, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    move-result v6

    goto :goto_24
.end method

.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    .registers 12
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2291
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2292
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v7, "gps"

    invoke-direct {p0, v0, v7}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2295
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2296
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2297
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2299
    .local v2, "ident":J
    :try_start_17
    invoke-virtual {p0, v4, v5, p2, v0}, checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f

    move-result v7

    if-nez v7, :cond_21

    .line 2303
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2316
    :cond_20
    :goto_20
    return v6

    .line 2303
    :cond_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    iget-object v7, p0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-eqz v7, :cond_20

    .line 2311
    :try_start_28
    iget-object v7, p0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v7, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_34

    .line 2316
    const/4 v6, 0x1

    goto :goto_20

    .line 2303
    :catchall_2f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2312
    :catch_34
    move-exception v1

    .line 2313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "LocationManagerService"

    const-string/jumbo v8, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3044
    invoke-direct {p0, p3}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3067
    :goto_6
    return-void

    .line 3048
    :cond_7
    const-string/jumbo v3, "passive"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3049
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot mock the passive location provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3052
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3053
    .local v0, "identity":J
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3055
    :try_start_1f
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string/jumbo v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string/jumbo v3, "fused"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 3058
    :cond_3a
    iget-object v3, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 3059
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_47

    .line 3060
    invoke-direct {p0, v2}, removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3063
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_47
    invoke-direct {p0, p1, p2}, addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 3064
    invoke-direct {p0}, updateProvidersLocked()V

    .line 3065
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_52

    .line 3066
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 3065
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v3
.end method

.method checkLocationAccess(IILjava/lang/String;I)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 1535
    invoke-static {p4}, resolutionLevelToOp(I)I

    move-result v0

    .line 1536
    .local v0, "op":I
    if-ltz v0, :cond_10

    .line 1537
    iget-object v2, p0, mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1546
    :cond_f
    :goto_f
    return v1

    .line 1542
    :cond_10
    invoke-direct {p0, p1, p2}, getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_f

    .line 1546
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3174
    invoke-direct {p0, p2}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3189
    :goto_6
    return-void

    .line 3178
    :cond_7
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3179
    :try_start_a
    iget-object v3, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 3180
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_36

    .line 3181
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3188
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v3

    .line 3183
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    :try_start_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3184
    .local v0, "identity":J
    iget-object v3, p0, mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3185
    iget-object v3, p0, mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3186
    invoke-direct {p0}, updateProvidersLocked()V

    .line 3187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3188
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_33

    goto :goto_6
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3133
    invoke-direct {p0, p2}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3144
    :goto_6
    return-void

    .line 3137
    :cond_7
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3138
    :try_start_a
    iget-object v1, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3139
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_36

    .line 3140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3143
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v1

    .line 3142
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 3143
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_33

    goto :goto_6
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3209
    invoke-direct {p0, p2}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3220
    :goto_6
    return-void

    .line 3213
    :cond_7
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3214
    :try_start_a
    iget-object v1, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3215
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_36

    .line 3216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3219
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v1

    .line 3218
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 3219
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_33

    goto :goto_6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "android.permission.DUMP"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_3b

    .line 3232
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", uid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    :goto_3a
    return-void

    .line 3238
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3239
    :try_start_42
    const-string v18, "Current Location Manager state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    const-string v18, "  Location Listeners:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, mReceivers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_62
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_92

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$Receiver;

    .line 3242
    .local v15, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    .line 3314
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_8f
    move-exception v18

    monitor-exit v19
    :try_end_91
    .catchall {:try_start_42 .. :try_end_91} :catchall_8f

    throw v18

    .line 3244
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_92
    :try_start_92
    const-string v18, "  Active Records by Provider:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_a9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_120

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3246
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_f1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3248
    .local v16, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "      "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f1

    .line 3251
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_120
    const-string v18, "  Historical Records by Provider:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_13d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3254
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 3255
    .local v11, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 3256
    .local v17, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13d

    .line 3258
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    .end local v11    # "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    .end local v17    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    :cond_1a4
    const-string v18, "  Last Known Locations:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, mLastLocation:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1bb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_204

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3260
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3261
    .local v13, "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    .line 3262
    .local v12, "location":Landroid/location/Location;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bb

    .line 3265
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v12    # "location":Landroid/location/Location;
    .end local v13    # "provider":Ljava/lang/String;
    :cond_204
    const-string v18, "  Last Known Locations Coarse Intervals:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_21b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_264

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3267
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3268
    .restart local v13    # "provider":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    .line 3269
    .restart local v12    # "location":Landroid/location/Location;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21b

    .line 3272
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v12    # "location":Landroid/location/Location;
    .end local v13    # "provider":Ljava/lang/String;
    :cond_264
    const-string v18, "  Location Request List:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mLocationRequests:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    move-object/from16 v0, p0

    iget-object v0, v0, mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, mEnabledProviders:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v18

    if-lez v18, :cond_2ee

    .line 3278
    const-string v18, "  Enabled Providers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    move-object/from16 v0, p0

    iget-object v0, v0, mEnabledProviders:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2c1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2ee

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3280
    .local v7, "i":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c1

    .line 3284
    .end local v7    # "i":Ljava/lang/String;
    :cond_2ee
    move-object/from16 v0, p0

    iget-object v0, v0, mDisabledProviders:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v18

    if-lez v18, :cond_33a

    .line 3285
    const-string v18, "  Disabled Providers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    move-object/from16 v0, p0

    iget-object v0, v0, mDisabledProviders:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_30d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_33a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3287
    .restart local v7    # "i":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30d

    .line 3290
    .end local v7    # "i":Ljava/lang/String;
    :cond_33a
    const-string v18, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3291
    move-object/from16 v0, p0

    iget-object v0, v0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    .line 3292
    move-object/from16 v0, p0

    iget-object v0, v0, mMockProviders:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_391

    .line 3293
    const-string v18, "  Mock Providers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    move-object/from16 v0, p0

    iget-object v0, v0, mMockProviders:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_373
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_391

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3295
    .local v8, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/location/MockProvider;

    const-string v20, "      "

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_373

    .line 3299
    .end local v8    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_391
    const-string v18, "  fudger: "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, mLocationFudger:Lcom/android/server/location/LocationFudger;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3302
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_3c6

    const-string/jumbo v18, "short"

    const/16 v20, 0x0

    aget-object v20, p3, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3c6

    .line 3303
    monitor-exit v19

    goto/16 :goto_3a

    .line 3305
    :cond_3c6
    move-object/from16 v0, p0

    iget-object v0, v0, mProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3d0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_44f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 3306
    .local v13, "provider":Lcom/android/server/location/LocationProviderInterface;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " Internal State"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3307
    instance-of v0, v13, Lcom/android/server/location/LocationProviderProxy;

    move/from16 v18, v0

    if-eqz v18, :cond_43c

    .line 3308
    move-object v0, v13

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    move-object v14, v0

    .line 3309
    .local v14, "proxy":Lcom/android/server/location/LocationProviderProxy;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " ("

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ")"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3311
    .end local v14    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_43c
    const-string v18, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3312
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3d0

    .line 3314
    .end local v13    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :cond_44f
    monitor-exit v19
    :try_end_450
    .catchall {:try_start_92 .. :try_end_450} :catchall_8f

    goto/16 :goto_3a
.end method

.method public geocoderIsPresent()Z
    .registers 2

    .prologue
    .line 3007
    iget-object v0, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1557
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1558
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1559
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1560
    .local v3, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "fused"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1564
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1566
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_34
    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    .line 1568
    sget-boolean v4, D:Z

    if-eqz v4, :cond_52

    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllProviders()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_52
    return-object v2
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 9
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1620
    const/4 v1, 0x0

    .line 1622
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1623
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    .line 1624
    invoke-direct {p0, v0}, pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1625
    sget-boolean v2, D:Z

    if-eqz v2, :cond_41

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    move-object v2, v1

    .line 1636
    :cond_42
    :goto_42
    return-object v2

    .line 1628
    :cond_43
    invoke-virtual {p0, v2, p2}, getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1629
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_84

    .line 1630
    invoke-direct {p0, v0}, pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1631
    sget-boolean v2, D:Z

    if-eqz v2, :cond_82

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    move-object v2, v1

    .line 1632
    goto :goto_42

    .line 1635
    :cond_84
    sget-boolean v3, D:Z

    if-eqz v3, :cond_42

    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBestProvider("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 17
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3013
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_11

    .line 3014
    iget-object v1, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 3017
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 27
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3027
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_1a

    .line 3028
    iget-object v0, p0, mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 3032
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .registers 15
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2182
    sget-boolean v9, D:Z

    if-eqz v9, :cond_1d

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLastLocation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_1d
    if-nez p1, :cond_21

    sget-object p1, DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2184
    :cond_21
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2185
    .local v0, "allowedResolutionLevel":I
    invoke-direct {p0, p2}, checkPackageName(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v9}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2190
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2191
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2192
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2194
    .local v2, "identity":J
    :try_start_3b
    iget-object v9, p0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v9, p2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 2195
    sget-boolean v9, D:Z

    if-eqz v9, :cond_60

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not returning last loc for blacklisted app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_103

    .line 2197
    :cond_60
    const/4 v9, 0x0

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_64
    return-object v9

    .line 2200
    :cond_65
    :try_start_65
    invoke-virtual {p0, v6, v8, p2, v0}, reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_8d

    .line 2201
    sget-boolean v9, D:Z

    if-eqz v9, :cond_88

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not returning last loc for no op app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_65 .. :try_end_88} :catchall_103

    .line 2203
    :cond_88
    const/4 v9, 0x0

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 2206
    :cond_8d
    :try_start_8d
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_103

    .line 2209
    :try_start_90
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 2210
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_99

    const-string/jumbo v4, "fused"

    .line 2211
    :cond_99
    iget-object v9, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/LocationProviderInterface;

    .line 2212
    .local v7, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v7, :cond_a9

    const/4 v9, 0x0

    monitor-exit v10
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_100

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 2214
    :cond_a9
    :try_start_a9
    invoke-direct {p0, v4, v8}, isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_b5

    const/4 v9, 0x0

    monitor-exit v10
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_100

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 2217
    :cond_b5
    const/4 v9, 0x2

    if-ge v0, v9, :cond_c8

    .line 2220
    :try_start_b8
    iget-object v9, p0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 2224
    .local v1, "location":Landroid/location/Location;
    :goto_c0
    if-nez v1, :cond_d1

    .line 2225
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_c4
    .catchall {:try_start_b8 .. :try_end_c4} :catchall_100

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 2222
    .end local v1    # "location":Landroid/location/Location;
    :cond_c8
    :try_start_c8
    iget-object v9, p0, mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .restart local v1    # "location":Landroid/location/Location;
    goto :goto_c0

    .line 2227
    :cond_d1
    const/4 v9, 0x2

    if-ge v0, v9, :cond_ee

    .line 2228
    const-string/jumbo v9, "noGPSLocation"

    invoke-virtual {v1, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 2229
    .local v5, "noGPSLocation":Landroid/location/Location;
    if-eqz v5, :cond_f9

    .line 2230
    new-instance v9, Landroid/location/Location;

    iget-object v11, p0, mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v11, v5}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit v10
    :try_end_e9
    .catchall {:try_start_c8 .. :try_end_e9} :catchall_100

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_64

    .line 2233
    .end local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_ee
    :try_start_ee
    new-instance v9, Landroid/location/Location;

    invoke-direct {v9, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit v10
    :try_end_f4
    .catchall {:try_start_ee .. :try_end_f4} :catchall_100

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_64

    .line 2235
    .restart local v5    # "noGPSLocation":Landroid/location/Location;
    :cond_f9
    :try_start_f9
    monitor-exit v10
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_100

    .line 2236
    const/4 v9, 0x0

    .line 2238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_64

    .line 2235
    .end local v1    # "location":Landroid/location/Location;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "noGPSLocation":Landroid/location/Location;
    .end local v7    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :catchall_100
    move-exception v9

    :try_start_101
    monitor-exit v10
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    :try_start_102
    throw v9
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_103

    .line 2238
    :catchall_103
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2630
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2631
    :try_start_4
    iget-object v3, p0, mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 2632
    monitor-exit v2

    .line 2640
    :cond_10
    :goto_10
    return-object v1

    .line 2634
    :cond_11
    iget-object v3, p0, mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2635
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_28

    .line 2637
    instance-of v2, v0, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v2, :cond_10

    .line 2638
    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 2635
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2606
    iget-object v2, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 2619
    :cond_9
    :goto_9
    return-object v1

    .line 2610
    :cond_a
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v2

    invoke-direct {p0, v2, p1}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2614
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2615
    :try_start_14
    iget-object v3, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2616
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    .line 2618
    if-eqz v0, :cond_9

    .line 2619
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    goto :goto_9

    .line 2616
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 14
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1579
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1581
    .local v0, "allowedResolutionLevel":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1582
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1584
    .local v2, "identity":J
    :try_start_c
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5a

    .line 1585
    :try_start_f
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1586
    .local v5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationProviderInterface;

    .line 1587
    .local v6, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1588
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "fused"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 1591
    invoke-direct {p0, v4}, getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v8

    if-lt v0, v8, :cond_20

    .line 1592
    if-eqz p2, :cond_47

    invoke-direct {p0, v4, v7}, isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1595
    :cond_47
    if-eqz p1, :cond_53

    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v8

    invoke-static {v4, v8, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1599
    :cond_53
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1602
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :catchall_57
    move-exception v8

    monitor-exit v9
    :try_end_59
    .catchall {:try_start_f .. :try_end_59} :catchall_57

    :try_start_59
    throw v8
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 1604
    :catchall_5a
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1602
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5f
    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_57

    .line 1604
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1607
    sget-boolean v8, D:Z

    if-eqz v8, :cond_80

    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getProviders()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_80
    return-object v5
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2647
    const-string/jumbo v5, "fused"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2659
    :goto_a
    return v4

    .line 2649
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2650
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2652
    .local v0, "identity":J
    :try_start_13
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_31

    .line 2653
    :try_start_16
    iget-object v6, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 2654
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_25

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2e

    .line 2659
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    .line 2656
    :cond_25
    :try_start_25
    invoke-direct {p0, p1, v3}, isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v4

    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2e

    .line 2659
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    .line 2657
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 2659
    :catchall_31
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isProviderRunning(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2563
    const-string/jumbo v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, gpsProviderEnable:Z

    .line 2567
    :goto_b
    return v0

    .line 2564
    :cond_c
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, networkProviderEnable:Z

    goto :goto_b

    .line 2565
    :cond_18
    const-string/jumbo v0, "fused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, fusedProviderEnable:Z

    goto :goto_b

    .line 2567
    :cond_24
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .prologue
    .line 1316
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1317
    :try_start_3
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1318
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 1319
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v1, :cond_1d

    .line 1320
    monitor-enter v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_22

    .line 1322
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1323
    .local v2, "identity":J
    # invokes: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->access$1800(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1f

    .line 1327
    .end local v2    # "identity":J
    :cond_1d
    :try_start_1d
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_22

    .line 1328
    return-void

    .line 1325
    :catchall_1f
    move-exception v4

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v4

    .line 1327
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw v4
.end method

.method public notifyNSFLP(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2572
    iget-object v1, p0, mService:Landroid/os/Messenger;

    if-eqz v1, :cond_9

    .line 2574
    :try_start_4
    iget-object v1, p0, mService:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 2581
    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 2575
    :catch_b
    move-exception v0

    .line 2576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2577
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public pauseProvider(Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2508
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pauseProvider, provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v4, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2512
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 2513
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    iput-boolean v7, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 2514
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    .line 2516
    .local v3, "workSource":Landroid/os/WorkSource;
    const-string/jumbo v4, "gps"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2517
    iput-boolean v7, p0, gpsProviderEnable:Z

    .line 2519
    const-string v4, "LocationManagerService"

    const-string/jumbo v5, "pauseProvider, turn off GPS ICON"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHANGE_STATUSBAR_ICON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2521
    .local v1, "pauseIntent":Landroid/content/Intent;
    const-string/jumbo v4, "iconEnable"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2522
    iget-object v4, p0, mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2528
    .end local v1    # "pauseIntent":Landroid/content/Intent;
    :cond_55
    :goto_55
    if-eqz v0, :cond_5a

    invoke-interface {v0, v2, v3}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2529
    :cond_5a
    return-void

    .line 2525
    :cond_5b
    const-string/jumbo v4, "network"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    iput-boolean v7, p0, networkProviderEnable:Z

    goto :goto_55

    .line 2526
    :cond_67
    const-string/jumbo v4, "fused"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    iput-boolean v7, p0, fusedProviderEnable:Z

    goto :goto_55
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 1651
    iget-object v2, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1652
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_24

    .line 1653
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1656
    :cond_24
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v1

    .line 1658
    .local v1, "result":Z
    sget-boolean v2, D:Z

    if-eqz v2, :cond_61

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "providerMeetsCriteria("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_61
    return v1
.end method

.method public removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/location/IExerciseLocationListener;

    .prologue
    .line 2443
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2445
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    move-result-wide v2

    .line 2447
    .local v2, "identity":J
    :try_start_7
    iget-object v1, p0, mExerciseLocationProvider:Landroid/location/IExerciseLocationProvider;

    invoke-interface {v1, p1}, Landroid/location/IExerciseLocationProvider;->removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_11
    .catchall {:try_start_7 .. :try_end_c} :catchall_21

    .line 2451
    :try_start_c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2453
    :goto_f
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_1e

    .line 2454
    return-void

    .line 2448
    :catch_11
    move-exception v0

    .line 2449
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v1, "LocationManagerService"

    const-string/jumbo v5, "mExerciseLocationProvider.removeExerciseLocationListener failed"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_21

    .line 2451
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .line 2453
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "identity":J
    :catchall_1e
    move-exception v1

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v1

    .line 2451
    .restart local v2    # "identity":J
    :catchall_21
    move-exception v1

    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1e
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 9
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2274
    invoke-direct {p0, p2}, checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2275
    invoke-direct {p0, p3}, checkPackageName(Ljava/lang/String;)V

    .line 2277
    sget-boolean v2, D:Z

    if-eqz v2, :cond_2d

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeGeofence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2282
    .local v0, "identity":J
    :try_start_31
    iget-object v2, p0, mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3a

    .line 2284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2286
    return-void

    .line 2284
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;

    .prologue
    .line 2357
    iget-object v0, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    if-eqz v0, :cond_9

    .line 2358
    iget-object v0, p0, mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    .line 2360
    :cond_9
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;

    .prologue
    .line 2389
    iget-object v0, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    if-eqz v0, :cond_9

    .line 2390
    iget-object v0, p0, mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    .line 2392
    :cond_9
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 2321
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2323
    :try_start_3
    iget-object v1, p0, mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_14

    .line 2327
    :goto_8
    :try_start_8
    monitor-exit v2

    .line 2328
    return-void

    .line 2324
    :catch_a
    move-exception v0

    .line 2325
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string/jumbo v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2327
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3082
    invoke-direct {p0, p2}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3111
    :goto_6
    return-void

    .line 3086
    :cond_7
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3090
    :try_start_a
    invoke-virtual {p0, p1, p2}, clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    invoke-virtual {p0, p1, p2}, clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    invoke-virtual {p0, p1, p2}, clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    iget-object v4, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 3095
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_3f

    .line 3096
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" unknown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3110
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_3c
    move-exception v4

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3c

    throw v4

    .line 3098
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_3f
    :try_start_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3099
    .local v0, "identity":J
    iget-object v4, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v4}, removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3102
    iget-object v4, p0, mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 3103
    .local v3, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_5b

    .line 3104
    invoke-direct {p0, v3}, addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3106
    :cond_5b
    iget-object v4, p0, mLastLocation:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    iget-object v4, p0, mLastLocationCoarseInterval:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    invoke-direct {p0}, updateProvidersLocked()V

    .line 3109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3110
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_3f .. :try_end_6e} :catchall_3c

    goto :goto_6
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 16
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2099
    invoke-direct {p0, p3}, checkPackageName(Ljava/lang/String;)V

    .line 2101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2102
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2104
    .local v4, "uid":I
    iget-object v11, p0, mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2105
    const/4 v6, 0x0

    .line 2106
    .local v6, "workSource":Landroid/os/WorkSource;
    const/4 v7, 0x0

    .local v7, "hideFromAppOps":Z
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2107
    :try_start_14
    invoke-direct/range {v0 .. v7}, checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v10

    .line 2111
    .local v10, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_29

    move-result-wide v8

    .line 2113
    .local v8, "identity":J
    :try_start_1c
    invoke-direct {p0, v10}, removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_24

    .line 2115
    :try_start_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    monitor-exit v11

    .line 2118
    return-void

    .line 2115
    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2117
    .end local v8    # "identity":J
    .end local v10    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_29
    move-exception v0

    monitor-exit v11
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2724
    invoke-direct {p0}, checkCallerIsProvider()V

    .line 2726
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2727
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping incomplete location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :goto_22
    return-void

    .line 2731
    :cond_23
    iget-object v2, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2732
    iget-object v2, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2733
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_38

    :goto_30
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2734
    iget-object v1, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_22

    .line 2733
    :cond_38
    const/4 v1, 0x0

    goto :goto_30
.end method

.method reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 1520
    invoke-static {p4}, resolutionLevelToOp(I)I

    move-result v0

    .line 1521
    .local v0, "op":I
    if-ltz v0, :cond_10

    .line 1522
    iget-object v2, p0, mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1531
    :cond_f
    :goto_f
    return v1

    .line 1527
    :cond_10
    invoke-direct {p0, p1, p2}, getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_f

    .line 1531
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public requestExerciseLocationUpdates(II)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "updateRateMs"    # I

    .prologue
    .line 2398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2399
    .local v2, "identity":J
    iget-object v4, p0, mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v5, "gps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider;

    .line 2401
    .local v1, "gp":Lcom/android/server/location/GpsLocationProvider;
    :try_start_f
    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->requestExerciseLocation(II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_16
    .catchall {:try_start_f .. :try_end_12} :catchall_24

    .line 2405
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2407
    :goto_15
    return-void

    .line 2402
    :catch_16
    move-exception v0

    .line 2403
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    const-string v4, "LocationManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_24

    .line 2405
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestFlushExerciseLocation()V
    .registers 5

    .prologue
    .line 2458
    iget-object v2, p0, mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GpsLocationProvider;

    .line 2460
    .local v1, "gp":Lcom/android/server/location/GpsLocationProvider;
    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider;->flushExerciseLocation()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 2464
    :goto_e
    return-void

    .line 2461
    :catch_f
    move-exception v0

    .line 2462
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 15
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2245
    if-nez p1, :cond_4

    sget-object p1, DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2246
    :cond_4
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v4

    .line 2247
    .local v4, "allowedResolutionLevel":I
    invoke-direct {p0, v4}, checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 2248
    invoke-direct {p0, p3}, checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2249
    invoke-direct {p0, p4}, checkPackageName(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2252
    invoke-direct {p0, p1, v4}, createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2254
    .local v1, "sanitizedRequest":Landroid/location/LocationRequest;
    sget-boolean v0, D:Z

    if-eqz v0, :cond_4d

    const-string v0, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGeofence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2258
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_60

    .line 2260
    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :goto_5f
    return-void

    .line 2263
    :cond_60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2265
    .local v8, "identity":J
    :try_start_64
    iget-object v0, p0, mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_70

    .line 2268
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5f

    :catchall_70
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 20
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1994
    if-nez p1, :cond_4

    sget-object p1, DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 1995
    :cond_4
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, checkPackageName(Ljava/lang/String;)V

    .line 1996
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v10

    .line 1997
    .local v10, "allowedResolutionLevel":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v10, v2}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1999
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v8

    .line 2000
    .local v8, "workSource":Landroid/os/WorkSource;
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 2001
    invoke-direct {p0}, checkDeviceStatsAllowed()V

    .line 2003
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v9

    .line 2004
    .local v9, "hideFromAppOps":Z
    if-eqz v9, :cond_2c

    .line 2005
    invoke-direct {p0}, checkUpdateAppOpsAllowed()V

    .line 2007
    :cond_2c
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v11

    .line 2009
    .local v11, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2010
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2012
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2016
    .local v12, "identity":J
    :try_start_3e
    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v6, v0, v10}, checkLocationAccess(IILjava/lang/String;I)Z

    .line 2018
    iget-object v14, p0, mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_60

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    .line 2019
    :try_start_4d
    invoke-direct/range {v2 .. v9}, checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v4

    .local v4, "recevier":Lcom/android/server/LocationManagerService$Receiver;
    move-object v2, p0

    move-object v3, v11

    move-object/from16 v7, p4

    .line 2021
    invoke-direct/range {v2 .. v7}, requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    .line 2022
    monitor-exit v14
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_5d

    .line 2024
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    return-void

    .line 2022
    .end local v4    # "recevier":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v14
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 2024
    :catchall_60
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeProvider(Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2533
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resumeProvider, provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v4, p0, mProviderRequestMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/ProviderRequest;

    .line 2536
    .local v1, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    iget-object v4, p0, mWorkSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 2538
    .local v3, "workSource":Landroid/os/WorkSource;
    iget-object v4, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2540
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    const-string/jumbo v4, "gps"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2541
    iput-boolean v7, p0, gpsProviderEnable:Z

    .line 2543
    if-eqz v3, :cond_61

    .line 2544
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-lez v4, :cond_67

    .line 2545
    const-string v4, "LocationManagerService"

    const-string/jumbo v5, "resumeProvider, workSource.size() > 0, turn on GPS ICON"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHANGE_STATUSBAR_ICON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2547
    .local v2, "resumeIntent":Landroid/content/Intent;
    const-string/jumbo v4, "iconEnable"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2548
    iget-object v4, p0, mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2558
    .end local v2    # "resumeIntent":Landroid/content/Intent;
    :cond_61
    :goto_61
    if-eqz v0, :cond_66

    invoke-interface {v0, v1, v3}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2559
    :cond_66
    return-void

    .line 2550
    :cond_67
    const-string v4, "LocationManagerService"

    const-string/jumbo v5, "resumeProvider, workSource.size() = 0, do not turn on GPS ICON"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 2555
    :cond_70
    const-string/jumbo v4, "network"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    iput-boolean v7, p0, networkProviderEnable:Z

    goto :goto_61

    .line 2556
    :cond_7c
    const-string/jumbo v4, "fused"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    iput-boolean v7, p0, fusedProviderEnable:Z

    goto :goto_61
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2469
    if-nez p1, :cond_8

    .line 2471
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2473
    :cond_8
    invoke-direct {p0}, getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2477
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_21

    .line 2479
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2482
    :cond_21
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2483
    :try_start_24
    iget-object v1, p0, mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2484
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_31

    const/4 v1, 0x0

    monitor-exit v2

    .line 2486
    :goto_30
    return v1

    :cond_31
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_30

    .line 2487
    .end local v0    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public sendNiResponse(II)Z
    .registers 6
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .prologue
    .line 2587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_12

    .line 2588
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2592
    :cond_12
    :try_start_12
    iget-object v1, p0, mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    .line 2595
    :goto_18
    return v1

    .line 2593
    :catch_19
    move-exception v0

    .line 2594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3148
    invoke-direct {p0, p3}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3170
    :goto_6
    return-void

    .line 3152
    :cond_7
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3153
    :try_start_a
    iget-object v3, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 3154
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_36

    .line 3155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3169
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v3

    .line 3157
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    :try_start_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3158
    .local v0, "identity":J
    if-eqz p2, :cond_51

    .line 3159
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 3160
    iget-object v3, p0, mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3161
    iget-object v3, p0, mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3167
    :goto_49
    invoke-direct {p0}, updateProvidersLocked()V

    .line 3168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3169
    monitor-exit v4

    goto :goto_6

    .line 3163
    :cond_51
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 3164
    iget-object v3, p0, mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3165
    iget-object v3, p0, mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_33

    goto :goto_49
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3115
    invoke-direct {p0, p3}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3129
    :goto_6
    return-void

    .line 3119
    :cond_7
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3120
    :try_start_a
    iget-object v3, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 3121
    .local v2, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_36

    .line 3122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3128
    .end local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v3

    .line 3125
    .restart local v2    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    :try_start_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3126
    .local v0, "identity":J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 3127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3128
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_33

    goto :goto_6
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .registers 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .param p6, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3194
    invoke-direct {p0, p6}, canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3205
    :goto_6
    return-void

    .line 3198
    :cond_7
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3199
    :try_start_a
    iget-object v1, p0, mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3200
    .local v0, "mockProvider":Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_36

    .line 3201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3204
    .end local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v1

    .line 3203
    .restart local v0    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    :try_start_36
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 3204
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_33

    goto :goto_6
.end method

.method public systemRunning()V
    .registers 16

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    .line 309
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_5
    sget-boolean v0, D:Z

    if-eqz v0, :cond_11

    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "systemReady()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_11
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 316
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 319
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 322
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v5}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 323
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v5}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 324
    iget-object v0, p0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 325
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v2, v5}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 328
    sget-object v0, systemApplist:Ljava/util/ArrayList;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, systemApplist:Ljava/util/ArrayList;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v7, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v7, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 344
    .local v7, "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v7}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 346
    new-instance v10, Lcom/android/server/LocationManagerService$3;

    invoke-direct {v10, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 355
    .local v10, "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 357
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 358
    iget v0, p0, mCurrentUserId:I

    invoke-virtual {p0, v0}, updateUserProfiles(I)V

    .line 362
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "vendor":Ljava/lang/String;
    const-string v0, "CHN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "CHC"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "CHU"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "CTC"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    const-string v0, "CHM"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 364
    :cond_c0
    invoke-direct {p0}, loadProvidersLocked_CHN()V

    .line 369
    :goto_c3
    invoke-direct {p0}, updateProvidersLocked()V

    .line 372
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.sec.feature.nsflp"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 373
    const-string v0, "LocationManagerService"

    const-string v2, "Try to bind NSMonitorService"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v6, Landroid/content/ComponentName;

    const-string v0, "com.sec.location.nsflp2"

    const-string v2, "com.sec.location.nsflp2.nsmonitor.NSMonitorService"

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v6, "cName":Landroid/content/ComponentName;
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, p0, mConnection:Landroid/content/ServiceConnection;

    const/4 v13, 0x1

    invoke-virtual {v0, v2, v5, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 378
    iget-object v0, p0, mProviderRequestMap:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    new-instance v5, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v5}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, mProviderRequestMap:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    new-instance v5, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v5}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, mProviderRequestMap:Ljava/util/HashMap;

    const-string/jumbo v2, "fused"

    new-instance v5, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v5}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, mWorkSourceMap:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, mWorkSourceMap:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, mWorkSourceMap:Ljava/util/HashMap;

    const-string/jumbo v2, "fused"

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v6    # "cName":Landroid/content/ComponentName;
    :cond_13f
    monitor-exit v1
    :try_end_140
    .catchall {:try_start_5 .. :try_end_140} :catchall_1c9

    .line 389
    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v11

    .line 390
    .local v11, "sLocation":Lcom/samsung/location/ISLocationManager;
    if-eqz v11, :cond_16d

    .line 391
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "sLocation is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupportedForSec()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 406
    :goto_15b
    iget-object v0, p0, mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/GpsLocationProvider;

    .line 408
    .local v9, "gp":Lcom/android/server/location/GpsLocationProvider;
    :try_start_166
    invoke-virtual {v9}, Lcom/android/server/location/GpsLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/samsung/location/ISLocationManager;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_16d} :catch_1d4

    .line 415
    .end local v9    # "gp":Lcom/android/server/location/GpsLocationProvider;
    :cond_16d
    :goto_16d
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/LocationManagerService$4;

    iget-object v5, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v14, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 425
    iget-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 428
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v0, "ATT"

    sget-object v1, mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 435
    const-string v0, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    :cond_1b5
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 478
    return-void

    .line 366
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "sLocation":Lcom/samsung/location/ISLocationManager;
    :cond_1c4
    :try_start_1c4
    invoke-direct {p0}, loadProvidersLocked()V

    goto/16 :goto_c3

    .line 386
    .end local v7    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    .end local v10    # "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    .end local v12    # "vendor":Ljava/lang/String;
    :catchall_1c9
    move-exception v0

    monitor-exit v1
    :try_end_1cb
    .catchall {:try_start_1c4 .. :try_end_1cb} :catchall_1c9

    throw v0

    .line 403
    .restart local v7    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    .restart local v10    # "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    .restart local v11    # "sLocation":Lcom/samsung/location/ISLocationManager;
    .restart local v12    # "vendor":Ljava/lang/String;
    :cond_1cc
    const-string v0, "LocationManagerService"

    const-string v1, "FlpHardware is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 409
    .restart local v9    # "gp":Lcom/android/server/location/GpsLocationProvider;
    :catch_1d4
    move-exception v8

    .line 410
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "LocationManagerService"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d
.end method

.method updateUserProfiles(I)V
    .registers 7
    .param p1, "currentUserId"    # I

    .prologue
    .line 506
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 508
    :try_start_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, mCurrentUserProfiles:[I

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v2, p0, mCurrentUserProfiles:[I

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 510
    iget-object v4, p0, mCurrentUserProfiles:[I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    aput v2, v4, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 512
    :cond_26
    monitor-exit v3

    .line 513
    return-void

    .line 512
    .end local v0    # "i":I
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw v2
.end method
