.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field private static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final CAMERA_POWER_DOUBLE_TAP_MIN_TIME_MS:J = 0x78L

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mLastPowerDown:J

.field private mRegistered:Z

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 74
    iput-wide v2, p0, mCameraGestureOnTimeMs:J

    .line 77
    iput-wide v2, p0, mCameraGestureLastEventTime:J

    .line 84
    iput-wide v2, p0, mCameraGestureSensor1LastOnTimeMs:J

    .line 94
    iput-wide v2, p0, mCameraGestureSensor2LastOnTimeMs:J

    .line 100
    const/4 v0, 0x0

    iput v0, p0, mCameraLaunchLastEventExtra:I

    .line 307
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingObserver:Landroid/database/ContentObserver;

    .line 110
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GestureLauncherService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget v0, p0, mUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-wide v0, p0, mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/GestureLauncherService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, mUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-wide v0, p0, mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/GestureLauncherService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-wide v0, p0, mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/GestureLauncherService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-wide v0, p0, mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/GestureLauncherService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/GestureLauncherService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget v0, p0, mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/GestureLauncherService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-object v0, p0, mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    invoke-direct {p0}, registerContentObservers()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    invoke-direct {p0}, updateCameraRegistered()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    invoke-direct {p0}, updateCameraDoubleTapPowerEnabled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/GestureLauncherService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-boolean v0, p0, mRegistered:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 50
    iget-object v0, p0, mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/GestureLauncherService;ZI)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, handleCameraLaunchGesture(ZI)Z

    move-result v0

    return v0
.end method

.method private handleCameraLaunchGesture(ZI)Z
    .registers 9
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15

    move v1, v3

    .line 287
    .local v1, "userSetupComplete":Z
    :goto_12
    if-nez v1, :cond_17

    .line 304
    :goto_14
    return v2

    .end local v1    # "userSetupComplete":Z
    :cond_15
    move v1, v2

    .line 285
    goto :goto_12

    .line 297
    .restart local v1    # "userSetupComplete":Z
    :cond_17
    if-eqz p1, :cond_20

    .line 299
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 301
    :cond_20
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 303
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    move v2, v3

    .line 304
    goto :goto_14
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 242
    const v0, 0x11200c0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    const v3, 0x10e00b2

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    move v0, v1

    .line 237
    .local v0, "configSet":Z
    :goto_d
    if-eqz v0, :cond_1b

    const-string/jumbo v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    :goto_18
    return v1

    .end local v0    # "configSet":Z
    :cond_19
    move v0, v2

    .line 235
    goto :goto_d

    .restart local v0    # "configSet":Z
    :cond_1b
    move v1, v2

    .line 237
    goto :goto_18
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_gesture_disabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 250
    invoke-static {p0}, isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    iget-boolean v4, p0, mRegistered:Z

    if-eqz v4, :cond_7

    .line 217
    :cond_6
    :goto_6
    return-void

    .line 185
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, mCameraGestureOnTimeMs:J

    .line 186
    iget-wide v4, p0, mCameraGestureOnTimeMs:J

    iput-wide v4, p0, mCameraGestureLastEventTime:J

    .line 187
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 189
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const v4, 0x10e00b2

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 191
    .local v0, "cameraLaunchGestureId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    .line 192
    iput-boolean v6, p0, mRegistered:Z

    .line 193
    const v4, 0x1040058

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "sensorName":Ljava/lang/String;
    invoke-virtual {v2, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 202
    iget-object v4, p0, mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_6

    .line 203
    iget-object v4, p0, mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 204
    iget-object v4, p0, mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v5, p0, mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    iput-boolean v4, p0, mRegistered:Z

    goto :goto_6

    .line 207
    :cond_50
    const-string v4, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    iget-object v6, p0, mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private registerContentObservers()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 164
    iget-boolean v1, p0, mRegistered:Z

    if-eqz v1, :cond_23

    .line 165
    iput-boolean v4, p0, mRegistered:Z

    .line 166
    iput-wide v2, p0, mCameraGestureOnTimeMs:J

    .line 167
    iput-wide v2, p0, mCameraGestureLastEventTime:J

    .line 168
    iput-wide v2, p0, mCameraGestureSensor1LastOnTimeMs:J

    .line 169
    iput-wide v2, p0, mCameraGestureSensor2LastOnTimeMs:J

    .line 170
    iput v4, p0, mCameraLaunchLastEventExtra:I

    .line 172
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 174
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_23
    return-void
.end method

.method private updateCameraDoubleTapPowerEnabled()V
    .registers 4

    .prologue
    .line 157
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mUserId:I

    invoke-static {v1, v2}, isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 158
    .local v0, "enabled":Z
    monitor-enter p0

    .line 159
    :try_start_9
    iput-boolean v0, p0, mCameraDoubleTapPowerEnabled:Z

    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private updateCameraRegistered()V
    .registers 4

    .prologue
    .line 148
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mUserId:I

    invoke-static {v1, v2}, isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 150
    invoke-direct {p0, v0}, registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    .line 154
    :goto_13
    return-void

    .line 152
    :cond_14
    invoke-direct {p0}, unregisterCameraLaunchGesture()V

    goto :goto_13
.end method


# virtual methods
.method public interceptPowerKeyDown(Landroid/view/KeyEvent;Z)Z
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    const/4 v3, 0x0

    .line 255
    .local v3, "launched":Z
    const/4 v2, 0x0

    .line 257
    .local v2, "intercept":Z
    monitor-enter p0

    .line 258
    :try_start_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, mLastPowerDown:J

    sub-long v0, v6, v8

    .line 259
    .local v0, "doubleTapInterval":J
    iget-boolean v6, p0, mCameraDoubleTapPowerEnabled:Z

    if-eqz v6, :cond_1f

    const-wide/16 v6, 0x12c

    cmp-long v6, v0, v6

    if-gez v6, :cond_1f

    const-wide/16 v6, 0x78

    cmp-long v6, v0, v6

    if-lez v6, :cond_1f

    .line 262
    const/4 v3, 0x1

    .line 263
    move v2, p2

    .line 265
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, mLastPowerDown:J

    .line 266
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_63

    .line 267
    if-eqz v3, :cond_55

    .line 268
    const-string v6, "GestureLauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, v5, v4}, handleCameraLaunchGesture(ZI)Z

    move-result v3

    .line 272
    if-eqz v3, :cond_55

    .line 273
    iget-object v6, p0, mContext:Landroid/content/Context;

    const/16 v7, 0xff

    long-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 277
    :cond_55
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "power_double_tap_interval"

    long-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    if-eqz v2, :cond_66

    if-eqz v3, :cond_66

    :goto_62
    return v4

    .line 266
    .end local v0    # "doubleTapInterval":J
    :catchall_63
    move-exception v4

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v4

    .restart local v0    # "doubleTapInterval":J
    :cond_66
    move v4, v5

    .line 278
    goto :goto_62
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .prologue
    .line 118
    const/16 v2, 0x258

    if-ne p1, v2, :cond_10

    .line 119
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 136
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_10
    :goto_10
    return-void

    .line 125
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_11
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 127
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GestureLauncherService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    invoke-direct {p0}, updateCameraRegistered()V

    .line 130
    invoke-direct {p0}, updateCameraDoubleTapPowerEnabled()V

    .line 132
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, mUserId:I

    .line 133
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, registerContentObservers()V

    goto :goto_10
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 114
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    return-void
.end method
