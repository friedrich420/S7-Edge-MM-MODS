.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Landroid/app/enterprise/geofencing/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;-><init>()V

    .line 91
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 95
    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 96
    iput-object v1, p0, mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mActiveGeofenceList:Ljava/util/HashMap;

    .line 134
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 118
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 119
    invoke-direct {p0}, initializeHandlerThread()V

    .line 120
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, loadGeofenceActiveList(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 87
    invoke-direct {p0}, checkMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 87
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .prologue
    .line 87
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 87
    iput-object p1, p0, mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/BoundingBox;"
        }
    .end annotation

    .prologue
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x0

    .line 1692
    const/4 v0, 0x0

    .line 1693
    .local v0, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    if-eqz p1, :cond_61

    .line 1694
    new-instance v0, Landroid/app/enterprise/geofencing/BoundingBox;

    .end local v0    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/enterprise/geofencing/BoundingBox;-><init>(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)V

    .line 1695
    .restart local v0    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_61

    .line 1696
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1698
    .local v2, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v4, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v3, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v3, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3a

    .line 1699
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1701
    :cond_3a
    iget-wide v4, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v3, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v3, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_46

    .line 1702
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1704
    :cond_46
    iget-wide v4, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v3, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v3, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_52

    .line 1705
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1707
    :cond_52
    iget-wide v4, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v3, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v3, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5e

    .line 1709
    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1695
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1713
    .end local v1    # "i":I
    .end local v2    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_61
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z
    .registers 11
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "boundingBox"    # Landroid/app/enterprise/geofencing/BoundingBox;

    .prologue
    const/4 v4, 0x0

    .line 1394
    if-eqz p1, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    if-nez v5, :cond_8

    .line 1403
    :cond_7
    :goto_7
    return v4

    .line 1396
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 1397
    .local v0, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 1399
    .local v2, "lng":D
    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v5, v2, v6

    if-gtz v5, :cond_7

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v5, v2, v6

    if-ltz v5, :cond_7

    .line 1401
    const/4 v4, 0x1

    goto :goto_7
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z
    .registers 33
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "cfence"    # Landroid/app/enterprise/geofencing/CircularGeofence;

    .prologue
    .line 1357
    const-wide v2, 0x40b8e30000000000L    # 6371.0

    .line 1359
    .local v2, "R":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 1360
    .local v18, "pointlat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1361
    .local v20, "pointlong":D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 1362
    .local v4, "centerlat":D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 1364
    .local v6, "centerlong":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1365
    .local v12, "lat2":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 1366
    .local v16, "lon2":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1367
    .local v10, "lat1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 1369
    .local v14, "lon1":D
    const-wide v24, 0x409925604189374cL    # 1609.344

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .line 1371
    .local v22, "radInMiles":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v28, v16, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    mul-double v24, v24, v2

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v8, v24, v26

    .line 1374
    .local v8, "distance":D
    cmpg-double v24, v8, v22

    if-gtz v24, :cond_70

    .line 1375
    const/16 v24, 0x1

    .line 1378
    :goto_6f
    return v24

    :cond_70
    const/16 v24, 0x0

    goto :goto_6f
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z
    .registers 12
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "lFence"    # Landroid/app/enterprise/geofencing/LinearGeofence;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1510
    iget-object v1, p2, Landroid/app/enterprise/geofencing/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 1511
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x1

    .line 1512
    .local v6, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v7, :cond_19

    move v6, v7

    .line 1514
    :goto_15
    if-ne v6, v7, :cond_1b

    move v0, v7

    .line 1518
    :goto_18
    return v0

    :cond_19
    move v6, v8

    .line 1512
    goto :goto_15

    :cond_1b
    move v0, v8

    .line 1518
    goto :goto_18
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .registers 8
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sendIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1283
    monitor-enter p0

    const/4 v2, 0x0

    .line 1285
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v4, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4f

    .line 1289
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_f
    iget-object v4, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1291
    .local v1, "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1294
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/Geofence;

    invoke-direct {p0, p1, v4}, checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1295
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    goto :goto_19

    .line 1283
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_37
    move-exception v4

    move-object v2, v3

    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_39
    monitor-exit p0

    throw v4

    .line 1299
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3b
    const/4 v4, 0x1

    if-ne p2, v4, :cond_41

    .line 1300
    :try_start_3e
    invoke-direct {p0, v3}, sendIntenttoAdmins(Ljava/util/List;)V

    .line 1303
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_37

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x0

    :goto_48
    move-object v2, v3

    .line 1306
    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_49
    monitor-exit p0

    return-object v4

    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4b
    move-object v4, v3

    .line 1303
    goto :goto_48

    .end local v1    # "idItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4d
    move-object v4, v2

    .line 1306
    goto :goto_49

    .line 1283
    :catchall_4f
    move-exception v4

    goto :goto_39
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z
    .registers 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "pFence"    # Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1460
    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 1461
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v8, 0x1

    .line 1463
    .local v8, "status":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_19

    move v8, v9

    .line 1465
    :goto_15
    if-ne v8, v9, :cond_1b

    move v0, v9

    .line 1473
    :goto_18
    return v0

    :cond_19
    move v8, v10

    .line 1463
    goto :goto_15

    .line 1468
    :cond_1b
    iget-object v3, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_31

    move v8, v9

    .line 1470
    :goto_2d
    if-ne v8, v9, :cond_33

    move v0, v9

    .line 1471
    goto :goto_18

    :cond_31
    move v8, v10

    .line 1468
    goto :goto_2d

    :cond_33
    move v0, v10

    .line 1473
    goto :goto_18
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .registers 20
    .param p2, "testx"    # D
    .param p4, "testy"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    .prologue
    .line 1417
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    .line 1418
    .local v0, "c":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1419
    .local v4, "nvert":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [D

    .line 1420
    .local v5, "vertx":[D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    .line 1422
    .local v6, "verty":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2f

    .line 1423
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v8, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    aput-wide v8, v5, v1

    .line 1424
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v8, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    aput-wide v8, v6, v1

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1437
    :cond_2f
    const/4 v1, 0x0

    add-int/lit8 v3, v4, -0x1

    .local v3, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_33
    if-ge v2, v4, :cond_6a

    .line 1438
    aget-wide v8, v6, v2

    cmpl-double v7, v8, p4

    if-lez v7, :cond_64

    const/4 v7, 0x1

    :goto_3c
    aget-wide v8, v6, v3

    cmpl-double v8, v8, p4

    if-lez v8, :cond_66

    const/4 v8, 0x1

    :goto_43
    if-eq v7, v8, :cond_5f

    aget-wide v8, v5, v3

    aget-wide v10, v5, v2

    sub-double/2addr v8, v10

    aget-wide v10, v6, v2

    sub-double v10, p4, v10

    mul-double/2addr v8, v10

    aget-wide v10, v6, v3

    aget-wide v12, v6, v2

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    aget-wide v10, v5, v2

    add-double/2addr v8, v10

    cmpg-double v7, p2, v8

    if-gtz v7, :cond_5f

    .line 1441
    if-nez v0, :cond_68

    .line 1442
    const/4 v0, 0x1

    .line 1437
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v3, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_33

    .line 1438
    :cond_64
    const/4 v7, 0x0

    goto :goto_3c

    :cond_66
    const/4 v8, 0x0

    goto :goto_43

    .line 1444
    :cond_68
    const/4 v0, 0x0

    goto :goto_5f

    .line 1447
    :cond_6a
    return v0
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Landroid/app/enterprise/geofencing/Geofence;)Z
    .registers 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "fence"    # Landroid/app/enterprise/geofencing/Geofence;

    .prologue
    const/4 v1, 0x1

    .line 1319
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    if-ne v0, v1, :cond_f

    .line 1320
    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1338
    :goto_e
    return v0

    .line 1323
    .restart local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_f
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_29

    move-object v0, p2

    .line 1324
    check-cast v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1325
    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1326
    goto :goto_e

    .line 1330
    .restart local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_29
    iget v0, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_43

    move-object v0, p2

    .line 1331
    check-cast v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    iget-object v0, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v0}, checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1332
    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p2    # "fence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-direct {p0, p1, p2}, checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    .line 1333
    goto :goto_e

    .line 1338
    :cond_43
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private declared-synchronized checkMonitoring()V
    .registers 9

    .prologue
    .line 1894
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_8

    .line 1895
    invoke-direct {p0}, setLocationManager()V

    .line 1899
    :cond_8
    sget-object v1, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v1, :cond_16

    .line 1900
    iget-object v1, p0, mLocationManager:Landroid/location/LocationManager;

    sget-object v2, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1901
    const/4 v1, 0x0

    sput-object v1, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1904
    :cond_16
    iget-object v1, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_78

    move-result v1

    if-eqz v1, :cond_20

    .line 1927
    :goto_1e
    monitor-exit p0

    return-void

    .line 1910
    :cond_20
    :try_start_20
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 1911
    .local v5, "criteria":Landroid/location/Criteria;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1912
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1913
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1914
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 1915
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1917
    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v1, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1919
    iget-object v1, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, getEffectiveMinTimeParameter()J

    move-result-wide v2

    invoke-direct {p0}, getEffectiveMinDistanceParameter()F

    move-result v4

    sget-object v6, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v7, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57
    .catchall {:try_start_20 .. :try_end_56} :catchall_78

    goto :goto_1e

    .line 1922
    .end local v5    # "criteria":Landroid/location/Criteria;
    :catch_57
    move-exception v0

    .line 1923
    .local v0, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v1, "GeofenceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMonitoring - EX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const/4 v1, 0x0

    sput-object v1, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    .line 1925
    const/4 v1, -0x1

    invoke-direct {p0, v1}, deviceLocationUnavailableMessage(I)V
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_78

    goto :goto_1e

    .line 1894
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;
    .registers 16
    .param p1, "lFence"    # Landroid/app/enterprise/geofencing/LinearGeofence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/geofencing/LinearGeofence;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 1240
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    add-int/lit8 v1, v3, -0x1

    .line 1241
    .local v1, "j":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v8, "pointList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    :goto_f
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_52

    .line 1244
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v4, v10, v12

    .line 1245
    .local v4, "midValueLat":D
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v6, v10, v12

    .line 1246
    .local v6, "midValueLong":D
    new-instance v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 1247
    .local v2, "lTemp":Landroid/app/enterprise/geofencing/LatLongPoint;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 v1, v1, -0x1

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1251
    .end local v2    # "lTemp":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v4    # "midValueLat":D
    .end local v6    # "midValueLong":D
    :cond_52
    return-object v8
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .registers 52
    .param p2, "graceDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v14, "frontList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v34, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v20, "listAbove":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v32, 0x0

    .local v32, "slopePerpendicularAB":D
    const-wide/16 v8, 0x0

    .line 822
    .local v8, "distanceToPoint":D
    const-wide v18, 0x3f747ae147ae147bL    # 0.005

    .line 824
    .local v18, "latitudeNoise":D
    const-wide v22, 0x3f747ae147ae147bL    # 0.005

    .line 830
    .local v22, "longitudeNoise":D
    const-wide v42, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double p2, p2, v42

    .line 835
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v15, v0, :cond_1cc

    .line 836
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move/from16 v0, v42

    if-ne v15, v0, :cond_148

    .line 837
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 838
    .local v6, "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 844
    .local v7, "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    :goto_4b
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    sub-double v42, v42, v44

    const-wide/16 v44, 0x0

    cmpl-double v42, v42, v44

    if-nez v42, :cond_6f

    .line 845
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_15e

    .line 846
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    sub-double v42, v42, v18

    move-wide/from16 v0, v42

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 851
    :cond_6f
    :goto_6f
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    sub-double v42, v42, v44

    const-wide/16 v44, 0x0

    cmpl-double v42, v42, v44

    if-nez v42, :cond_93

    .line 852
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_16a

    .line 853
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    sub-double v42, v42, v22

    move-wide/from16 v0, v42

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 858
    :cond_93
    :goto_93
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    sub-double v42, v42, v44

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v46, v0

    sub-double v44, v44, v46

    div-double v30, v42, v44

    .line 860
    .local v30, "slopeAB":D
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v21, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    add-double v42, v42, v44

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v42, v42, v44

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v46, v0

    add-double v44, v44, v46

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    div-double v44, v44, v46

    move-object/from16 v0, v21

    move-wide/from16 v1, v42

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 868
    .local v21, "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    div-double v42, v42, v30

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v32, v0

    .line 870
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    mul-double v44, v32, v32

    add-double v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v42

    div-double v8, p2, v42

    .line 874
    const-wide/16 v42, 0x0

    cmpl-double v42, v30, v42

    if-lez v42, :cond_102

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    cmpg-double v42, v42, v44

    if-ltz v42, :cond_114

    :cond_102
    const-wide/16 v42, 0x0

    cmpg-double v42, v30, v42

    if-gez v42, :cond_176

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    cmpl-double v42, v42, v44

    if-lez v42, :cond_176

    .line 876
    :cond_114
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    mul-double v44, v32, v8

    add-double v38, v42, v44

    .line 877
    .local v38, "yNewAbove":D
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    sub-double v42, v38, v42

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v32

    add-double v42, v42, v44

    div-double v36, v42, v32

    .line 879
    .local v36, "xNewAbove":D
    new-instance v42, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v42

    move-wide/from16 v1, v36

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    .end local v36    # "xNewAbove":D
    .end local v38    # "yNewAbove":D
    :cond_144
    :goto_144
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_25

    .line 840
    .end local v6    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v7    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v21    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v30    # "slopeAB":D
    :cond_148
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 841
    .restart local v6    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v42, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v7    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_4b

    .line 848
    :cond_15e
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    add-double v42, v42, v18

    move-wide/from16 v0, v42

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_6f

    .line 855
    :cond_16a
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    add-double v42, v42, v22

    move-wide/from16 v0, v42

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_93

    .line 884
    .restart local v21    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v30    # "slopeAB":D
    :cond_176
    const-wide/16 v42, 0x0

    cmpl-double v42, v30, v42

    if-lez v42, :cond_188

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    cmpl-double v42, v42, v44

    if-gtz v42, :cond_19a

    :cond_188
    const-wide/16 v42, 0x0

    cmpg-double v42, v30, v42

    if-gez v42, :cond_144

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    cmpg-double v42, v42, v44

    if-gez v42, :cond_144

    .line 886
    :cond_19a
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    mul-double v44, v32, v8

    sub-double v38, v42, v44

    .line 887
    .restart local v38    # "yNewAbove":D
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    sub-double v42, v38, v42

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v32

    add-double v42, v42, v44

    div-double v36, v42, v32

    .line 889
    .restart local v36    # "xNewAbove":D
    new-instance v42, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v42

    move-wide/from16 v1, v36

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_144

    .line 899
    .end local v6    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v7    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v21    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v30    # "slopeAB":D
    .end local v36    # "xNewAbove":D
    .end local v38    # "yNewAbove":D
    :cond_1cc
    const/16 v35, 0x0

    .line 900
    .local v35, "z":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v41, v42, -0x1

    .line 901
    .local v41, "z1":I
    const/4 v15, 0x0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v17, v42, -0x1

    .local v17, "j":I
    :goto_1db
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    move/from16 v0, v42

    if-ge v15, v0, :cond_267

    .line 903
    move-object/from16 v0, v34

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Double;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 904
    .local v24, "m1":D
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Double;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    .line 905
    .local v26, "m2":D
    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 906
    .local v28, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 907
    .local v29, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v26

    sub-double v42, v42, v44

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v46, v0

    mul-double v46, v46, v24

    sub-double v44, v44, v46

    sub-double v42, v42, v44

    sub-double v44, v24, v26

    div-double v10, v42, v44

    .line 909
    .local v10, "finx":D
    mul-double v42, v24, v10

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v46, v0

    mul-double v46, v46, v24

    sub-double v44, v44, v46

    add-double v12, v42, v44

    .line 910
    .local v12, "finy":D
    new-instance v42, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v42

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v42

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    add-int/lit8 v40, v35, 0x1

    .end local v35    # "z":I
    .local v40, "z":I
    move/from16 v41, v35

    .line 901
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    move/from16 v17, v15

    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    move/from16 v35, v40

    .end local v40    # "z":I
    .restart local v35    # "z":I
    goto/16 :goto_1db

    .line 916
    .end local v10    # "finx":D
    .end local v12    # "finy":D
    .end local v24    # "m1":D
    .end local v26    # "m2":D
    .end local v28    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_267
    return-object v14
