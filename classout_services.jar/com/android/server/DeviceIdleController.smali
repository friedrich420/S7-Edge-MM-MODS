.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;
    }
.end annotation


# static fields
.field private static final ACTION_STEP_IDLE_STATE:Ljava/lang/String; = "com.android.server.device_idle.STEP_IDLE_STATE"

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field static final MSG_REPORT_ACTIVE:I = 0x4

.field static final MSG_REPORT_IDLE_OFF:I = 0x3

.field static final MSG_REPORT_IDLE_ON:I = 0x2

.field static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x5

.field static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnabled:Z

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHaveGps:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private mInactiveTimeout:J

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNotMoving:Z

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mSensing:Z

.field private mSensingAlarmIntent:Landroid/app/PendingIntent;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSigMotionActive:Z

.field private final mSigMotionListener:Landroid/hardware/TriggerEventListener;

.field private mSigMotionSensor:Landroid/hardware/Sensor;

.field private mState:I

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 825
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 184
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 194
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 200
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 206
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 213
    new-array v0, v1, [I

    iput-object v0, p0, mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 218
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 224
    new-array v0, v1, [I

    iput-object v0, p0, mPowerSaveWhitelistAllAppIdArray:[I

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 241
    new-array v0, v1, [I

    iput-object v0, p0, mTempWhitelistAppIdArray:[I

    .line 243
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 281
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, mSigMotionListener:Landroid/hardware/TriggerEventListener;

    .line 289
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, mGenericLocationListener:Landroid/location/LocationListener;

    .line 310
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, mGpsLocationListener:Landroid/location/LocationListener;

    .line 826
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 827
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 828
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 100
    iget-object v0, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 100
    iget-object v0, p0, mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 100
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 100
    iget-object v0, p0, mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 100
    iget v0, p0, mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 100
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 8
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .prologue
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 1498
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1b

    .line 1500
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1502
    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 1503
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1505
    :cond_32
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 1506
    .local v2, "size":I
    new-array v0, v2, [I

    .line 1507
    .local v0, "appids":[I
    const/4 v1, 0x0

    :goto_39
    if-ge v1, v2, :cond_44

    .line 1508
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1507
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1510
    :cond_44
    return-object v0
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1682
    const-string v0, "Device idle controller (deviceidle) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    const-string v0, "  [-h] [CMD]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    const-string v0, "Commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    const-string v0, "  step"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    const-string v0, "  force-idle"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    const-string v0, "    Use \"step\" to get out."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    const-string v0, "  disable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const-string v0, "  enable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    const-string v0, "  enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    const-string v0, "  whitelist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    const-string v0, "  tempwhitelist [package ..]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    const-string v0, "    Temporarily place packages in whitelist for 10 seconds."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 831
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1163
    iget-object v0, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1165
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 1579
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1584
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :cond_b
    :try_start_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v8, :cond_13

    if-ne v6, v10, :cond_b

    .line 1588
    :cond_13
    if-eq v6, v8, :cond_38

    .line 1589
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "no start tag found"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1e} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1e} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1e} :catch_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1e} :catch_d7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_1e} :catch_10d

    .line 1620
    .end local v6    # "type":I
    :catch_1e
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_37
    :goto_37
    return-void

    .line 1592
    .restart local v6    # "type":I
    :cond_38
    :try_start_38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1594
    .local v3, "outerDepth":I
    :cond_3c
    :goto_3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_37

    if-ne v6, v11, :cond_4a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_37

    .line 1595
    :cond_4a
    if-eq v6, v11, :cond_3c

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3c

    .line 1599
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1600
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "wl"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 1601
    const/4 v7, 0x0

    const-string/jumbo v8, "n"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_63} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_63} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_63} :catch_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_63} :catch_d7
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_63} :catch_f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_63} :catch_10d

    move-result-object v2

    .line 1602
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3c

    .line 1604
    const v7, 0xa200

    :try_start_69
    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1608
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_69 .. :try_end_7e} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_7e} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_7e} :catch_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_7e} :catch_d7
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7e} :catch_f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_69 .. :try_end_7e} :catch_10d

    goto :goto_3c

    .line 1610
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_7f
    move-exception v7

    goto :goto_3c

    .line 1614
    .end local v2    # "name":Ljava/lang/String;
    :cond_81
    :try_start_81
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <config>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_a0} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_a0} :catch_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_a0} :catch_d7
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_a0} :catch_f2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_a0} :catch_10d

    goto :goto_3c

    .line 1622
    .end local v3    # "outerDepth":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_a1
    move-exception v1

    .line 1623
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1624
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_bc
    move-exception v1

    .line 1625
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1626
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_d7
    move-exception v1

    .line 1627
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1628
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_f2
    move-exception v1

    .line 1629
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 1630
    .end local v1    # "e":Ljava/io/IOException;
    :catch_10d
    move-exception v1

    .line 1631
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing config "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .prologue
    .line 1545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1547
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1548
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .prologue
    .line 1551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1553
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1554
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_1e

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 154
    :pswitch_8
    const-string v0, "ACTIVE"

    goto :goto_7

    .line 155
    :pswitch_b
    const-string v0, "INACTIVE"

    goto :goto_7

    .line 156
    :pswitch_e
    const-string v0, "IDLE_PENDING"

    goto :goto_7

    .line 157
    :pswitch_11
    const-string v0, "SENSING"

    goto :goto_7

    .line 158
    :pswitch_14
    const-string v0, "LOCATING"

    goto :goto_7

    .line 159
    :pswitch_17
    const-string v0, "IDLE"

    goto :goto_7

    .line 160
    :pswitch_1a
    const-string v0, "IDLE_MAINTENANCE"

    goto :goto_7

    .line 153
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked()V
    .registers 5

    .prologue
    .line 1528
    iget-object v2, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1529
    .local v1, "size":I
    iget-object v2, p0, mTempWhitelistAppIdArray:[I

    array-length v2, v2

    if-eq v2, v1, :cond_f

    .line 1530
    new-array v2, v1, [I

    iput-object v2, p0, mTempWhitelistAppIdArray:[I

    .line 1532
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1f

    .line 1533
    iget-object v2, p0, mTempWhitelistAppIdArray:[I

    iget-object v3, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 1532
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1535
    :cond_1f
    iget-object v2, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_2a

    .line 1540
    iget-object v2, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, mTempWhitelistAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 1542
    :cond_2a
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 4

    .prologue
    .line 1514
    iget-object v0, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 1516
    iget-object v0, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, mPowerSaveWhitelistAllAppIdArray:[I

    .line 1518
    iget-object v0, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_23

    .line 1523
    iget-object v0, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1525
    :cond_23
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 20
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 1110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1111
    .local v6, "timeNow":J
    const/4 v4, 0x0

    .line 1112
    .local v4, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    monitor-enter p0

    .line 1113
    :try_start_6
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1114
    .local v2, "callingAppId":I
    const/16 v8, 0x2710

    if-lt v2, v8, :cond_3c

    .line 1115
    iget-object v8, p0, mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 1116
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not on whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1150
    .end local v2    # "callingAppId":I
    :catchall_39
    move-exception v8

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_39

    throw v8

    .line 1120
    .restart local v2    # "callingAppId":I
    :cond_3c
    :try_start_3c
    iget-object v8, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v8, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 1121
    iget-object v8, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1122
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v3, :cond_99

    const/4 v5, 0x1

    .line 1124
    .local v5, "newEntry":Z
    :goto_51
    if-eqz v5, :cond_66

    .line 1125
    new-instance v3, Landroid/util/Pair;

    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    new-instance v8, Landroid/util/MutableLong;

    const-wide/16 v10, 0x0

    invoke-direct {v8, v10, v11}, Landroid/util/MutableLong;-><init>(J)V

    move-object/from16 v0, p6

    invoke-direct {v3, v8, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    .restart local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v8, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1128
    :cond_66
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/util/MutableLong;

    add-long v10, v6, p3

    iput-wide v10, v8, Landroid/util/MutableLong;->value:J
    :try_end_6e
    .catchall {:try_start_3c .. :try_end_6e} :catchall_39

    .line 1132
    if-eqz v5, :cond_92

    .line 1135
    :try_start_70
    iget-object v8, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v9, 0x8011

    move-object/from16 v0, p6

    invoke-interface {v8, v9, v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7a} :catch_9e
    .catchall {:try_start_70 .. :try_end_7a} :catchall_39

    .line 1139
    :goto_7a
    :try_start_7a
    move-wide/from16 v0, p3

    invoke-direct {p0, p2, v0, v1}, postTempActiveTimeoutMessage(IJ)V

    .line 1140
    invoke-direct {p0}, updateTempWhitelistAppIdsLocked()V

    .line 1141
    iget-object v8, p0, mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v8, :cond_8f

    .line 1142
    if-nez p5, :cond_9b

    .line 1143
    iget-object v8, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v9, p0, mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1148
    :cond_8f
    :goto_8f
    invoke-direct {p0}, reportTempWhitelistChangedLocked()V

    .line 1150
    :cond_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_7a .. :try_end_93} :catchall_39

    .line 1151
    if-eqz v4, :cond_98

    .line 1152
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1154
    :cond_98
    return-void

    .line 1122
    .end local v5    # "newEntry":Z
    :cond_99
    const/4 v5, 0x0

    goto :goto_51

    .line 1145
    .restart local v5    # "newEntry":Z
    :cond_9b
    :try_start_9b
    iget-object v4, p0, mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_39

    goto :goto_8f

    .line 1137
    :catch_9e
    move-exception v8

    goto :goto_7a
.end method

.method public addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 17
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .prologue
    .line 1097
    :try_start_0
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 1098
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .local v3, "appId":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object/from16 v7, p7

    .line 1099
    invoke-virtual/range {v1 .. v7}, addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1102
    .end local v0    # "uid":I
    .end local v3    # "appId":I
    :goto_19
    return-void

    .line 1100
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 972
    monitor-enter p0

    .line 974
    :try_start_1
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0xa200

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 978
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 979
    invoke-direct {p0}, reportPowerSaveWhitelistChangedLocked()V

    .line 980
    invoke-direct {p0}, updateWhitelistAppIdsLocked()V

    .line 981
    invoke-virtual {p0}, writeConfigFileLocked()V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2b} :catch_2e
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    .line 983
    :cond_2b
    const/4 v2, 0x1

    :try_start_2c
    monitor-exit p0

    .line 985
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_2d
    return v2

    .line 984
    :catch_2e
    move-exception v1

    .line 985
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_2d

    .line 987
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_32
    move-exception v2

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v2
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 1246
    iget v0, p0, mState:I

    if-eqz v0, :cond_16

    .line 1247
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1248
    invoke-virtual {p0, p1, p2}, scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 1249
    iput v1, p0, mState:I

    .line 1250
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, mInactiveTimeout:J

    .line 1251
    invoke-virtual {p0}, resetIdleManagementLocked()V

    .line 1253
    :cond_16
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 4

    .prologue
    .line 1257
    iget-boolean v0, p0, mScreenOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_c

    :cond_8
    iget-boolean v0, p0, mForceIdle:Z

    if-eqz v0, :cond_28

    :cond_c
    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_28

    iget v0, p0, mState:I

    if-nez v0, :cond_28

    .line 1260
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 1262
    invoke-virtual {p0}, resetIdleManagementLocked()V

    .line 1263
    iget-wide v0, p0, mInactiveTimeout:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, scheduleAlarmLocked(JZ)V

    .line 1264
    iget v0, p0, mState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1266
    :cond_28
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1446
    iget-wide v0, p0, mNextAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1447
    iput-wide v2, p0, mNextAlarmTime:J

    .line 1448
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1450
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .prologue
    .line 1461
    iget-boolean v0, p0, mLocating:Z

    if-eqz v0, :cond_15

    .line 1462
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1463
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1464
    const/4 v0, 0x0

    iput-boolean v0, p0, mLocating:Z

    .line 1466
    :cond_15
    return-void
.end method

.method cancelSensingAlarmLocked()V
    .registers 3

    .prologue
    .line 1453
    iget-boolean v0, p0, mSensing:Z

    if-eqz v0, :cond_e

    .line 1455
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, mSensingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, mSensing:Z

    .line 1458
    :cond_e
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 1168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1169
    .local v2, "timeNow":J
    monitor-enter p0

    .line 1170
    :try_start_5
    iget-object v1, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1171
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v0, :cond_11

    .line 1173
    monitor-exit p0

    .line 1195
    :goto_10
    return-void

    .line 1175
    :cond_11
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v4, v1, Landroid/util/MutableLong;->value:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_41

    .line 1176
    iget-object v1, p0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1180
    invoke-direct {p0}, updateTempWhitelistAppIdsLocked()V

    .line 1181
    iget-object v1, p0, mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2e

    .line 1182
    iget-object v1, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v4, p0, mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1184
    :cond_2e
    invoke-direct {p0}, reportTempWhitelistChangedLocked()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3e

    .line 1186
    :try_start_31
    iget-object v4, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v5, 0x4011

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v5, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_4c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3e

    .line 1194
    :goto_3c
    :try_start_3c
    monitor-exit p0

    goto :goto_10

    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catchall_3e
    move-exception v1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v1

    .line 1192
    .restart local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :cond_41
    :try_start_41
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v4, v1, Landroid/util/MutableLong;->value:J

    sub-long/2addr v4, v2

    invoke-direct {p0, p1, v4, v5}, postTempActiveTimeoutMessage(IJ)V
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_3e

    goto :goto_3c

    .line 1188
    :catch_4c
    move-exception v1

    goto :goto_3c
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1706
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_43

    .line 1708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump DeviceIdleController from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    :goto_42
    return-void

    .line 1714
    :cond_43
    if-eqz p3, :cond_3d0

    .line 1715
    const/4 v10, 0x0

    .line 1716
    .local v10, "userId":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_47
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_3d0

    .line 1717
    aget-object v7, p3, v14

    .line 1718
    .local v7, "arg":Ljava/lang/String;
    const-string v5, "-h"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1719
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_42

    .line 1721
    :cond_5e
    const-string v5, "-u"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1722
    add-int/lit8 v14, v14, 0x1

    .line 1723
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_73

    .line 1724
    aget-object v7, p3, v14

    .line 1725
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1716
    :cond_73
    add-int/lit8 v14, v14, 0x1

    goto :goto_47

    .line 1727
    :cond_76
    const-string v5, "-a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 1729
    const-string/jumbo v5, "step"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1730
    monitor-enter p0

    .line 1731
    :try_start_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_ab

    move-result-wide v22

    .line 1733
    .local v22, "token":J
    :try_start_8c
    invoke-virtual/range {p0 .. p0}, exitForceIdleLocked()V

    .line 1734
    invoke-virtual/range {p0 .. p0}, stepIdleStateLocked()V

    .line 1735
    const-string v5, "Stepped to: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, mState:I

    invoke-static {v5}, stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_8c .. :try_end_a6} :catchall_ae

    .line 1737
    :try_start_a6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1739
    monitor-exit p0

    goto :goto_42

    .end local v22    # "token":J
    :catchall_ab
    move-exception v5

    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_ab

    throw v5

    .line 1737
    .restart local v22    # "token":J
    :catchall_ae
    move-exception v5

    :try_start_af
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_ab

    .line 1741
    .end local v22    # "token":J
    :cond_b3
    const-string/jumbo v5, "force-idle"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    .line 1742
    monitor-enter p0

    .line 1743
    :try_start_bd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_d4

    move-result-wide v22

    .line 1745
    .restart local v22    # "token":J
    :try_start_c1
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEnabled:Z

    if-nez v5, :cond_d7

    .line 1746
    const-string v5, "Unable to go idle; not enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_c1 .. :try_end_ce} :catchall_11e

    .line 1764
    :try_start_ce
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto/16 :goto_42

    .line 1766
    .end local v22    # "token":J
    :catchall_d4
    move-exception v5

    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d4

    throw v5

    .line 1749
    .restart local v22    # "token":J
    :cond_d7
    const/4 v5, 0x1

    :try_start_d8
    move-object/from16 v0, p0

    iput-boolean v5, v0, mForceIdle:Z

    .line 1750
    invoke-virtual/range {p0 .. p0}, becomeInactiveIfAppropriateLocked()V

    .line 1751
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    .line 1752
    .local v4, "curState":I
    :goto_e3
    const/4 v5, 0x5

    if-eq v4, v5, :cond_111

    .line 1753
    invoke-virtual/range {p0 .. p0}, stepIdleStateLocked()V

    .line 1754
    move-object/from16 v0, p0

    iget v5, v0, mState:I

    if-ne v4, v5, :cond_10c

    .line 1755
    const-string v5, "Unable to go idle; stopped at "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1756
    move-object/from16 v0, p0

    iget v5, v0, mState:I

    invoke-static {v5}, stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p0 .. p0}, exitForceIdleLocked()V
    :try_end_106
    .catchall {:try_start_d8 .. :try_end_106} :catchall_11e

    .line 1764
    :try_start_106
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_d4

    goto/16 :goto_42

    .line 1760
    :cond_10c
    :try_start_10c
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    goto :goto_e3

    .line 1762
    :cond_111
    const-string v5, "Now forced in to idle mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_10c .. :try_end_118} :catchall_11e

    .line 1764
    :try_start_118
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1766
    monitor-exit p0

    goto/16 :goto_42

    .line 1764
    .end local v4    # "curState":I
    :catchall_11e
    move-exception v5

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_123
    .catchall {:try_start_118 .. :try_end_123} :catchall_d4

    .line 1768
    .end local v22    # "token":J
    :cond_123
    const-string/jumbo v5, "disable"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 1769
    monitor-enter p0

    .line 1770
    :try_start_12d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_155

    move-result-wide v22

    .line 1772
    .restart local v22    # "token":J
    :try_start_131
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEnabled:Z

    if-eqz v5, :cond_14f

    .line 1773
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, mEnabled:Z

    .line 1774
    const-string/jumbo v5, "disabled"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, becomeActiveLocked(Ljava/lang/String;I)V

    .line 1775
    const-string v5, "Idle mode disabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_131 .. :try_end_14f} :catchall_158

    .line 1778
    :cond_14f
    :try_start_14f
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1780
    monitor-exit p0

    goto/16 :goto_42

    .end local v22    # "token":J
    :catchall_155
    move-exception v5

    monitor-exit p0
    :try_end_157
    .catchall {:try_start_14f .. :try_end_157} :catchall_155

    throw v5

    .line 1778
    .restart local v22    # "token":J
    :catchall_158
    move-exception v5

    :try_start_159
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_15d
    .catchall {:try_start_159 .. :try_end_15d} :catchall_155

    .line 1782
    .end local v22    # "token":J
    :cond_15d
    const-string/jumbo v5, "enable"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_191

    .line 1783
    monitor-enter p0

    .line 1784
    :try_start_167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_189

    move-result-wide v22

    .line 1786
    .restart local v22    # "token":J
    :try_start_16b
    invoke-virtual/range {p0 .. p0}, exitForceIdleLocked()V

    .line 1787
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEnabled:Z

    if-nez v5, :cond_183

    .line 1788
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, mEnabled:Z

    .line 1789
    invoke-virtual/range {p0 .. p0}, becomeInactiveIfAppropriateLocked()V

    .line 1790
    const-string v5, "Idle mode enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_183
    .catchall {:try_start_16b .. :try_end_183} :catchall_18c

    .line 1793
    :cond_183
    :try_start_183
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1795
    monitor-exit p0

    goto/16 :goto_42

    .end local v22    # "token":J
    :catchall_189
    move-exception v5

    monitor-exit p0
    :try_end_18b
    .catchall {:try_start_183 .. :try_end_18b} :catchall_189

    throw v5

    .line 1793
    .restart local v22    # "token":J
    :catchall_18c
    move-exception v5

    :try_start_18d
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_191
    .catchall {:try_start_18d .. :try_end_191} :catchall_189

    .line 1797
    .end local v22    # "token":J
    :cond_191
    const-string/jumbo v5, "enabled"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    .line 1798
    monitor-enter p0

    .line 1799
    :try_start_19b
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEnabled:Z

    if-eqz v5, :cond_1ae

    const-string v5, "1"

    :goto_1a3
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    monitor-exit p0

    goto/16 :goto_42

    :catchall_1ab
    move-exception v5

    monitor-exit p0
    :try_end_1ad
    .catchall {:try_start_19b .. :try_end_1ad} :catchall_1ab

    throw v5

    .line 1799
    :cond_1ae
    :try_start_1ae
    const-string v5, " 0"
    :try_end_1b0
    .catchall {:try_start_1ae .. :try_end_1b0} :catchall_1ab

    goto :goto_1a3

    .line 1802
    :cond_1b1
    const-string/jumbo v5, "whitelist"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_335

    .line 1803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1805
    .restart local v22    # "token":J
    add-int/lit8 v14, v14, 0x1

    .line 1806
    :try_start_1c0
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_280

    .line 1807
    :cond_1c5
    :goto_1c5
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_32d

    .line 1808
    aget-object v7, p3, v14

    .line 1809
    add-int/lit8 v14, v14, 0x1

    .line 1810
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1e7

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_204

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_204

    .line 1812
    :cond_1e7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package must be prefixed with + or -: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1ff
    .catchall {:try_start_1c0 .. :try_end_1ff} :catchall_239

    .line 1852
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_42

    .line 1815
    :cond_204
    const/4 v5, 0x0

    :try_start_205
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 1816
    .local v16, "op":C
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 1817
    .local v17, "pkg":Ljava/lang/String;
    const/16 v5, 0x2b

    move/from16 v0, v16

    if-ne v0, v5, :cond_25a

    .line 1818
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23e

    .line 1819
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_238
    .catchall {:try_start_205 .. :try_end_238} :catchall_239

    goto :goto_1c5

    .line 1852
    .end local v16    # "op":C
    .end local v17    # "pkg":Ljava/lang/String;
    :catchall_239
    move-exception v5

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1821
    .restart local v16    # "op":C
    .restart local v17    # "pkg":Ljava/lang/String;
    :cond_23e
    :try_start_23e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1824
    :cond_25a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1830
    .end local v16    # "op":C
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_280
    monitor-enter p0
    :try_end_281
    .catchall {:try_start_23e .. :try_end_281} :catchall_239

    .line 1831
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_282
    :try_start_282
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_2ba

    .line 1832
    const-string/jumbo v5, "system-excidle,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1831
    add-int/lit8 v15, v15, 0x1

    goto :goto_282

    .line 1837
    :cond_2ba
    const/4 v15, 0x0

    :goto_2bb
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_2f3

    .line 1838
    const-string/jumbo v5, "system,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1840
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1837
    add-int/lit8 v15, v15, 0x1

    goto :goto_2bb

    .line 1843
    :cond_2f3
    const/4 v15, 0x0

    :goto_2f4
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v15, v5, :cond_32c

    .line 1844
    const-string/jumbo v5, "user,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1846
    const-string v5, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1843
    add-int/lit8 v15, v15, 0x1

    goto :goto_2f4

    .line 1849
    :cond_32c
    monitor-exit p0
    :try_end_32d
    .catchall {:try_start_282 .. :try_end_32d} :catchall_332

    .line 1852
    .end local v15    # "j":I
    :cond_32d
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_42

    .line 1849
    .restart local v15    # "j":I
    :catchall_332
    move-exception v5

    :try_start_333
    monitor-exit p0
    :try_end_334
    .catchall {:try_start_333 .. :try_end_334} :catchall_332

    :try_start_334
    throw v5
    :try_end_335
    .catchall {:try_start_334 .. :try_end_335} :catchall_239

    .line 1855
    .end local v15    # "j":I
    .end local v22    # "token":J
    :cond_335
    const-string/jumbo v5, "tempwhitelist"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38d

    .line 1856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1858
    .restart local v22    # "token":J
    add-int/lit8 v14, v14, 0x1

    .line 1859
    :try_start_344
    move-object/from16 v0, p3

    array-length v5, v0

    if-lt v14, v5, :cond_355

    .line 1860
    const-string v5, "At least one package name must be specified"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_350
    .catchall {:try_start_344 .. :try_end_350} :catchall_383

    .line 1871
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_42

    .line 1863
    :cond_355
    :goto_355
    :try_start_355
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v14, v5, :cond_388

    .line 1864
    aget-object v7, p3, v14

    .line 1865
    add-int/lit8 v14, v14, 0x1

    .line 1866
    const/4 v6, 0x0

    const-wide/16 v8, 0x2710

    const/4 v11, 0x1

    const-string/jumbo v12, "shell"

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_382
    .catchall {:try_start_355 .. :try_end_382} :catchall_383

    goto :goto_355

    .line 1871
    :catchall_383
    move-exception v5

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_388
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_42

    .line 1874
    .end local v22    # "token":J
    :cond_38d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3b6

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3b6

    .line 1875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 1878
    :cond_3b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 1884
    .end local v7    # "arg":Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v14    # "i":I
    :cond_3d0
    monitor-enter p0

    .line 1885
    :try_start_3d1
    move-object/from16 v0, p0

    iget-object v5, v0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 1888
    .local v18, "size":I
    if-lez v18, :cond_409

    .line 1889
    const-string v5, "  Whitelist (except idle) system apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3ec
    move/from16 v0, v18

    if-ge v14, v0, :cond_409

    .line 1891
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    add-int/lit8 v14, v14, 0x1

    goto :goto_3ec

    .line 1895
    .end local v14    # "i":I
    :cond_409
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 1896
    if-lez v18, :cond_438

    .line 1897
    const-string v5, "  Whitelist system apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_41b
    move/from16 v0, v18

    if-ge v14, v0, :cond_438

    .line 1899
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    add-int/lit8 v14, v14, 0x1

    goto :goto_41b

    .line 1903
    .end local v14    # "i":I
    :cond_438
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v18

    .line 1904
    if-lez v18, :cond_467

    .line 1905
    const-string v5, "  Whitelist user apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_44a
    move/from16 v0, v18

    if-ge v14, v0, :cond_467

    .line 1907
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    add-int/lit8 v14, v14, 0x1

    goto :goto_44a

    .line 1911
    .end local v14    # "i":I
    :cond_467
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    .line 1912
    if-lez v18, :cond_497

    .line 1913
    const-string v5, "  Whitelist (except idle) all app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_479
    move/from16 v0, v18

    if-ge v14, v0, :cond_497

    .line 1915
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1917
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1914
    add-int/lit8 v14, v14, 0x1

    goto :goto_479

    .line 1920
    .end local v14    # "i":I
    :cond_497
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    .line 1921
    if-lez v18, :cond_4c7

    .line 1922
    const-string v5, "  Whitelist all app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4a9
    move/from16 v0, v18

    if-ge v14, v0, :cond_4c7

    .line 1924
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1926
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1923
    add-int/lit8 v14, v14, 0x1

    goto :goto_4a9

    .line 1929
    .end local v14    # "i":I
    :cond_4c7
    move-object/from16 v0, p0

    iget-object v5, v0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 1930
    if-lez v18, :cond_526

    .line 1931
    const-string v5, "  Temp whitelist schedule:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1933
    .local v20, "timeNow":J
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4dd
    move/from16 v0, v18

    if-ge v14, v0, :cond_526

    .line 1934
    const-string v5, "    UID="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v5, v0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1936
    const-string v5, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v5, v0, mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1938
    .local v13, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v8, v5, Landroid/util/MutableLong;->value:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v8, v9, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1939
    const-string v5, " - "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1940
    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    add-int/lit8 v14, v14, 0x1

    goto :goto_4dd

    .line 1943
    .end local v13    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v20    # "timeNow":J
    :cond_526
    move-object/from16 v0, p0

    iget-object v5, v0, mTempWhitelistAppIdArray:[I

    if-eqz v5, :cond_559

    move-object/from16 v0, p0

    iget-object v5, v0, mTempWhitelistAppIdArray:[I

    array-length v0, v5

    move/from16 v18, v0

    .line 1944
    :goto_533
    if-lez v18, :cond_55c

    .line 1945
    const-string v5, "  Temp whitelist app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1946
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_53d
    move/from16 v0, v18

    if-ge v14, v0, :cond_55c

    .line 1947
    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v5, v0, mTempWhitelistAppIdArray:[I

    aget v5, v5, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1949
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1946
    add-int/lit8 v14, v14, 0x1

    goto :goto_53d

    .line 1943
    .end local v14    # "i":I
    :cond_559
    const/16 v18, 0x0

    goto :goto_533

    .line 1953
    :cond_55c
    const-string v5, "  mEnabled="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mEnabled:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1954
    const-string v5, "  mForceIdle="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mForceIdle:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1955
    const-string v5, "  mSigMotionSensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mSigMotionSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1956
    const-string v5, "  mCurDisplay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mCurDisplay:Landroid/view/Display;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1957
    const-string v5, "  mScreenOn="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mScreenOn:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1958
    const-string v5, "  mCharging="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mCharging:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1959
    const-string v5, "  mSigMotionActive="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mSigMotionActive:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1960
    const-string v5, "  mSensing="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mSensing:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mNotMoving="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1961
    move-object/from16 v0, p0

    iget-boolean v5, v0, mNotMoving:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1962
    const-string v5, "  mLocating="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mLocating:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mHaveGps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    move-object/from16 v0, p0

    iget-boolean v5, v0, mHaveGps:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mLocated="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, mLocated:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v5, v0, mLastGenericLocation:Landroid/location/Location;

    if-eqz v5, :cond_632

    .line 1965
    const-string v5, "  mLastGenericLocation="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mLastGenericLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1967
    :cond_632
    move-object/from16 v0, p0

    iget-object v5, v0, mLastGpsLocation:Landroid/location/Location;

    if-eqz v5, :cond_648

    .line 1968
    const-string v5, "  mLastGpsLocation="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mLastGpsLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1970
    :cond_648
    const-string v5, "  mState="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, mState:I

    invoke-static {v5}, stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    const-string v5, "  mInactiveTimeout="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, mInactiveTimeout:J

    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1973
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextAlarmTime:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_692

    .line 1974
    const-string v5, "  mNextAlarmTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1975
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p2

    invoke-static {v8, v9, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1978
    :cond_692
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextIdlePendingDelay:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_6af

    .line 1979
    const-string v5, "  mNextIdlePendingDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1980
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextIdlePendingDelay:J

    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1983
    :cond_6af
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextIdleDelay:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_6cc

    .line 1984
    const-string v5, "  mNextIdleDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1985
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextIdleDelay:J

    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1986
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1988
    :cond_6cc
    monitor-exit p0

    goto/16 :goto_42

    .end local v18    # "size":I
    :catchall_6cf
    move-exception v5

    monitor-exit p0
    :try_end_6d1
    .catchall {:try_start_3d1 .. :try_end_6d1} :catchall_6cf

    throw v5
.end method

.method exitForceIdleLocked()V
    .registers 3

    .prologue
    .line 1279
    iget-boolean v0, p0, mForceIdle:Z

    if-eqz v0, :cond_19

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, mForceIdle:Z

    .line 1281
    iget-boolean v0, p0, mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_19

    .line 1282
    :cond_f
    const-string/jumbo v0, "exit-force-idle"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, becomeActiveLocked(Ljava/lang/String;I)V

    .line 1285
    :cond_19
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1198
    monitor-enter p0

    .line 1199
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, becomeActiveLocked(Ljava/lang/String;I)V

    .line 1200
    monitor-exit p0

    .line 1201
    return-void

    .line 1200
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1085
    monitor-enter p0

    .line 1086
    :try_start_1
    iget-object v0, p0, mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1087
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .prologue
    .line 1073
    monitor-enter p0

    .line 1074
    :try_start_1
    iget-object v0, p0, mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1075
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1079
    monitor-enter p0

    .line 1080
    :try_start_1
    iget-object v0, p0, mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1081
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1025
    monitor-enter p0

    .line 1026
    :try_start_1
    iget-object v4, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v5, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 1027
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 1028
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1029
    .local v1, "cur":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v4, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 1030
    iget-object v4, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1031
    add-int/lit8 v1, v1, 0x1

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1033
    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    iget-object v4, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_42

    .line 1034
    iget-object v4, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1035
    add-int/lit8 v1, v1, 0x1

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1037
    :cond_42
    monitor-exit p0

    return-object v0

    .line 1038
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_44
    move-exception v4

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v4
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1042
    monitor-enter p0

    .line 1043
    :try_start_1
    iget-object v4, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v5, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 1044
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 1045
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1046
    .local v1, "cur":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v4, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 1047
    iget-object v4, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1048
    add-int/lit8 v1, v1, 0x1

    .line 1046
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1050
    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    iget-object v4, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_42

    .line 1051
    iget-object v4, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1052
    add-int/lit8 v1, v1, 0x1

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1054
    :cond_42
    monitor-exit p0

    return-object v0

    .line 1055
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_44
    move-exception v4

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v4
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1003
    monitor-enter p0

    .line 1004
    :try_start_1
    iget-object v3, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1005
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1006
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_19

    .line 1007
    iget-object v3, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1009
    :cond_19
    monitor-exit p0

    return-object v0

    .line 1010
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1014
    monitor-enter p0

    .line 1015
    :try_start_1
    iget-object v3, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1016
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1017
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_19

    .line 1018
    iget-object v3, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1020
    :cond_19
    monitor-exit p0

    return-object v0

    .line 1021
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1387
    iget v0, p0, mState:I

    if-eqz v0, :cond_1b

    .line 1388
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p3, v0}, scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 1389
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 1390
    iput-wide p1, p0, mInactiveTimeout:J

    .line 1391
    iget v0, p0, mState:I

    invoke-static {v0, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, cancelSensingAlarmLocked()V

    .line 1393
    invoke-virtual {p0}, becomeInactiveIfAppropriateLocked()V

    .line 1395
    :cond_1b
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 8

    .prologue
    .line 1641
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1644
    .local v1, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_38

    .line 1645
    :try_start_6
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1646
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1647
    invoke-virtual {p0, v2}, writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1648
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_35

    .line 1652
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_18
    iget-object v5, p0, mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v5

    .line 1653
    const/4 v3, 0x0

    .line 1655
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1c
    iget-object v4, p0, mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1656
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1657
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1658
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1659
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1660
    iget-object v4, p0, mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_33} :catch_3a
    .catchall {:try_start_1c .. :try_end_33} :catchall_48

    .line 1665
    :goto_33
    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_48

    .line 1666
    return-void

    .line 1648
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v4
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    .line 1649
    :catch_38
    move-exception v4

    goto :goto_18

    .line 1661
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/io/IOException;
    :try_start_3b
    const-string v4, "DeviceIdleController"

    const-string v6, "Error writing config file"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1663
    iget-object v4, p0, mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_33

    .line 1665
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_48

    throw v4
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1066
    monitor-enter p0

    .line 1067
    :try_start_1
    iget-object v0, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 1069
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1059
    monitor-enter p0

    .line 1060
    :try_start_1
    iget-object v0, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 1062
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onAnyMotionResult(I)V
    .registers 5
    .param p1, "result"    # I

    .prologue
    const/4 v0, 0x1

    .line 619
    if-ne p1, v0, :cond_13

    .line 621
    monitor-enter p0

    .line 622
    :try_start_4
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "sense_motion"

    invoke-virtual {p0, v0, v1, v2}, handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 623
    monitor-exit p0

    .line 643
    :cond_f
    :goto_f
    return-void

    .line 623
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 624
    :cond_13
    if-nez p1, :cond_f

    .line 626
    iget v0, p0, mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 628
    monitor-enter p0

    .line 629
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, mNotMoving:Z

    .line 630
    invoke-virtual {p0}, stepIdleStateLocked()V

    .line 631
    monitor-exit p0

    goto :goto_f

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v0

    .line 632
    :cond_26
    iget v0, p0, mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 635
    monitor-enter p0

    .line 636
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, mNotMoving:Z

    .line 637
    iget-boolean v0, p0, mLocated:Z

    if-eqz v0, :cond_36

    .line 638
    invoke-virtual {p0}, stepIdleStateLocked()V

    .line 640
    :cond_36
    monitor-exit p0

    goto :goto_f

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .prologue
    .line 918
    const/16 v3, 0x1f4

    if-ne p1, v3, :cond_12f

    .line 919
    monitor-enter p0

    .line 920
    :try_start_5
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 921
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 922
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v3}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 923
    const-string/jumbo v3, "netpolicy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 925
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 927
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, mSensorManager:Landroid/hardware/SensorManager;

    .line 928
    iget-object v3, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, mSigMotionSensor:Landroid/hardware/Sensor;

    .line 929
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, mLocationManager:Landroid/location/LocationManager;

    .line 931
    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v3

    iput-object v3, p0, mLocationRequest:Landroid/location/LocationRequest;

    .line 936
    new-instance v4, Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iget-object v5, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v6, p0, mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {v4, v3, v5, v6, p0}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;)V

    iput-object v4, p0, mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 940
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 943
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, mAlarmIntent:Landroid/app/PendingIntent;

    .line 945
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 948
    .local v2, "intentSensing":Landroid/content/Intent;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, mSensingAlarmIntent:Landroid/app/PendingIntent;

    .line 950
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, mIdleIntent:Landroid/content/Intent;

    .line 951
    iget-object v3, p0, mIdleIntent:Landroid/content/Intent;

    const/high16 v4, 0x50000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 954
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 955
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v3, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 958
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 959
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 963
    iget-object v3, p0, mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v4, p0, mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 965
    iget-object v3, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 966
    invoke-virtual {p0}, updateDisplayLocked()V

    .line 967
    monitor-exit p0

    .line 969
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentSensing":Landroid/content/Intent;
    :cond_12f
    return-void

    .line 967
    :catchall_130
    move-exception v3

    monitor-exit p0
    :try_end_132
    .catchall {:try_start_5 .. :try_end_132} :catchall_130

    throw v3
.end method

.method public onStart()V
    .registers 14

    .prologue
    .line 836
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 838
    .local v8, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 839
    :try_start_9
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x112001a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, mEnabled:Z

    .line 841
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v9

    .line 842
    .local v9, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v9}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 843
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_23
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v5, v10, :cond_54

    .line 844
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_132

    .line 846
    .local v7, "pkg":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_30
    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 847
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_51

    .line 848
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 849
    .local v3, "appid":I
    iget-object v10, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v10, p0, mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_51} :catch_13a
    .catchall {:try_start_30 .. :try_end_51} :catchall_132

    .line 843
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :cond_51
    :goto_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 855
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_54
    :try_start_54
    invoke-virtual {v9}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v1

    .line 856
    .local v1, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_59
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v5, v10, :cond_9b

    .line 857
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_132

    .line 859
    .restart local v7    # "pkg":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_66
    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 860
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_98

    .line 861
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 864
    .restart local v3    # "appid":I
    iget-object v10, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v10, p0, mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 866
    iget-object v10, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v10, p0, mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_98} :catch_137
    .catchall {:try_start_66 .. :try_end_98} :catchall_132

    .line 856
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :cond_98
    :goto_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 873
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_9b
    const/4 v4, 0x0

    .line 874
    .local v4, "cscAllowPowerList":Ljava/lang/String;
    :try_start_9c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigAllowedPackagesDuringPowerSaving"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 877
    if-eqz v4, :cond_f4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f4

    .line 878
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, "listApps":[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_b5
    array-length v10, v6

    if-ge v5, v10, :cond_f4

    .line 882
    aget-object v10, v6, v5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_bd
    .catchall {:try_start_9c .. :try_end_bd} :catchall_132

    move-result-object v7

    .line 884
    .restart local v7    # "pkg":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_bf
    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 885
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_f1

    .line 886
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 889
    .restart local v3    # "appid":I
    iget-object v10, p0, mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v10, p0, mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 891
    iget-object v10, p0, mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v10, p0, mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_f1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bf .. :try_end_f1} :catch_135
    .catchall {:try_start_bf .. :try_end_f1} :catchall_132

    .line 881
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :cond_f1
    :goto_f1
    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    .line 899
    .end local v6    # "listApps":[Ljava/lang/String;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_f4
    :try_start_f4
    new-instance v10, Lcom/android/server/DeviceIdleController$Constants;

    iget-object v11, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-direct {v10, p0, v11, v12}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v10, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 901
    invoke-virtual {p0}, readConfigFileLocked()V

    .line 902
    invoke-direct {p0}, updateWhitelistAppIdsLocked()V

    .line 904
    const/4 v10, 0x1

    iput-boolean v10, p0, mScreenOn:Z

    .line 907
    const/4 v10, 0x1

    iput-boolean v10, p0, mCharging:Z

    .line 908
    const/4 v10, 0x0

    iput v10, p0, mState:I

    .line 909
    iget-object v10, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v10, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v10, p0, mInactiveTimeout:J

    .line 910
    monitor-exit p0
    :try_end_11b
    .catchall {:try_start_f4 .. :try_end_11b} :catchall_132

    .line 912
    const-string/jumbo v10, "deviceidle"

    new-instance v11, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    invoke-virtual {p0, v10, v11}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 913
    const-class v10, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v11, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v11, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v10, v11}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 914
    return-void

    .line 910
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "cscAllowPowerList":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "sysConfig":Lcom/android/server/SystemConfig;
    :catchall_132
    move-exception v10

    :try_start_133
    monitor-exit p0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v10

    .line 894
    .restart local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "cscAllowPowerList":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "listApps":[Ljava/lang/String;
    .restart local v7    # "pkg":Ljava/lang/String;
    .restart local v9    # "sysConfig":Lcom/android/server/SystemConfig;
    :catch_135
    move-exception v10

    goto :goto_f1

    .line 869
    .end local v4    # "cscAllowPowerList":Ljava/lang/String;
    .end local v6    # "listApps":[Ljava/lang/String;
    :catch_137
    move-exception v10

    goto/16 :goto_98

    .line 852
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_13a
    move-exception v10

    goto/16 :goto_51
.end method

.method readConfigFileLocked()V
    .registers 6

    .prologue
    .line 1558
    iget-object v3, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1561
    :try_start_5
    iget-object v3, p0, mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_1f

    move-result-object v2

    .line 1566
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1567
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1568
    invoke-direct {p0, v1}, readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1b} :catch_21
    .catchall {:try_start_b .. :try_end_1b} :catchall_28

    .line 1572
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_2d

    .line 1576
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_1e
    return-void

    .line 1562
    :catch_1f
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1e

    .line 1569
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_21
    move-exception v3

    .line 1572
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_1e

    .line 1573
    :catch_26
    move-exception v3

    goto :goto_1e

    .line 1571
    :catchall_28
    move-exception v3

    .line 1572
    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2f

    .line 1574
    :goto_2c
    throw v3

    .line 1573
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2d
    move-exception v3

    goto :goto_1e

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2f
    move-exception v4

    goto :goto_2c
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1398
    iget v0, p0, mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 1399
    invoke-virtual {p0}, cancelLocatingLocked()V

    .line 1411
    :cond_8
    :goto_8
    return-void

    .line 1403
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, mLastGenericLocation:Landroid/location/Location;

    .line 1404
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    iget-boolean v0, p0, mHaveGps:Z

    if-nez v0, :cond_8

    .line 1407
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, mLocated:Z

    .line 1408
    iget-boolean v0, p0, mNotMoving:Z

    if-eqz v0, :cond_8

    .line 1409
    invoke-virtual {p0}, stepIdleStateLocked()V

    goto :goto_8
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1414
    iget v0, p0, mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 1415
    invoke-virtual {p0}, cancelLocatingLocked()V

    .line 1427
    :cond_8
    :goto_8
    return-void

    .line 1419
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, mLastGpsLocation:Landroid/location/Location;

    .line 1420
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 1423
    const/4 v0, 0x1

    iput-boolean v0, p0, mLocated:Z

    .line 1424
    iget-boolean v0, p0, mNotMoving:Z

    if-eqz v0, :cond_8

    .line 1425
    invoke-virtual {p0}, stepIdleStateLocked()V

    goto :goto_8
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 991
    monitor-enter p0

    .line 992
    :try_start_1
    iget-object v0, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 993
    invoke-direct {p0}, reportPowerSaveWhitelistChangedLocked()V

    .line 994
    invoke-direct {p0}, updateWhitelistAppIdsLocked()V

    .line 995
    invoke-virtual {p0}, writeConfigFileLocked()V

    .line 996
    const/4 v0, 0x1

    monitor-exit p0

    .line 999
    :goto_14
    return v0

    .line 998
    :cond_15
    monitor-exit p0

    .line 999
    const/4 v0, 0x0

    goto :goto_14

    .line 998
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method resetIdleManagementLocked()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1269
    iput-wide v0, p0, mNextIdlePendingDelay:J

    .line 1270
    iput-wide v0, p0, mNextIdleDelay:J

    .line 1271
    invoke-virtual {p0}, cancelAlarmLocked()V

    .line 1272
    invoke-virtual {p0}, cancelSensingAlarmLocked()V

    .line 1273
    invoke-virtual {p0}, cancelLocatingLocked()V

    .line 1274
    invoke-virtual {p0}, stopMonitoringSignificantMotion()V

    .line 1275
    iget-object v0, p0, mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 1276
    return-void
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 9
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1470
    iget-object v0, p0, mSigMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_6

    .line 1485
    :goto_5
    return-void

    .line 1477
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, mNextAlarmTime:J

    .line 1478
    if-eqz p3, :cond_19

    .line 1479
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, mNextAlarmTime:J

    iget-object v1, p0, mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setIdleUntil(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    .line 1482
    :cond_19
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, mNextAlarmTime:J

    iget-object v1, p0, mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_5
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .prologue
    .line 1239
    iget-object v2, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x4

    iget v1, p0, mState:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_d

    iget v1, p0, mState:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_18

    :cond_d
    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v2, v3, p2, v1, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1241
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1242
    return-void

    .line 1239
    .end local v0    # "msg":Landroid/os/Message;
    :cond_18
    const/4 v1, 0x0

    goto :goto_e
.end method

.method scheduleSensingAlarmLocked(J)V
    .registers 8
    .param p1, "delay"    # J

    .prologue
    .line 1489
    invoke-virtual {p0}, cancelSensingAlarmLocked()V

    .line 1490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, mNextAlarmTime:J

    .line 1491
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-wide v2, p0, mNextAlarmTime:J

    iget-object v4, p0, mSensingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1493
    const/4 v0, 0x1

    iput-boolean v0, p0, mSensing:Z

    .line 1494
    return-void
.end method

.method public setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1157
    monitor-enter p0

    .line 1158
    :try_start_1
    iput-object p1, p0, mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    .line 1159
    monitor-exit p0

    .line 1160
    return-void

    .line 1159
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method significantMotionLocked()V
    .registers 4

    .prologue
    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, mSigMotionActive:Z

    .line 1380
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1381
    return-void
.end method

.method startMonitoringSignificantMotion()V
    .registers 4

    .prologue
    .line 1431
    iget-object v0, p0, mSigMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, mSigMotionActive:Z

    if-nez v0, :cond_14

    .line 1432
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, mSigMotionActive:Z

    .line 1435
    :cond_14
    return-void
.end method

.method stepIdleStateLocked()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1289
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 1291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1292
    .local v8, "now":J
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v8

    iget-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 1294
    iget v0, p0, mState:I

    if-eqz v0, :cond_28

    .line 1295
    const-string v0, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, becomeActiveLocked(Ljava/lang/String;I)V

    .line 1374
    :cond_28
    :goto_28
    return-void

    .line 1300
    :cond_29
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_128

    goto :goto_28

    .line 1304
    :pswitch_2f
    invoke-virtual {p0}, startMonitoringSignificantMotion()V

    .line 1305
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1, v4}, scheduleAlarmLocked(JZ)V

    .line 1307
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, mNextIdlePendingDelay:J

    .line 1308
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v0, p0, mNextIdleDelay:J

    .line 1309
    iput v6, p0, mState:I

    .line 1311
    iget v0, p0, mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_28

    .line 1314
    :pswitch_50
    iput v10, p0, mState:I

    .line 1316
    iget v0, p0, mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1317
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, scheduleSensingAlarmLocked(J)V

    .line 1318
    invoke-virtual {p0}, cancelLocatingLocked()V

    .line 1319
    iget-object v0, p0, mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 1320
    iput-boolean v4, p0, mNotMoving:Z

    .line 1321
    iput-boolean v4, p0, mLocated:Z

    .line 1322
    iput-object v11, p0, mLastGenericLocation:Landroid/location/Location;

    .line 1323
    iput-object v11, p0, mLastGpsLocation:Landroid/location/Location;

    goto :goto_28

    .line 1326
    :pswitch_72
    const/4 v0, 0x4

    iput v0, p0, mState:I

    .line 1328
    iget v0, p0, mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1329
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, scheduleSensingAlarmLocked(J)V

    .line 1330
    iput-boolean v5, p0, mLocating:Z

    .line 1333
    :try_start_86
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, mLocationRequest:Landroid/location/LocationRequest;

    iget-object v2, p0, mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v3, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_95} :catch_b8

    .line 1339
    :goto_95
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 1340
    iput-boolean v5, p0, mHaveGps:Z

    .line 1341
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v6}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto/16 :goto_28

    .line 1335
    :catch_b8
    move-exception v7

    .line 1336
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "DeviceIdleController"

    const-string v1, "Bad LocationManger settings"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    .line 1344
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_c1
    iput-boolean v4, p0, mHaveGps:Z

    goto/16 :goto_28

    .line 1348
    :pswitch_c5
    invoke-virtual {p0}, cancelSensingAlarmLocked()V

    .line 1349
    invoke-virtual {p0}, cancelLocatingLocked()V

    .line 1350
    iget-object v0, p0, mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 1352
    :pswitch_d0
    iget-wide v0, p0, mNextIdleDelay:J

    invoke-virtual {p0, v0, v1, v5}, scheduleAlarmLocked(JZ)V

    .line 1355
    iget-wide v0, p0, mNextIdleDelay:J

    long-to-float v0, v0

    iget-object v1, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, mNextIdleDelay:J

    .line 1357
    iget-wide v0, p0, mNextIdleDelay:J

    iget-object v2, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, mNextIdleDelay:J

    .line 1358
    const/4 v0, 0x5

    iput v0, p0, mState:I

    .line 1359
    iget v0, p0, mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1360
    iget-object v0, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_28

    .line 1364
    :pswitch_fe
    iget-wide v0, p0, mNextIdlePendingDelay:J

    invoke-virtual {p0, v0, v1, v4}, scheduleAlarmLocked(JZ)V

    .line 1367
    iget-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v2, p0, mNextIdlePendingDelay:J

    long-to-float v2, v2

    iget-object v3, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, mNextIdlePendingDelay:J

    .line 1369
    const/4 v0, 0x6

    iput v0, p0, mState:I

    .line 1370
    iget v0, p0, mState:I

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1371
    iget-object v0, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_28

    .line 1300
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_50
        :pswitch_72
        :pswitch_c5
        :pswitch_fe
        :pswitch_d0
    .end packed-switch
