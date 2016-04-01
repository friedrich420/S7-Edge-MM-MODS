.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L

.field private static final LOCATION_MODE_LOCATIONMANAGER:I = 0x1

.field private static final LOCATION_MODE_SLOCATION:I = 0x2

.field private static final LOCFROMLOCATIONMANAGER:I = 0x1

.field private static final LOCFROMSLOCATION:I = 0x2

.field public static mContext:Landroid/content/Context;


# instance fields
.field private ACCURACY_CurrentLoc:I

.field private final CURLOC:Ljava/lang/String;

.field private LocRequestSource:I

.field private filter:Landroid/content/IntentFilter;

.field private mBrReceiver:Landroid/content/BroadcastReceiver;

.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;

.field private sLm:Lcom/samsung/location/SLocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v1, p0, mEnable:Z

    .line 159
    const-string v0, "com.samsung.android.contextaware.SLOCATION"

    iput-object v0, p0, CURLOC:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    const/16 v0, 0x96

    iput v0, p0, ACCURACY_CurrentLoc:I

    .line 163
    iput v1, p0, LocRequestSource:I

    .line 338
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, mGpsListener:Landroid/location/LocationListener;

    .line 486
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, mWpsListener:Landroid/location/LocationListener;

    .line 194
    iput-object p2, p0, mLooper:Landroid/os/Looper;

    .line 198
    invoke-virtual {p0, p1}, initializeManager(Landroid/content/Context;)V

    .line 200
    invoke-virtual {p0, p3}, registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    .line 201
    sput-object p1, mContext:Landroid/content/Context;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    iget-object v0, p0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    invoke-direct {p0}, getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    invoke-direct {p0}, registerGpsListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    invoke-direct {p0}, registerWpsListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    iget v0, p0, LocRequestSource:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, LocRequestSource:I

    return p1
.end method

