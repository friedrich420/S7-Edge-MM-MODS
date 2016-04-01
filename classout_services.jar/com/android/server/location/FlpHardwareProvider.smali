.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 296
    invoke-static {}, nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v11, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 47
    iput-object v11, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 51
    iput v12, p0, mVersion:I

    .line 57
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, mLocationSinkLock:Ljava/lang/Object;

    .line 351
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 436
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    .line 82
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 85
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 87
    .local v0, "manager":Landroid/location/LocationManager;
    const-wide/16 v2, 0x0

    .line 88
    .local v2, "minTime":J
    const/4 v1, 0x0

    .line 89
    .local v1, "minDistance":F
    const/4 v4, 0x0

    .line 90
    .local v4, "oneShot":Z
    const-string/jumbo v6, "passive"

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v7, v10}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v5

    .line 97
    .local v5, "request":Landroid/location/LocationRequest;
    invoke-virtual {v5, v12}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 98
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v11}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    iget-object v0, p0, mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/FlpHardwareProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/FlpHardwareProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/FlpHardwareProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/FlpHardwareProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # [I

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/FlpHardwareProvider;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    iget-object v0, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 44
    iput-object p1, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, maybeSendCapabilities()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/FlpHardwareProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeStopBatching(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 44
    invoke-direct {p0}, nativeFlushBatchedLocations()V

    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .registers 3

    .prologue
    .line 507
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_15

    .line 508
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 509
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 512
    :cond_15
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_10

    .line 74
    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 75
    sget-object v0, sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, nativeInit()V

    .line 78
    :cond_10
    sget-object v0, sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method private getVersion()I
    .registers 3

    .prologue
    .line 171
    iget-object v1, p0, mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_3
    iget-boolean v0, p0, mHaveBatchingCapabilities:Z

    if-eqz v0, :cond_b

    .line 173
    iget v0, p0, mVersion:I

    monitor-exit v1

    .line 176
    :goto_a
    return v0

    .line 175
    :cond_b
    monitor-exit v1

    .line 176
    const/4 v0, 0x1

    goto :goto_a

    .line 175
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedForSec()Z
    .registers 1

    .prologue
    .line 112
    invoke-static {}, nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private maybeSendCapabilities()V
    .registers 7

    .prologue
    .line 190
    iget-object v5, p0, mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v5

    .line 191
    :try_start_3
    iget-object v3, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 192
    .local v3, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    iget-boolean v2, p0, mHaveBatchingCapabilities:Z

    .line 193
    .local v2, "haveBatchingCapabilities":Z
    iget v0, p0, mBatchingCapabilities:I

    .line 194
    .local v0, "batchingCapabilities":I
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    .line 196
    if-eqz v3, :cond_11

    if-eqz v2, :cond_11

    .line 197
    :try_start_e
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_15

    .line 202
    :cond_11
    :goto_11
    return-void

    .line 194
    .end local v0    # "batchingCapabilities":I
    .end local v2    # "haveBatchingCapabilities":Z
    .end local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_12
    move-exception v4

    :try_start_13
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v4

    .line 199
    .restart local v0    # "batchingCapabilities":I
    .restart local v2    # "haveBatchingCapabilities":Z
    .restart local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_15
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FlpHardwareProvider"

    const-string v5, "RemoteException calling onLocationAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .prologue
    .line 140
    iget-object v1, p0, mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mHaveBatchingCapabilities:Z

    .line 142
    iput p1, p0, mBatchingCapabilities:I

    .line 143
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    .line 145
    invoke-direct {p0}, maybeSendCapabilities()V

    .line 147
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_19

    .line 148
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 150
    :cond_19
    return-void

    .line 143
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private onBatchingStatus(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 154
    iget-object v3, p0, mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 155
    :try_start_3
    iget-object v1, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 156
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 158
    if-eqz v1, :cond_b

    .line 159
    :try_start_8
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_f

    .line 164
    :cond_b
    :goto_b
    return-void

    .line 156
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_c
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v2

    .line 161
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_f
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onBatchingStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private onDataReport(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v3, p0, mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 208
    :try_start_3
    iget-object v1, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 209
    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    .line 211
    :try_start_6
    iget-object v2, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_d

    .line 212
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_11

    .line 217
    :cond_d
    :goto_d
    return-void

    .line 209
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2

    .line 214
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_11
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private onGeofenceAdd(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 266
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 269
    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "updatedLocation":Landroid/location/Location;
    if-eqz p3, :cond_7

    .line 241
    invoke-direct {p0, p3}, updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    .line 245
    :cond_7
    packed-switch p1, :pswitch_data_30

    .line 253
    const-string v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid FlpHal Geofence monitor status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x1

    .line 258
    .local v0, "monitorStatus":I
    :goto_23
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 263
    return-void

    .line 247
    .end local v0    # "monitorStatus":I
    :pswitch_2c
    const/4 v0, 0x1

    .line 248
    .restart local v0    # "monitorStatus":I
    goto :goto_23

    .line 250
    .end local v0    # "monitorStatus":I
    :pswitch_2e
    const/4 v0, 0x0

    .line 251
    .restart local v0    # "monitorStatus":I
    goto :goto_23

    .line 245
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2e
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 278
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 281
    return-void
.end method

.method private onGeofenceRemove(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 272
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 275
    return-void
.end method

.method private onGeofenceResume(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 284
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 287
    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .registers 15
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "sourcesUsed"    # I

    .prologue
    .line 228
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-direct {p0, p2}, updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 235
    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .registers 3
    .param p1, "capabilities"    # I

    .prologue
    .line 290
    invoke-direct {p0}, getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    .line 291
    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .registers 10
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 120
    move-object v0, p1

    .local v0, "arr$":[Landroid/location/Location;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 121
    .local v4, "location":Landroid/location/Location;
    const-string/jumbo v6, "fused"

    invoke-virtual {v4, v6}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 127
    .end local v4    # "location":Landroid/location/Location;
    :cond_17
    iget-object v7, p0, mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v7

    .line 128
    :try_start_1a
    iget-object v5, p0, mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 129
    .local v5, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_23

    .line 131
    if-eqz v5, :cond_22

    .line 132
    :try_start_1f
    invoke-interface {v5, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_26

    .line 137
    :cond_22
    :goto_22
    return-void

    .line 129
    .end local v5    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_23
    move-exception v6

    :try_start_24
    monitor-exit v7
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v6

    .line 134
    .restart local v5    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_26
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "FlpHardwareProvider"

    const-string v7, "RemoteException calling onLocationAvailable"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 180
    iput p1, p0, mVersion:I

    .line 181
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_f

    .line 182
    iget-object v0, p0, mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 184
    :cond_f
    return-void
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .registers 7
    .param p0, "flpHalResult"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 516
    packed-switch p0, :pswitch_data_28

    .line 532
    const-string v3, "FlpHardwareProvider"

    const-string v4, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 533
    :goto_1a
    :pswitch_1a
    return v0

    :pswitch_1b
    move v0, v1

    .line 520
    goto :goto_1a

    .line 522
    :pswitch_1d
    const/4 v0, 0x6

    goto :goto_1a

    :pswitch_1f
    move v0, v2

    .line 524
    goto :goto_1a

    .line 526
    :pswitch_21
    const/4 v0, 0x2

    goto :goto_1a

    .line 528
    :pswitch_23
    const/4 v0, 0x3

    goto :goto_1a

    .line 530
    :pswitch_25
    const/4 v0, 0x4

    goto :goto_1a

    .line 516
    nop

    :pswitch_data_28
    .packed-switch -0x6
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 538
    const-string/jumbo v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 541
    return-object p1
.end method


# virtual methods
.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
