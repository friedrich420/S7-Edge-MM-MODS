.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeService$ProximityCheck;,
        Lcom/android/systemui/doze/DozeService$TriggerSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDreaming:Z

.field private mEarliestPulseDueToLight:J

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/doze/DozeHost;

.field private final mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mLastScheduleResetTime:J

.field private mNotificationLightOn:Z

.field private mNotificationPulseTime:J

.field private mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mPulsing:Z

.field private mScheduleResetsRemaining:I

.field private mSensors:Landroid/hardware/SensorManager;

.field private mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 70
    const-string v0, "DozeService.%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    .line 71
    iput-object p0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    .line 430
    new-instance v0, Lcom/android/systemui/doze/DozeService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$4;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Lcom/android/systemui/doze/DozeService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$5;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    .line 96
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "new DozeService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/DozeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/DozeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/doze/DozeService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/systemui/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/doze/DozeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->resetNotificationResets()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/doze/DozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private continuePulsing(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    .line 261
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$3;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    goto :goto_0
.end method

.method private finishForCarMode()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 301
    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 296
    return-void
.end method

.method private listenForBroadcasts(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.doze.notification_pulse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    .line 324
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    goto :goto_0
.end method

.method private listenForNotifications(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 327
    if-eqz p1, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->resetNotificationResets()V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isNotificationLightOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulseDueToLight()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    goto :goto_0
.end method

.method private listenForPulseSignals(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 304
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForBroadcasts(Z)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForNotifications(Z)V

    .line 309
    return-void
.end method

.method private notificationPulseIntent(J)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "instance"    # J

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.doze.notification_pulse"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "instance"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private requestPulse(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    iput-boolean v5, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    .line 221
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 227
    .local v2, "start":J
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupPerformsProxCheck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    .local v5, "nonBlocking":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    .line 234
    :cond_2
    new-instance v0, Lcom/android/systemui/doze/DozeService$2;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$2;-><init>(Lcom/android/systemui/doze/DozeService;JIZ)V

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeService$2;->check()V

    goto :goto_0

    .line 227
    .end local v5    # "nonBlocking":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private rescheduleNotificationPulse(Z)V
    .locals 13
    .param p1, "predicate"    # Z

    .prologue
    .line 388
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rescheduleNotificationPulse predicate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/doze/DozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v4

    .line 390
    .local v4, "notificationPulseIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v10, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 391
    if-nez p1, :cond_2

    .line 392
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v11, "  don\'t reschedule: predicate is false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v5

    .line 396
    .local v5, "schedule":Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    if-nez v5, :cond_3

    .line 397
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v11, "  don\'t reschedule: schedule is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 401
    .local v6, "now":J
    iget-wide v10, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    invoke-virtual {v5, v6, v7, v10, v11}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->getNextTime(JJ)J

    move-result-wide v8

    .line 402
    .local v8, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_4

    .line 403
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  don\'t reschedule: time is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_4
    sub-long v0, v8, v6

    .line 407
    .local v0, "delta":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_5

    .line 408
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  don\'t reschedule: delta is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_5
    iget-wide v10, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    sub-long v2, v8, v10

    .line 412
    .local v2, "instance":J
    sget-boolean v10, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling pulse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/doze/DozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private resetNotificationResets()V
    .locals 2

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "resetNotificationResets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseScheduleResets()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    .line 344
    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 7
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v6, 0x2c

    .line 418
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 427
    :goto_0
    return-object v2

    .line 419
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 422
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 424
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private turnDisplayOff()V
    .locals 2

    .prologue
    .line 284
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    .line 286
    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    .line 291
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateNotificationPulse(J)V
    .locals 7
    .param p1, "notificationTimeMs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 353
    sget-boolean v4, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotificationPulse notificationTimeMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnNotifications()Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    iget v4, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    if-gtz v4, :cond_3

    .line 356
    sget-boolean v3, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v4, "No more schedule resets remaining"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration(Z)I

    move-result v4

    int-to-long v0, v4

    .line 360
    .local v0, "pulseDuration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_4

    move v2, v3

    .line 361
    .local v2, "pulseImmediately":Z
    :cond_4
    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService;->mLastScheduleResetTime:J

    sub-long v4, p1, v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_8

    .line 362
    iget v4, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    .line 363
    iput-wide p1, p0, Lcom/android/systemui/doze/DozeService;->mLastScheduleResetTime:J

    .line 368
    :cond_5
    sget-boolean v4, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScheduleResetsRemaining = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_6
    iput-wide p1, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    .line 370
    if-eqz v2, :cond_7

    .line 371
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(J)V

    .line 372
    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    .line 375
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    goto :goto_0

    .line 364
    :cond_8
    if-nez v2, :cond_5

    .line 365
    sget-boolean v3, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v4, "Recently updated, not resetting schedule"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotificationPulseDueToLight()V
    .locals 4

    .prologue
    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "timeMs":J
    iget-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mEarliestPulseDueToLight:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 349
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeService;->updateNotificationPulse(J)V

    .line 350
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 103
    const-string v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 104
    const-string v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 105
    const-string v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 106
    const-string v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 107
    const-string v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    const-string v0, "  mSigMotionSensor: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 109
    const-string v0, "  mPickupSensor:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    const-string v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string v0, "  mNotificationLightOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationLightOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 112
    const-string v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 113
    const-string v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 114
    const-string v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 115
    const-string v0, "  mScheduleResetsRemaining: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/doze/DozeService;->mScheduleResetsRemaining:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    .line 117
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 152
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 121
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUIApplication;

    .line 126
    .local v6, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v6, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 128
    .end local v6    # "app":Lcom/android/systemui/SystemUIApplication;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_2

    const-string v0, "DozeService"

    const-string v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/doze/DozeService;->setWindowless(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:Landroid/hardware/SensorManager;

    .line 133
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    const/16 v2, 0x11

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v4

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;IZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSigMotionSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 136
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    const/16 v2, 0x19

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnPickup()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v4

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;IZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DozeService"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    .line 144
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    .line 146
    return-void
.end method

.method public onDreamingStarted()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 196
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    .line 165
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDreamingStarted canDoze="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->canDoze()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPowerSaveActive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCarMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 164
    goto :goto_1

    .line 171
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    goto :goto_0

    .line 176
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    .line 177
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeService;->rescheduleNotificationPulse(Z)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/doze/DozeService;->mEarliestPulseDueToLight:J

    .line 179
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$1;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDreamingStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_1

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    .line 208
    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    goto :goto_0
.end method