.method static synthetic access$676(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iget v0, p0, LocRequestSource:I

    or-int/2addr v0, p1

    iput v0, p0, LocRequestSource:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    invoke-direct {p0}, unregisterGpsListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    invoke-direct {p0}, unregisterWpsListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 73
    iget-object v0, p0, mBrReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private clearTimeOutCheckService()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    .line 1092
    iget-object v0, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1094
    iput-object v1, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 1096
    iput-object v1, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 1100
    :cond_e
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 856
    iget-object v1, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_6

    .line 862
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5
.end method

.method private registerGpsListener()V
    .registers 8

    .prologue
    .line 1112
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 1114
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1124
    :goto_a
    return-void

    .line 1120
    :cond_b
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_a
.end method

.method private registerWpsListener()V
    .registers 8

    .prologue
    .line 1136
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 1138
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1152
    :cond_a
    :goto_a
    return-void

    .line 1144
    :cond_b
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1146
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, mWpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_a
.end method

.method private unregisterGpsListener()V
    .registers 3

    .prologue
    .line 1164
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 1166
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1174
    :goto_a
    return-void

    .line 1172
    :cond_b
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_a
.end method

.method private unregisterWpsListener()V
    .registers 3

    .prologue
    .line 1186
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 1188
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 1196
    :goto_a
    return-void

    .line 1194
    :cond_b
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_a
.end method

.method private updateEmptyPosition()V
    .registers 16

    .prologue
    .line 1060
    iget-object v1, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v1, :cond_5

    .line 1078
    :goto_4
    return-void

    .line 1066
    :cond_5
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    .line 1068
    .local v0, "emptyPosition":Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    iget-object v1, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_4
.end method

.method private updateGpsPosition()V
    .registers 16

    .prologue
    .line 1000
    iget-object v0, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_5

    .line 1018
    :goto_4
    return-void

    .line 1006
    :cond_5
    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1008
    iget-object v1, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_4
.end method

.method private updateWpsPosition()V
    .registers 16

    .prologue
    .line 1030
    iget-object v0, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_5

    .line 1048
    :goto_4
    return-void

    .line 1036
    :cond_5
    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 1038
    iget-object v1, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v2

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v3

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v8

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v10

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v12

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v13

    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v14

    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_4
.end method


# virtual methods
.method protected CurrentLocUpdate(Landroid/location/Location;)V
    .registers 21
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnable:Z

    if-eqz v2, :cond_66

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentLocUpdate : provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v18

    .line 288
    .local v18, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 289
    .local v6, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 290
    .local v8, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    .line 291
    .local v10, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 292
    .local v14, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 293
    .local v15, "accuracy":F
    move-object/from16 v0, p0

    iget-object v2, v0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v12

    .line 297
    .local v12, "distance":D
    const/16 v17, 0x4

    .line 299
    .local v17, "type":I
    move-object/from16 v0, p0

    iget-object v3, v0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/4 v4, 0x4

    const/16 v16, 0x0

    move-object/from16 v5, v18

    invoke-virtual/range {v3 .. v16}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    .line 300
    const-string v2, "CurrentLUpda : SLO update! "

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, notifyCurrentPositionObserver()V

    .line 304
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "altitude":D
    .end local v12    # "distance":D
    .end local v14    # "speed":F
    .end local v15    # "accuracy":F
    .end local v17    # "type":I
    .end local v18    # "utcTime":[I
    :cond_66
    return-void
.end method

.method public final disable()V
    .registers 5

    .prologue
    .line 790
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 792
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 840
    :cond_a
    :goto_a
    return-void

    .line 800
    :cond_b
    iget-boolean v0, p0, mEnable:Z

    if-eqz v0, :cond_a

    .line 808
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 810
    invoke-direct {p0}, clearTimeOutCheckService()V

    .line 812
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, mEnable:Z

    goto :goto_a
.end method

.method public final enable(I)V
    .registers 6
    .param p1, "duration"    # I

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 612
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_e

    .line 614
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 682
    :goto_d
    return-void

    .line 622
    :cond_e
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    if-nez v0, :cond_18

    .line 624
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 632
    :cond_18
    iget-boolean v0, p0, mEnable:Z

    if-eqz v0, :cond_24

    .line 634
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, disable()V

    .line 642
    :cond_24
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, mEnable:Z

    .line 648
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 650
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 652
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 656
    invoke-direct {p0}, clearTimeOutCheckService()V

    .line 660
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 662
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 664
    iget-object v0, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 666
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d
.end method

.method public final enable(II)V
    .registers 9
    .param p1, "mode"    # I
    .param p2, "param"    # I

    .prologue
    const v2, 0x461c4000    # 10000.0f

    .line 698
    packed-switch p1, :pswitch_data_6e

    .line 739
    :goto_6
    return-void

    .line 701
    :pswitch_7
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, enable(I)V

    goto :goto_6

    .line 706
    :pswitch_d
    const/16 v0, 0xa

    .line 707
    .local v0, "duration":I
    iput p2, p0, ACCURACY_CurrentLoc:I

    .line 708
    iget-object v1, p0, mLooper:Landroid/os/Looper;

    if-nez v1, :cond_1b

    .line 709
    const-string v1, "Looper is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 712
    :cond_1b
    iget-boolean v1, p0, mEnable:Z

    if-eqz v1, :cond_27

    .line 713
    const-string v1, "mEnable value is true."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, disable()V

    .line 716
    :cond_27
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 718
    const/4 v1, 0x1

    iput-boolean v1, p0, mEnable:Z

    .line 719
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v1, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 720
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v1, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 721
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v1, p0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 723
    invoke-direct {p0}, clearTimeOutCheckService()V

    .line 724
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v1, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 725
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 726
    iget-object v1, p0, mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 729
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$5;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 698
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 226
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    .line 232
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_17

    .line 234
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 244
    :cond_17
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 246
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 248
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, mEnable:Z

    .line 252
    const-string/jumbo v0, "sec_location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/location/SLocationManager;

    iput-object v0, p0, sLm:Lcom/samsung/location/SLocationManager;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, filter:Landroid/content/IntentFilter;

    .line 255
    iget-object v0, p0, filter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.contextaware.SLOCATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    return-void
.end method

.method public isEnable()Z
    .registers 2

    .prologue
    .line 880
    iget-boolean v0, p0, mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .registers 3

    .prologue
    .line 950
    iget-object v0, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_5

    .line 988
    :goto_4
    return-void

    .line 958
    :cond_5
    invoke-virtual {p0}, disable()V

    .line 962
    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_30

    .line 964
    iget-object v0, p0, mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_20

    .line 966
    invoke-direct {p0}, updateGpsPosition()V

    goto :goto_4

    .line 968
    :cond_20
    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 970
    invoke-direct {p0}, updateWpsPosition()V

    goto :goto_4

    .line 974
    :cond_2c
    invoke-direct {p0}, updateEmptyPosition()V

    goto :goto_4

    .line 978
    :cond_30
    iget-object v0, p0, mWpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 980
    invoke-direct {p0}, updateWpsPosition()V

    goto :goto_4

    .line 984
    :cond_3c
    invoke-direct {p0}, updateEmptyPosition()V

    goto :goto_4
.end method

.method public final occurTimeOut()V
    .registers 1

    .prologue
    .line 1218
    invoke-virtual {p0}, notifyCurrentPositionObserver()V

    .line 1220
    return-void
.end method

.method public final registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 906
    iput-object p1, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 908
    return-void
.end method

.method protected removeCurrentLoc()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 773
    iget-object v0, p0, sLm:Lcom/samsung/location/SLocationManager;

    if-eqz v0, :cond_1c

    .line 774
    iget-object v0, p0, sLm:Lcom/samsung/location/SLocationManager;

    sget-object v1, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.contextaware.SLOCATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/location/SLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;)I

    .line 775
    const-string v0, "Remove CurL"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 778
    :cond_1c
    return-void