.end method

.method private declared-synchronized deleteFromDB(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "_id"    # I

    .prologue
    .line 1671
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1672
    .local v1, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1673
    .local v0, "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    move-result v2

    if-nez v2, :cond_20

    .line 1676
    const/4 v2, 0x0

    .line 1679
    :goto_1e
    monitor-exit p0

    return v2

    .line 1678
    :cond_20
    :try_start_20
    iget-object v2, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2b

    .line 1679
    const/4 v2, 0x1

    goto :goto_1e

    .line 1671
    .end local v0    # "geofence_id_value":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "userId":I
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1187
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_2
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v3

    .line 1191
    .local v0, "columns":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1193
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_36

    .line 1194
    :goto_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1196
    iget-object v3, p0, mActiveGeofenceList:Ljava/util/HashMap;

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d
    .catchall {:try_start_2 .. :try_end_2c} :catchall_3c

    goto :goto_13

    .line 1202
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_2d
    move-exception v2

    .line 1203
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_3c

    .line 1205
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 1199
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_38
    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_2d
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_36

    .line 1187
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .registers 7
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1262
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1263
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1264
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_16

    .line 1269
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;
    :goto_12
    return-object v3

    .line 1266
    :catch_13
    move-exception v0

    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 1267
    goto :goto_12

    .line 1268
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_16
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    move-object v3, v4

    .line 1269
    goto :goto_12
.end method

.method private deviceLocationUnavailableMessage(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1627
    const-string v2, "GeofenceService"

    const-string v3, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "edm.intent.action.device.location.unavailable"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "edm.intent.extra.geofence.user.id"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1630
    const-string v2, "admin_uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1631
    const/4 v2, -0x1

    if-eq p1, v2, :cond_28

    .line 1632
    invoke-direct {p0, p1}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    :cond_28
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v1

    .line 1636
    .local v1, "ownerUid":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method private enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 276
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v4, "collinear":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v11, 0x0

    .line 1730
    .local v11, "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x1

    .local v6, "j":I
    const/4 v7, 0x2

    .local v7, "k":I
    :goto_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_a8

    .line 1733
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1734
    .local v9, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1735
    .local v10, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1739
    .restart local v11    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iget-wide v14, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double v2, v12, v14

    .line 1741
    .local v2, "area":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_88

    .line 1742
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6f

    .line 1743
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1744
    :cond_6f
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 1745
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1746
    :cond_78
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_81

    .line 1747
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 1750
    :cond_88
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a4

    .line 1751
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1752
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_81

    .line 1755
    :cond_a4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 1758
    .end local v2    # "area":D
    .end local v9    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v10    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_a8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1759
    return-object v8
.end method

.method private findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    .prologue
    .line 1787
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1789
    .local v0, "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1790
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    .line 1791
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1789
    .restart local v0    # "first":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1794
    :cond_33
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    .prologue
    .line 1769
    .local p1, "point":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1771
    .local v1, "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 1772
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    .line 1773
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1771
    .restart local v1    # "last":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1776
    :cond_33
    return-object v1
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .registers 14
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 1588
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1616
    :cond_9
    :goto_9
    return-object v8

    .line 1592
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1595
    .local v6, "userId":I
    :try_start_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "_id"

    aput-object v10, v0, v9

    .line 1601
    .local v0, "columns":[Ljava/lang/String;
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 1604
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1605
    .local v4, "item":Landroid/content/ContentValues;
    const-string v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1606
    .local v3, "id":I
    const-string v9, "adminUid"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_2c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1607
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5f} :catch_60

    goto :goto_2c

    .line 1612
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "item":Landroid/content/ContentValues;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_60
    move-exception v1

    .line 1613
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "GeofenceService"

    const-string/jumbo v10, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v9, v10, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1611
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_6a
    :try_start_6a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_60

    move-result v9

    if-eqz v9, :cond_71

    move-object v5, v8

    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_71
    move-object v8, v5

    goto :goto_9
.end method

.method private getEffectiveMinDistanceParameter()F
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 765
    const/4 v3, 0x0

    .line 767
    .local v3, "ret":F
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "distance"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "state"

    aput-object v7, v0, v6

    .line 772
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GEOFENCINGSETTINGS"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 775
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 777
    .local v2, "item":Landroid/content/ContentValues;
    const-string/jumbo v6, "state"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 782
    const-string/jumbo v6, "distance"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, parseStringToFloat(Ljava/lang/String;)F

    move-result v4

    .line 784
    .local v4, "value":F
    cmpl-float v6, v3, v8

    if-nez v6, :cond_47

    .line 785
    move v3, v4

    goto :goto_1d

    .line 786
    :cond_47
    cmpl-float v6, v4, v8

    if-eqz v6, :cond_1d

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1d

    .line 787
    move v3, v4

    goto :goto_1d

    .line 791
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v4    # "value":F
    :cond_51
    return v3
.end method

.method private getEffectiveMinTimeParameter()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 700
    const-wide/16 v4, 0x0

    .line 702
    .local v4, "ret":J
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "time"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "state"

    aput-object v9, v0, v8

    .line 707
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 710
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 712
    .local v2, "item":Landroid/content/ContentValues;
    const-string/jumbo v8, "state"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1f

    .line 717
    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, parseStringToLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 719
    .local v6, "value":J
    cmp-long v8, v4, v10

    if-nez v8, :cond_49

    .line 720
    move-wide v4, v6

    goto :goto_1f

    .line 721
    :cond_49
    cmp-long v8, v6, v10

    if-eqz v8, :cond_1f

    cmp-long v8, v4, v6

    if-lez v8, :cond_1f

    .line 722
    move-wide v4, v6

    goto :goto_1f

    .line 726
    .end local v2    # "item":Landroid/content/ContentValues;
    .end local v6    # "value":J
    :cond_53
    cmp-long v8, v4, v10

    if-nez v8, :cond_5a

    const-wide/32 v4, 0xea60

    .end local v4    # "ret":J
    :cond_5a
    return-wide v4
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1645
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@getPackageNameForUid - uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_2e

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_24

    const/16 v2, 0x4e1f

    if-le p1, v2, :cond_2e

    .line 1648
    :cond_24
    const-string v2, "GeofenceService"

    const-string v3, "@getPackageNameForUid - returning UMC PACKAGENAME"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 1660
    :goto_2d
    return-object v2

    .line 1651
    :cond_2e
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1653
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_43

    .line 1654
    const-string v2, "GeofenceService"

    const-string v3, "@getPackageNameForUid - returning null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const/4 v2, 0x0

    goto :goto_2d

    .line 1658
    :cond_43
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1659
    .local v0, "compName":Landroid/content/ComponentName;
    const-string v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d
.end method

.method private initializeHandlerThread()V
    .registers 3

    .prologue
    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    .line 132
    return-void
.end method

.method private isAdminHasGeofence(I)Z
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1208
    const/4 v1, 0x0

    .line 1211
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_3
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    .line 1215
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCING"

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1218
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1c
    .catchall {:try_start_3 .. :try_end_15} :catchall_2d

    move-result v3

    .line 1224
    if-eqz v1, :cond_1b

    .line 1225
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_34

    .line 1230
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_1b
    :goto_1b
    return v3

    .line 1220
    :catch_1c
    move-exception v2

    .line 1221
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v4, "GeofenceService"

    const-string/jumbo v5, "isAdminHasGeofence - EX"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_2d

    .line 1224
    if-eqz v1, :cond_1b

    .line 1225
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_1b

    .line 1227
    :catch_2b
    move-exception v4

    goto :goto_1b

    .line 1223
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_2d
    move-exception v3

    .line 1224
    if-eqz v1, :cond_33

    .line 1225
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_36

    .line 1228
    :cond_33
    :goto_33
    throw v3

    .line 1227
    .restart local v0    # "columns":[Ljava/lang/String;
    :catch_34
    move-exception v4

    goto :goto_1b

    .end local v0    # "columns":[Ljava/lang/String;
    :catch_36
    move-exception v4

    goto :goto_33
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .registers 14
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 563
    const-string v8, "GeofenceService"

    const-string/jumbo v9, "isDeviceInsideGeofence"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 566
    .local v6, "token":J
    const/4 v0, 0x0

    .line 567
    .local v0, "activeGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 569
    .local v4, "location":Landroid/location/Location;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 570
    .local v1, "criteria":Landroid/location/Criteria;
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 571
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 572
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 573
    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 574
    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 577
    :try_start_24
    iget-object v4, p0, mLocation:Landroid/location/Location;

    .line 578
    if-nez v4, :cond_40

    .line 579
    iget-object v8, p0, mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, "provider":Ljava/lang/String;
    if-eqz v5, :cond_40

    const-string/jumbo v8, "passive"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_40

    .line 581
    iget-object v8, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_49

    move-result-object v4

    .line 590
    .end local v5    # "provider":Ljava/lang/String;
    :cond_40
    :goto_40
    if-nez v4, :cond_57

    .line 591
    invoke-direct {p0, p1}, deviceLocationUnavailableMessage(I)V

    .line 597
    :goto_45
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    return-object v0

    .line 584
    :catch_49
    move-exception v2

    .line 585
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GeofenceService"

    const-string/jumbo v9, "isDeviceInsideGeofence - EX"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    const/4 v4, 0x0

    goto :goto_40

    .line 593
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    invoke-direct {p0, v4, v10}, checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v3

    .line 594
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v3, p1}, getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_45
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 1108
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 1109
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 1110
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_76

    .line 1113
    .local v5, "user":Landroid/content/pm/UserInfo;
    :try_start_20
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string v10, "adminUid"

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1116
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1118
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1120
    .local v3, "storedUid":I
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "state"

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_35

    .line 1123
    invoke-direct {p0, v3}, updateGeofenceActiveListbyAdmin(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57
    .catchall {:try_start_20 .. :try_end_56} :catchall_76

    goto :goto_35

    .line 1127
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "storedUid":I
    .end local v4    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_57
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadGeofenceActiveList - EX"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_58 .. :try_end_75} :catchall_76

    goto :goto_14

    .line 1108
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userManager":Landroid/os/UserManager;
    .end local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_76
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1132
    .restart local v6    # "userManager":Landroid/os/UserManager;
    .restart local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_79
    monitor-exit p0

    return-void
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 796
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 798
    :goto_4
    return v1

    .line 797
    :catch_5
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 804
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v2

    .line 806
    :goto_4
    return-wide v2

    .line 805
    :catch_5
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_4
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1530
    .local p1, "relevantGeofences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v15, "GeofenceService"

    const-string/jumbo v16, "sendIntenttoAdmins"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string/jumbo v16, "user"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 1532
    .local v14, "userManager":Landroid/os/UserManager;
    invoke-virtual {v14}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 1535
    .local v13, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_155

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 1536
    .local v12, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 1540
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "ADMIN"

    const-string v17, "adminUid"

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 1543
    .local v11, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1544
    .local v10, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    .line 1546
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_f9

    .line 1547
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.device.inside"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v6, "intent":Landroid/content/Intent;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    new-array v5, v15, [I

    .line 1549
    .local v5, "id":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_70
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v2, v15, :cond_85

    .line 1550
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v5, v2

    .line 1549
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 1552
    :cond_85
    const-string/jumbo v15, "edm.intent.extra.geofence.id"

    invoke-virtual {v6, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1553
    const-string/jumbo v15, "edm.intent.extra.geofence.user.id"

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1554
    const-string v15, "admin_uid"

    invoke-virtual {v6, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1555
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v15, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    .line 1557
    .local v7, "ownerUid":I
    const-string v15, "GeofenceService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "@sendIntenttoAdmins - ownerUid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 1559
    .local v9, "thePackageNameFortheUID":Ljava/lang/String;
    const-string v15, "GeofenceService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    const-string v17, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v6, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1566
    .end local v2    # "i":I
    .end local v5    # "id":[I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ownerUid":I
    .end local v9    # "thePackageNameFortheUID":Ljava/lang/String;
    :cond_f9
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "GEOFENCINGSETTINGS"

    const-string/jumbo v17, "state"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_47

    .line 1568
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.device.outside"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1569
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v15, "edm.intent.extra.geofence.user.id"

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1570
    const-string v15, "admin_uid"

    invoke-virtual {v6, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1571
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v15, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    .line 1573
    .restart local v7    # "ownerUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    const-string v17, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v6, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_150} :catch_152

    goto/16 :goto_47

    .line 1578
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "ownerUid":I
    :catch_152
    move-exception v15

    goto/16 :goto_47

    .line 1584
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "uid":I
    .end local v11    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    :cond_155
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1848
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1851
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1852
    .local v2, "out":Ljava/io/ObjectOutput;
    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1853
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 1857
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v3

    .line 1861
    .end local v2    # "out":Ljava/io/ObjectOutput;
    :goto_14
    return-object v3

    .line 1858
    :catch_15
    move-exception v1

    .line 1859
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1861
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private setLocationManager()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    .line 157
    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .registers 15
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 1138
    monitor-enter p0

    const/4 v9, 0x3

    :try_start_4
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "type"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "blobdata"

    aput-object v10, v1, v9

    .line 1143
    .local v1, "columns":[Ljava/lang/String;
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    invoke-virtual {v9, v10, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1146
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_70

    .line 1147
    :cond_20
    :goto_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 1149
    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1151
    .local v5, "id":I
    iget-object v9, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1153
    const-string/jumbo v9, "type"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1155
    .local v8, "type":I
    const-string v9, "blobdata"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1158
    .local v3, "data":[B
    if-ne v8, v11, :cond_72

    .line 1159
    invoke-static {v3}, deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .line 1160
    .local v7, "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iput v5, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    .line 1161
    iput v8, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    .line 1162
    iget-object v9, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_66} :catch_67
    .catchall {:try_start_4 .. :try_end_66} :catchall_88

    goto :goto_20

    .line 1179
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v7    # "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v8    # "type":I
    :catch_67
    move-exception v4

    .line 1180
    .local v4, "e":Ljava/lang/Exception;
    :try_start_68
    const-string v9, "GeofenceService"

    const-string/jumbo v10, "updateGeofenceActiveList - EX"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_88

    .line 1182
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    monitor-exit p0

    return-void

    .line 1163
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v8    # "type":I
    :cond_72
    if-ne v8, v12, :cond_8b

    .line 1164
    :try_start_74
    invoke-static {v3}, deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LinearGeofence;

    .line 1165
    .local v6, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    iput v5, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    .line 1166
    iput v8, v6, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    .line 1167
    iget-object v9, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_87} :catch_67
    .catchall {:try_start_74 .. :try_end_87} :catchall_88

    goto :goto_20

    .line 1138
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v6    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v8    # "type":I
    :catchall_88
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1169
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "data":[B
    .restart local v5    # "id":I
    .restart local v8    # "type":I
    :cond_8b
    :try_start_8b
    invoke-static {v3}, deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .line 1170
    .local v0, "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    iput v5, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    .line 1171
    iput v8, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    .line 1172
    iget-object v9, p0, mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 1176
    .end local v0    # "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v3    # "data":[B
    .end local v5    # "id":I
    .end local v8    # "type":I
    :cond_9f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a2} :catch_67
    .catchall {:try_start_8b .. :try_end_a2} :catchall_88

    goto :goto_70
.end method

.method private validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z
    .registers 10
    .param p1, "center"    # Landroid/app/enterprise/geofencing/LatLongPoint;
    .param p2, "radius"    # D

    .prologue
    .line 1876
    const/4 v0, 0x1

    .line 1877
    .local v0, "valid":Z
    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_9

    .line 1878
    const/4 v0, 0x0

    .line 1885
    :cond_8
    :goto_8
    return v0

    .line 1880
    :cond_9
    iget-wide v2, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_35

    iget-wide v2, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_35

    iget-wide v2, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_35

    iget-wide v2, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_8

    .line 1882
    :cond_35
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1806
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x1

    .line 1807
    .local v2, "valid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 1808
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1809
    .local v1, "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_3a

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_3a

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_3a

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3d

    .line 1812
    :cond_3a
    const/4 v2, 0x0

    move v3, v2

    .line 1816
    .end local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v2    # "valid":Z
    .local v3, "valid":I
    :goto_3c
    return v3

    .line 1807
    .end local v3    # "valid":I
    .restart local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v2    # "valid":Z
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "latlongPoint":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_40
    move v3, v2

    .line 1816
    .restart local v3    # "valid":I
    goto :goto_3c
.end method

.method private writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I
    .param p3, "serializedBlob"    # [B

    .prologue
    .line 1827
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1828
    .local v0, "callingUid":I
    if-nez p3, :cond_6

    .line 1829
    const/4 v1, -0x1

    .line 1837
    :goto_5
    return v1

    .line 1830
    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1831
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1832
    const-string/jumbo v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    const-string v3, "blobdata"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1834
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 1836
    .local v1, "id":I
    invoke-direct {p0, v0}, updateGeofenceActiveListbyAdmin(I)V

    goto :goto_5
.end method


# virtual methods
.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/CircularGeofence;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "circularGeofence"    # Landroid/app/enterprise/geofencing/CircularGeofence;

    .prologue
    const/4 v8, 0x1

    .line 383
    const-string v5, "GeofenceService"

    const-string/jumbo v6, "createGeofence"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 385
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 387
    .local v0, "callingUid":I
    const/4 v1, -0x1

    .line 388
    .local v1, "id":I
    iget-object v5, p2, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, p2, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-direct {p0, v5, v6, v7}, validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 390
    invoke-direct {p0, p2}, serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v4

    .line 391
    .local v4, "serializedBlob":[B
    if-nez v4, :cond_22

    move v2, v1

    .line 400
    .end local v1    # "id":I
    .end local v4    # "serializedBlob":[B
    .local v2, "id":I
    :goto_21
    return v2

    .line 394
    .end local v2    # "id":I
    .restart local v1    # "id":I
    .restart local v4    # "serializedBlob":[B
    :cond_22
    invoke-direct {p0, p1, v8, v4}, writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v1

    .line 395
    invoke-virtual {p0, p1}, isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 396
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 397
    .local v3, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "serializedBlob":[B
    :cond_3f
    move v2, v1

    .line 400
    .end local v1    # "id":I
    .restart local v2    # "id":I
    goto :goto_21
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/Geofence;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "geofence"    # Landroid/app/enterprise/geofencing/Geofence;

    .prologue
    .line 319
    const/4 v0, -0x1

    .line 321
    .local v0, "id":I
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 322
    check-cast p2, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1, p2}, createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/CircularGeofence;)I

    move-result v0

    .line 332
    :cond_c
    :goto_c
    return v0

    .line 325
    .restart local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_d
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 326
    check-cast p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1, p2}, createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/PolygonalGeofence;)I

    move-result v0

    goto :goto_c

    .line 329
    .restart local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    :cond_19
    iget v1, p2, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 330
    check-cast p2, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p2    # "geofence":Landroid/app/enterprise/geofencing/Geofence;
    invoke-virtual {p0, p1, p2}, createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/LinearGeofence;)I

    move-result v0

    goto :goto_c
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/LinearGeofence;)I
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "linearGeofence"    # Landroid/app/enterprise/geofencing/LinearGeofence;

    .prologue
    .line 341
    const-string v12, "GeofenceService"

    const-string/jumbo v13, "createGeofence"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct/range {p0 .. p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 343
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 344
    .local v8, "callingUid":I
    const/4 v9, -0x1

    .line 345
    .local v9, "id":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 346
    .local v6, "toleranceVal":D
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "polygonList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    move-object/from16 v0, p2

    iget-wide v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_58

    .line 348
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iput-wide v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 352
    :cond_2a
    :goto_2a
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v3

    .line 354
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_a5

    .line 355
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 357
    .local v4, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v4, :cond_56

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_6f

    .line 358
    :cond_56
    const/4 v12, -0x1

    .line 371
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_57
    return v12

    .line 349
    :cond_58
    move-object/from16 v0, p2

    iget-wide v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide v14, 0x412e848000000000L    # 1000000.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2a

    .line 350
    const-wide v12, 0x412e847e00000000L    # 999999.0

    move-object/from16 v0, p2

    iput-wide v12, v0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    goto :goto_2a

    .line 359
    .restart local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_6f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v5

    .line 360
    .local v5, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    new-instance v2, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct/range {v2 .. v7}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;D)V

    .line 362
    .local v2, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v11

    .line 363
    .local v11, "serializedBlob":[B
    const/4 v12, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v9

    .line 364
    invoke-virtual/range {p0 .. p1}, isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 365
    invoke-virtual/range {p0 .. p0}, getHandler()Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 366
    .local v10, "message":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v4    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v5    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v10    # "message":Landroid/os/Message;
    .end local v11    # "serializedBlob":[B
    :cond_a3
    move v12, v9

    .line 369
    goto :goto_57

    :cond_a5
    move v12, v9

    .line 371
    goto :goto_57
.end method

.method public createGeofence(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/geofencing/PolygonalGeofence;)I
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "polygonalGeofence"    # Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .prologue
    .line 411
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "createGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct/range {p0 .. p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 413
    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 416
    .local v9, "callingUid":I
    const/4 v10, -0x1

    .line 417
    .local v10, "id":I
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_84

    .line 418
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 419
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 420
    .local v6, "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v6, :cond_3b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3d

    .line 421
    :cond_3b
    const/4 v3, -0x1

    .line 441
    .end local v6    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_3c
    return v3

    .line 422
    .restart local v6    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_3d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v8

    .line 423
    .local v8, "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    move-object/from16 v0, p2

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    const-wide/16 v14, 0x0

    cmpl-double v3, v4, v14

    if-nez v3, :cond_86

    .line 424
    move-object v7, v6

    .line 430
    .local v7, "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_4e
    new-instance v2, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct/range {v2 .. v8}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;)V

    .line 432
    .local v2, "pGeofence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v12

    .line 433
    .local v12, "serializedBlob":[B
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, writeGeofenceToDB(Landroid/app/enterprise/ContextInfo;I[B)I

    move-result v10

    .line 435
    invoke-virtual/range {p0 .. p1}, isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 436
    invoke-virtual/range {p0 .. p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 437
    .local v11, "message":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "pGeofence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v6    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v7    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v8    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v11    # "message":Landroid/os/Message;
    .end local v12    # "serializedBlob":[B
    :cond_84
    move v3, v10

    .line 441
    goto :goto_3c

    .line 426
    .restart local v6    # "latlongs":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .restart local v8    # "boundingBox":Landroid/app/enterprise/geofencing/BoundingBox;
    :cond_86
    move-object/from16 v0, p2

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    .restart local v7    # "gracePoints":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    goto :goto_4e
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .registers 64
    .param p2, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v13, "frontList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v12, "endList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v42, "slopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v23, "listAbove":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v26, "listBelow":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v40, 0x0

    .local v40, "slopePerpendicularAB":D
    const-wide/16 v8, 0x0

    .line 933
    .local v8, "distanceToPoint":D
    const-wide v24, 0x3f747ae147ae147bL    # 0.005

    .line 935
    .local v24, "latitudeNoise":D
    const-wide v28, 0x3f747ae147ae147bL    # 0.005

    .line 939
    .local v28, "longitudeNoise":D
    const/16 v43, 0x0

    .local v43, "temp":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v10, 0x0

    .local v10, "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v11, 0x0

    .line 944
    .local v11, "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide v54, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double p2, p2, v54

    .line 946
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    move/from16 v0, v22

    move/from16 v1, v53

    if-ge v0, v1, :cond_36c

    .line 947
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_20d

    .line 948
    add-int/lit8 v53, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 949
    .local v6, "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 955
    .local v7, "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    :goto_60
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-nez v53, :cond_84

    .line 956
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-ltz v53, :cond_225

    .line 957
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    sub-double v54, v54, v24

    move-wide/from16 v0, v54

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 962
    :cond_84
    :goto_84
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-nez v53, :cond_a8

    .line 963
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-ltz v53, :cond_231

    .line 964
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v54, v28

    move-wide/from16 v0, v54

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 969
    :cond_a8
    :goto_a8
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    sub-double v56, v56, v58

    div-double v38, v54, v56

    .line 971
    .local v38, "slopeAB":D
    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    move-object/from16 v0, v42

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v27, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v54, v54, v56

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v58, v0

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-object/from16 v0, v27

    move-wide/from16 v1, v54

    move-wide/from16 v3, v56

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .line 979
    .local v27, "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    div-double v54, v54, v38

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v40, v0

    .line 981
    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    mul-double v56, v40, v40

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    div-double v8, p2, v54

    .line 985
    const-wide/16 v54, 0x0

    cmpl-double v53, v38, v54

    if-lez v53, :cond_117

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpg-double v53, v54, v56

    if-ltz v53, :cond_129

    :cond_117
    const-wide/16 v54, 0x0

    cmpg-double v53, v38, v54

    if-gez v53, :cond_251

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpl-double v53, v54, v56

    if-lez v53, :cond_251

    .line 987
    :cond_129
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v48, v54, v56

    .line 988
    .local v48, "yNewAbove":D
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    .line 990
    .local v44, "xNewAbove":D
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v50, v54, v56

    .line 994
    .local v50, "yNewBelow":D
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    .line 996
    .local v46, "xNewBelow":D
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    if-nez v22, :cond_18d

    .line 999
    move-object/from16 v43, v6

    .line 1000
    :cond_18d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_19b

    .line 1001
    move-object/from16 v43, v7

    .line 1003
    :cond_19b
    if-eqz v22, :cond_1a9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_209

    .line 1004
    :cond_1a9
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v48, v54, v56

    .line 1005
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    .line 1007
    if-nez v22, :cond_23d

    .line 1008
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    :goto_1d9
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v50, v54, v56

    .line 1014
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    .line 1016
    if-nez v22, :cond_247

    .line 1017
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    .end local v44    # "xNewAbove":D
    .end local v46    # "xNewBelow":D
    .end local v48    # "yNewAbove":D
    .end local v50    # "yNewBelow":D
    :cond_209
    :goto_209
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_34

    .line 951
    .end local v6    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v7    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v27    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v38    # "slopeAB":D
    :cond_20d
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 952
    .restart local v6    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v53, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v7    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_60

    .line 959
    :cond_225
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    add-double v54, v54, v24

    move-wide/from16 v0, v54

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_84

    .line 966
    :cond_231
    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    add-double v54, v54, v28

    move-wide/from16 v0, v54

    iput-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_a8

    .line 1010
    .restart local v27    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v38    # "slopeAB":D
    .restart local v44    # "xNewAbove":D
    .restart local v46    # "xNewBelow":D
    .restart local v48    # "yNewAbove":D
    .restart local v50    # "yNewBelow":D
    :cond_23d
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v44

    move-wide/from16 v2, v48

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_1d9

    .line 1019
    :cond_247
    new-instance v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v11    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v46

    move-wide/from16 v2, v50

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v11    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_209

    .line 1026
    .end local v44    # "xNewAbove":D
    .end local v46    # "xNewBelow":D
    .end local v48    # "yNewAbove":D
    .end local v50    # "yNewBelow":D
    :cond_251
    const-wide/16 v54, 0x0

    cmpl-double v53, v38, v54

    if-lez v53, :cond_263

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpl-double v53, v54, v56

    if-gtz v53, :cond_275

    :cond_263
    const-wide/16 v54, 0x0

    cmpg-double v53, v38, v54

    if-gez v53, :cond_209

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpg-double v53, v54, v56

    if-gez v53, :cond_209

    .line 1028
    :cond_275
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v48, v54, v56

    .line 1029
    .restart local v48    # "yNewAbove":D
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    .line 1031
    .restart local v44    # "xNewAbove":D
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v50, v54, v56

    .line 1035
    .restart local v50    # "yNewBelow":D
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    .line 1037
    .restart local v46    # "xNewBelow":D
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    if-nez v22, :cond_2d9

    .line 1040
    move-object/from16 v43, v6

    .line 1041
    :cond_2d9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_2e7

    .line 1042
    move-object/from16 v43, v7

    .line 1044
    :cond_2e7
    if-eqz v22, :cond_2f5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_209

    .line 1045
    :cond_2f5
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v48, v54, v56

    .line 1046
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    .line 1048
    if-nez v22, :cond_357

    .line 1049
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    :goto_325
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v50, v54, v56

    .line 1055
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    .line 1057
    if-nez v22, :cond_361

    .line 1058
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_209

    .line 1051
    :cond_357
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v44

    move-wide/from16 v2, v48

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10    # "end1":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_325

    .line 1060
    :cond_361
    new-instance v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v11    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v46

    move-wide/from16 v2, v50

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v11    # "end2":Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_209

    .line 1071
    .end local v6    # "a":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v7    # "b":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v27    # "mid1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v38    # "slopeAB":D
    .end local v44    # "xNewAbove":D
    .end local v46    # "xNewBelow":D
    .end local v48    # "yNewAbove":D
    .end local v50    # "yNewBelow":D
    :cond_36c
    const/16 v52, 0x0

    .line 1072
    .local v52, "z":I
    const/16 v22, 0x0

    :goto_370
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x2

    move/from16 v0, v22

    move/from16 v1, v53

    if-ge v0, v1, :cond_45e

    .line 1075
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Double;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    .line 1076
    .local v30, "m1":D
    add-int/lit8 v53, v22, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Double;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    .line 1077
    .local v32, "m2":D
    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1078
    .local v34, "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v53, v52, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1079
    .local v35, "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v32

    sub-double v54, v54, v56

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    sub-double v54, v54, v56

    sub-double v56, v30, v32

    div-double v14, v54, v56

    .line 1081
    .local v14, "finx":D
    mul-double v54, v30, v14

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    add-double v18, v54, v56

    .line 1082
    .local v18, "finy":D
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1085
    .local v36, "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v53, v52, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 1086
    .local v37, "p4":Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v32

    sub-double v54, v54, v56

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    sub-double v54, v54, v56

    sub-double v56, v30, v32

    div-double v16, v54, v56

    .line 1088
    .local v16, "finxbelow":D
    mul-double v54, v30, v16

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    add-double v20, v54, v56

    .line 1089
    .local v20, "finybelow":D
    new-instance v53, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v16

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v52, v52, 0x1

    .line 1072
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_370

    .line 1094
    .end local v14    # "finx":D
    .end local v16    # "finxbelow":D
    .end local v18    # "finy":D
    .end local v20    # "finybelow":D
    .end local v30    # "m1":D
    .end local v32    # "m2":D
    .end local v34    # "p1":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v35    # "p2":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v36    # "p3":Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v37    # "p4":Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_45e
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v22, v53, -0x1

    :goto_46a
    if-ltz v22, :cond_47a

    .line 1097
    move/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    add-int/lit8 v22, v22, -0x1

    goto :goto_46a

    .line 1099
    :cond_47a
    return-object v13
.end method

.method public declared-synchronized destroyGeofence(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # I

    .prologue
    .line 452
    monitor-enter p0

    :try_start_1
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "destroyGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 454
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 455
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2}, deleteFromDB(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    .line 456
    .local v2, "ret":Z
    if-eqz v2, :cond_38

    invoke-direct {p0, v0}, isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 457
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 459
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_4f

    .line 465
    .end local v1    # "message":Landroid/os/Message;
    :cond_36
    :goto_36
    monitor-exit p0

    return v2

    .line 461
    :cond_38
    if-eqz v2, :cond_36

    .line 462
    :try_start_3a
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 463
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_4f

    goto :goto_36

    .line 452
    .end local v0    # "callingUid":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "ret":Z
    :catchall_4f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findDistance(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)D
    .registers 23
    .param p1, "point1"    # Landroid/app/enterprise/geofencing/LatLongPoint;
    .param p2, "point2"    # Landroid/app/enterprise/geofencing/LatLongPoint;

    .prologue
    .line 1486
    const-wide v2, 0x40aeed880a82edb3L    # 3958.765705195919

    .line 1488
    .local v2, "R":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 1489
    .local v8, "lat2":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 1490
    .local v12, "lon2":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 1491
    .local v6, "lat1":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 1493
    .local v10, "lon1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v18, v12, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    mul-double v4, v14, v2

    .line 1497
    .local v4, "distance":D
    return-wide v4
.end method

.method public getGeofences(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    const-string v11, "GeofenceService"

    const-string/jumbo v12, "getGeofences"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 611
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 615
    .local v1, "callingUid":I
    :try_start_e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "type"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "blobdata"

    aput-object v12, v2, v11

    .line 622
    .local v2, "columns":[Ljava/lang/String;
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "GEOFENCING"

    invoke-virtual {v11, v12, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 625
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_99

    .line 626
    :goto_30
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_96

    .line 628
    const-string v11, "_id"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 629
    .local v6, "id":I
    const-string/jumbo v11, "type"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 630
    .local v10, "type":I
    const-string v11, "blobdata"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 633
    .local v4, "data":[B
    const/4 v11, 0x2

    if-ne v10, v11, :cond_71

    .line 634
    invoke-static {v4}, deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .line 635
    .local v8, "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iput v6, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    .line 636
    iput v10, v8, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    .line 637
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_65} :catch_66

    goto :goto_30

    .line 656
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v8    # "pFence":Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    .end local v10    # "type":I
    :catch_66
    move-exception v5

    .line 657
    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "GeofenceService"

    const-string/jumbo v12, "getGeofences - EX"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    const/4 v9, 0x0

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    return-object v9

    .line 638
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "data":[B
    .restart local v6    # "id":I
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    .restart local v10    # "type":I
    :cond_71
    const/4 v11, 0x3

    if-ne v10, v11, :cond_88

    .line 639
    :try_start_74
    invoke-static {v4}, deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LinearGeofence;

    .line 640
    .local v7, "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    iput v6, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    .line 641
    iput v10, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    .line 642
    invoke-direct {p0, v7}, convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 643
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 645
    .end local v7    # "lFence":Landroid/app/enterprise/geofencing/LinearGeofence;
    :cond_88
    invoke-static {v4}, deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .line 646
    .local v0, "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    iput v6, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    .line 647
    iput v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    .line 648
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 651
    .end local v0    # "cFence":Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v4    # "data":[B
    .end local v6    # "id":I
    .end local v10    # "type":I
    :cond_96
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 654
    :cond_99
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_9c} :catch_66

    move-result v11

    if-eqz v11, :cond_70

    const/4 v9, 0x0

    goto :goto_70
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Landroid/app/enterprise/ContextInfo;)F
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 758
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 759
    .local v0, "callingUid":I
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "distance"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Landroid/app/enterprise/ContextInfo;)J
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 694
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 695
    .local v0, "callingUid":I
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, parseStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public isDeviceInsideGeofence(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 559
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 540
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 543
    :try_start_6
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "GEOFENCINGSETTINGS"

    const-string/jumbo v6, "state"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_12} :catch_18

    move-result v3

    if-ne v3, v1, :cond_16

    .line 547
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 543
    goto :goto_15

    .line 546
    :catch_18
    move-exception v0

    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    move v1, v2

    .line 547
    goto :goto_15
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 268
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1}, deleteGeofenceActiveListByAdmin(I)V

    .line 261
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public setMinDistanceParameter(Landroid/app/enterprise/ContextInfo;F)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "distance"    # F

    .prologue
    .line 735
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 736
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 737
    .local v0, "callingUid":I
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_d

    .line 738
    const/4 v2, 0x0

    .line 749
    :cond_c
    :goto_c
    return v2

    .line 740
    :cond_d
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 744
    .local v2, "ret":Z
    if-eqz v2, :cond_c

    .line 745
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 746
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c
.end method

.method public setMinTimeParameter(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # J

    .prologue
    .line 670
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 671
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 673
    .local v0, "callingUid":I
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gez v3, :cond_e

    .line 674
    const/4 v2, 0x0

    .line 685
    :cond_d
    :goto_d
    return v2

    .line 676
    :cond_e
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 680
    .local v2, "ret":Z
    if-eqz v2, :cond_d

    .line 681
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 682
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public startGeofencing(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    .line 475
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "startGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 477
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 479
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 480
    const/4 v2, 0x0

    .line 497
    :cond_16
    :goto_16
    return v2

    .line 483
    :cond_17
    invoke-virtual {p0, p1}, isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-nez v3, :cond_16

    .line 487
    :cond_21
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 491
    .local v2, "ret":Z
    if-eqz v2, :cond_16

    .line 492
    invoke-direct {p0, v0}, updateGeofenceActiveListbyAdmin(I)V

    .line 493
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 494
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_16
.end method

.method public stopGeofencing(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 508
    const-string v3, "GeofenceService"

    const-string/jumbo v4, "stopGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, p1}, enforceGeofencingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 510
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 512
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 530
    :cond_15
    :goto_15
    return v2

    .line 516
    :cond_16
    invoke-virtual {p0, p1}, isGeofencingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 517
    const/4 v2, 0x1

    goto :goto_15

    .line 520
    :cond_1e
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 524
    .local v2, "ret":Z
    if-eqz v2, :cond_15

    .line 525
    invoke-direct {p0, v0}, deleteGeofenceActiveListByAdmin(I)V

    .line 526
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 527
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "count":I
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 244
    .local v2, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 245
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    return-void
.end method