.end method

.method stopMonitoringSignificantMotion()V
    .registers 4

    .prologue
    .line 1439
    iget-boolean v0, p0, mSigMotionActive:Z

    if-eqz v0, :cond_10

    .line 1440
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mSigMotionListener:Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, mSigMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 1441
    const/4 v0, 0x0

    iput-boolean v0, p0, mSigMotionActive:Z

    .line 1443
    :cond_10
    return-void
.end method

.method updateChargingLocked(Z)V
    .registers 4
    .param p1, "charging"    # Z

    .prologue
    .line 1225
    if-nez p1, :cond_11

    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_11

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, mCharging:Z

    .line 1227
    iget-boolean v0, p0, mForceIdle:Z

    if-nez v0, :cond_10

    .line 1228
    invoke-virtual {p0}, becomeInactiveIfAppropriateLocked()V

    .line 1236
    :cond_10
    :goto_10
    return-void

    .line 1230
    :cond_11
    if-eqz p1, :cond_10

    .line 1231
    iput-boolean p1, p0, mCharging:Z

    .line 1232
    iget-boolean v0, p0, mForceIdle:Z

    if-nez v0, :cond_10

    .line 1233
    const-string v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_10
.end method

.method updateDisplayLocked()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1204
    iget-object v3, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, mCurDisplay:Landroid/view/Display;

    .line 1208
    iget-object v3, p0, mCurDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    move v0, v1

    .line 1210
    .local v0, "screenOn":Z
    :goto_14
    if-nez v0, :cond_26

    iget-boolean v3, p0, mScreenOn:Z

    if-eqz v3, :cond_26

    .line 1211
    iput-boolean v2, p0, mScreenOn:Z

    .line 1212
    iget-boolean v1, p0, mForceIdle:Z

    if-nez v1, :cond_23

    .line 1213
    invoke-virtual {p0}, becomeInactiveIfAppropriateLocked()V

    .line 1221
    :cond_23
    :goto_23
    return-void

    .end local v0    # "screenOn":Z
    :cond_24
    move v0, v2

    .line 1208
    goto :goto_14

    .line 1215
    .restart local v0    # "screenOn":Z
    :cond_26
    if-eqz v0, :cond_23

    .line 1216
    iput-boolean v1, p0, mScreenOn:Z

    .line 1217
    iget-boolean v1, p0, mForceIdle:Z

    if-nez v1, :cond_23

    .line 1218
    const-string/jumbo v1, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_23
.end method

.method writeConfigFileLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1636
    iget-object v0, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 1637
    iget-object v0, p0, mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1638
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1669
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1670
    const-string v2, "config"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v2, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 1672
    iget-object v2, p0, mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1673
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1674
    const-string/jumbo v2, "n"

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1675
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1671
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1677
    .end local v1    # "name":Ljava/lang/String;
    :cond_34
    const-string v2, "config"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1678
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1679
    return-void
.end method