.end method

.method protected requestCurrentLoc(I)V
    .registers 10
    .param p1, "duration"    # I

    .prologue
    const/4 v7, 0x0

    .line 743
    const/4 v0, 0x0

    .line 745
    .local v0, "flag_CurrLocOK":Z
    iget-object v2, p0, sLm:Lcom/samsung/location/SLocationManager;

    if-eqz v2, :cond_59

    .line 746
    iget-object v2, p0, sLm:Lcom/samsung/location/SLocationManager;

    iget v3, p0, ACCURACY_CurrentLoc:I

    sget-object v4, mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.contextaware.SLOCATION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/samsung/location/SLocationManager;->requestSingleLocation(IILandroid/app/PendingIntent;)I

    move-result v1

    .line 747
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result of SLM req : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 749
    const/4 v2, -0x1

    if-le v1, v2, :cond_4a

    .line 750
    const/4 v0, 0x1

    .line 751
    iget v2, p0, LocRequestSource:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, LocRequestSource:I

    .line 753
    sget-object v2, mContext:Landroid/content/Context;

    iget-object v3, p0, mBrReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    const-string v2, "Request CurL"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 763
    .end local v1    # "result":I
    :cond_4a
    :goto_4a
    if-nez v0, :cond_58

    .line 764
    invoke-direct {p0}, registerGpsListener()V

    .line 765
    invoke-direct {p0}, registerWpsListener()V

    .line 766
    iget v2, p0, LocRequestSource:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, LocRequestSource:I

    .line 769
    :cond_58
    return-void

    .line 760
    :cond_59
    const-string/jumbo v2, "requestSingleL err - sLm is null "

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public final terminateManager()V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 324
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 332
    :goto_a
    return-void

    .line 330
    :cond_b
    iget-object v0, p0, mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_a
.end method

.method public final unregisterCurrentPositionObserver()V
    .registers 2

    .prologue
    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, mListener:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 930
    return-void
.end method
