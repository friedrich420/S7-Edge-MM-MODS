.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"

# interfaces
.implements Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static mFTAMode:Z


# instance fields
.field private mBatteryChargetype:I

.field private mBatteryChargingType:I

.field private mBatteryHealth:I

.field private mBatteryHighVoltageCharger:Z

.field private mBatteryLevel:I

.field private mBatteryOnline:I

.field private mBatteryOverheatLevel:I

.field private mBatteryStatus:I

.field private mBootCompleted:Z

.field private mCableConnected:Z

.field private mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field private mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field private mChargingInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCurrentOrientation:I

.field private mDeviceType:I

.field private mDimKeeping:Z

.field private mDisplay:Landroid/view/Display;

.field private mFlashOverHeated:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mIsChargerAnimationPlaying:Z

.field private mIsDeviceMoving:Z

.field private mIsRunningLowBatteryTask:Z

.field private mIsRunningOverheatWarningTask:Z

.field private mIsSContextEnabled:Z

.field private mIsSContextListenerRigstered:Z

.field private mIsScreenOn:Z

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field mLowBatteryWarningTask:Ljava/lang/Runnable;

.field private mNeedToDismissChargingInterruptionWarning:Z

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mOverheatWarningTask:Ljava/lang/Runnable;

.field private mPendingCableBroadcast:Z

.field private mPlugType:I

.field private mPogoState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSIOPLevel:I

.field private mScreenOffTime:J

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mSupportChargingRemainingTime:Z

.field private mSupportLED:Z

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 84
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 85
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 86
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 201
    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 203
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    .line 209
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    .line 210
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSupportChargingRemainingTime:Z

    .line 211
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    .line 212
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 221
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    .line 223
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 224
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 225
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 226
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 227
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 228
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    .line 229
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    .line 230
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 231
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1029
    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatWarningTask:Ljava/lang/Runnable;

    .line 1036
    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 1107
    new-instance v0, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1121
    new-instance v0, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    .line 1130
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 1188
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkPogoAndPowerSharingCable(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/power/PowerUI;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->sendLowBatteryDumpIfNeeded(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkFullBatteryNotification(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkChargingInterruptionStatus(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionSound(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/power/PowerUI;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->checkAndShowConnectedChargerStatus(III)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkCoolDownStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryNotificationLanguage()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    return p1
.end method

.method private checkAndShowConnectedChargerStatus(III)V
    .locals 7
    .param p1, "priorPlugType"    # I
    .param p2, "priorBateryStatus"    # I
    .param p3, "priorBatteryOnline"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 844
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_0

    .line 846
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v0, :cond_5

    .line 847
    const-string v0, "PowerUI"

    const-string v1, "Wireless charger connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    .line 853
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 857
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v4, v0, :cond_f

    .line 858
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v3, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v4, v0, :cond_8

    .line 859
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v0, :cond_6

    .line 860
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 866
    :goto_1
    if-ne v2, p1, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p1, v0, :cond_2

    .line 867
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    .line 896
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSupportChargingRemainingTime:Z

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(ZI)V

    .line 918
    :cond_3
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowIncompatibleChargerNotice:Z

    if-eqz v0, :cond_4

    .line 919
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_13

    if-eqz p3, :cond_13

    .line 921
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    .line 928
    :cond_4
    :goto_4
    return-void

    .line 850
    :cond_5
    const-string v0, "PowerUI"

    const-string v1, "Cable charger connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    goto :goto_0

    .line 861
    :cond_6
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v4, v0, :cond_7

    .line 862
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 864
    :cond_7
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 868
    :cond_8
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v0, :cond_e

    .line 869
    const/16 v0, 0x64

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v0, v1, :cond_d

    .line 870
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 874
    :goto_5
    if-eq v3, p1, :cond_9

    if-ne v4, p1, :cond_a

    :cond_9
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p1, v0, :cond_a

    .line 876
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    .line 879
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eq v0, v6, :cond_b

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-ne v0, v2, :cond_c

    .line 881
    :cond_b
    const-string v0, "PowerUI"

    const-string v1, "Register SContextListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 883
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    .line 888
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowWirelessChargerInfoPopUp:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p1, v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargerInfoNotice()V

    goto :goto_2

    .line 872
    :cond_d
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_5

    .line 892
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 893
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto/16 :goto_2

    .line 899
    :cond_f
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_12

    .line 901
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eq v0, v2, :cond_10

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-ne v0, v6, :cond_11

    :cond_10
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v0, v1, :cond_11

    .line 903
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargerDisconnectNotice()V

    .line 906
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 907
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 910
    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-eqz v0, :cond_3

    if-ne v2, p1, :cond_3

    .line 911
    const-string v0, "PowerUI"

    const-string v1, "Unregister SContextListener - From Check charging type"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 913
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto/16 :goto_3

    .line 922
    :cond_13
    if-nez p3, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v0, :cond_4

    .line 924
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    goto/16 :goto_4
.end method

.method private checkChargingInterruptionStatus(II)V
    .locals 10
    .param p1, "priorBatteryStatus"    # I
    .param p2, "priorBatteryHealth"    # I

    .prologue
    const/4 v7, 0x5

    const-wide/32 v8, 0xea60

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "oldFlashOverHeated":Z
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFlashOverHeated:Z

    .line 713
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v6, v2, :cond_8

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v4, v2, :cond_0

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, v3, :cond_8

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_7

    .line 730
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 731
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-nez v1, :cond_5

    .line 732
    const-string v2, "PowerUI"

    const-string v3, "onReceive : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v2, v3, :cond_2

    .line 790
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 791
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    .line 807
    :cond_2
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq p2, v2, :cond_4

    .line 808
    if-eq v7, p2, :cond_3

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v7, v2, :cond_3

    const/16 v2, 0x9

    if-eq v2, p2, :cond_3

    const/16 v2, 0x9

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, v3, :cond_4

    .line 810
    :cond_3
    const-string v2, "PowerUI"

    const-string v3, "Overvoltage/Undervoltage status is changed so turn on the screen."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    .line 814
    :cond_4
    return-void

    .line 734
    .restart local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_5
    const v2, 0x10000006

    const-string v3, "PowerUI"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 736
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v2, :cond_6

    .line 737
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 741
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 743
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto :goto_0

    .line 739
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_1

    .line 745
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_7
    const/16 v2, 0x8

    if-ne v2, p2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto :goto_0

    .line 748
    :cond_8
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v6, v2, :cond_d

    const/16 v2, 0x8

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, v3, :cond_d

    .line 750
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_b

    .line 751
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 752
    .restart local v1    # "powerManager":Landroid/os/PowerManager;
    if-nez v1, :cond_9

    .line 753
    const-string v2, "PowerUI"

    const-string v3, "onReceive : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 755
    :cond_9
    const v2, 0x10000006

    const-string v3, "PowerUI"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 757
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v2, :cond_a

    .line 758
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 762
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 764
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_0

    .line 760
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_2

    .line 766
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_b
    if-ne v4, p2, :cond_1

    .line 767
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v2, :cond_c

    .line 768
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 770
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_0

    .line 772
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 773
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v6, v2, :cond_f

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v4, v2, :cond_f

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v4, v2, :cond_f

    .line 775
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    .line 781
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-eqz v2, :cond_e

    .line 782
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 784
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 786
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 777
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 778
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    goto :goto_3
.end method

.method private checkCoolDownStatus(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 976
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseOtherConcepForCoolDownAndSafeMode:Z

    if-eqz v2, :cond_5

    .line 977
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 978
    .local v1, "oldSIOPLevel":I
    const-string v2, "check_cooldown_level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 979
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIOP Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-eq v1, v2, :cond_1

    .line 982
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v8, v2, :cond_2

    .line 983
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 994
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-gt v7, v2, :cond_4

    .line 995
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    if-nez v2, :cond_1

    .line 996
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    .line 997
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatWarningTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1027
    .end local v1    # "oldSIOPLevel":I
    :cond_1
    :goto_1
    return-void

    .line 984
    .restart local v1    # "oldSIOPLevel":I
    :cond_2
    const/16 v2, 0x9

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v2, v3, :cond_3

    .line 985
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownTask(I)V

    .line 986
    const-string v2, "PowerUI"

    const-string v3, "SIOP level is critical so shutdown"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :cond_3
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-le v8, v2, :cond_0

    if-gt v8, v1, :cond_0

    .line 988
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWillOverheatShutdownWarning()V

    .line 990
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 991
    const-string v2, "PowerUI"

    const-string v3, "SIOP level recovered from shutdown"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    :cond_4
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-le v7, v2, :cond_1

    if-gt v7, v1, :cond_1

    .line 1000
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    .line 1001
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1002
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatWarning()V

    goto :goto_1

    .line 1006
    .end local v1    # "oldSIOPLevel":I
    :cond_5
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1007
    .local v0, "oldBatteryOverheatLevel":I
    const-string v2, "battery_overheat_level"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 1008
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery overheat Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-eq v0, v2, :cond_1

    .line 1011
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v5, v2, :cond_7

    .line 1012
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    .line 1013
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1021
    :cond_6
    :goto_2
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-nez v2, :cond_8

    .line 1022
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatWarning()V

    goto/16 :goto_1

    .line 1014
    :cond_7
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v5, v2, :cond_6

    if-gt v5, v0, :cond_6

    .line 1015
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWillOverheatShutdownWarning()V

    .line 1017
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    const-string v2, "PowerUI"

    const-string v3, "Battery overheat level recovered from shutdown"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1023
    :cond_8
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v9, v2, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    goto/16 :goto_1
.end method

.method private checkFullBatteryNotification(I)V
    .locals 2
    .param p1, "priorBatteryStatus"    # I

    .prologue
    const/4 v1, 0x5

    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mForceShowFullBatteryNotification:Z

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v0, :cond_1

    .line 690
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v1, v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 697
    :cond_1
    :goto_0
    return-void

    .line 692
    :cond_2
    if-ne v1, p1, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto :goto_0
.end method

.method private checkPogoAndPowerSharingCable(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;
    .param p2, "priorBatteryOnline"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 595
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    .line 596
    .local v2, "oldCableConnected":Z
    const-string v5, "power_sharing"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 597
    .local v4, "powerSharing":Z
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    .line 599
    .local v3, "oldPogoState":I
    const-string v5, "pogo_plugged"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    .line 601
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v8, v5, :cond_9

    .line 602
    const/16 v5, 0xa

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v5, v6, :cond_0

    const/16 v5, 0x64

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v5, v6, :cond_8

    .line 603
    :cond_0
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v8, v5, :cond_1

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v7, v5, :cond_7

    .line 604
    :cond_1
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    .line 605
    const-string v5, "PowerUI"

    const-string v6, "cable connects while wireless charging"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    const/4 v1, 0x1

    .line 620
    .local v1, "isIntentNeeded":Z
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-eq v3, v5, :cond_f

    .line 621
    if-ne v3, v7, :cond_c

    .line 622
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-ne v5, v8, :cond_b

    .line 623
    const-string v5, "PowerUI"

    const-string v6, "AC or USB is disconnected while pogo is charging so show the cable disconnected popup"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    .line 646
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    if-eq v2, v5, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    if-eqz v5, :cond_6

    .line 648
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    if-eqz v5, :cond_10

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.systemui.power.action.ACTION_CABLE_CONNECTED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v0, "cableIntent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 652
    const-string v5, "power_sharing"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    :cond_5
    :goto_2
    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cable  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mBootCompleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending cableIntent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    if-eqz v5, :cond_11

    .line 662
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 663
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    .line 668
    .end local v0    # "cableIntent":Landroid/content/Intent;
    :cond_6
    :goto_3
    return-void

    .line 607
    .end local v1    # "isIntentNeeded":Z
    :cond_7
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_0

    .line 610
    :cond_8
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_0

    .line 612
    :cond_9
    if-eqz v4, :cond_a

    .line 613
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_0

    .line 615
    :cond_a
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_0

    .line 625
    .restart local v1    # "isIntentNeeded":Z
    :cond_b
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v5, v8, :cond_2

    .line 626
    const-string v5, "PowerUI"

    const-string v6, "Both AC or USB and Pogo is disconnected so show the cable disconnected popup"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_1

    .line 629
    :cond_c
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-nez v5, :cond_d

    .line 630
    const-string v5, "PowerUI"

    const-string v6, "Pogo is disconnected but not need to show the water damage popup"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    .line 632
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 633
    :cond_d
    if-ne v3, v8, :cond_e

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-ne v5, v7, :cond_e

    .line 634
    const-string v5, "PowerUI"

    const-string v6, "AC/USB is connected while pogo is connected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_1

    .line 636
    :cond_e
    if-nez v3, :cond_2

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-ne v5, v8, :cond_2

    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_2

    .line 637
    const-string v5, "PowerUI"

    const-string v6, "AC is disconnected while pogo is connected"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    goto/16 :goto_1

    .line 640
    :cond_f
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mPogoState:I

    if-ne v5, v8, :cond_2

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v8, v5, :cond_2

    .line 641
    const-string v5, "PowerUI"

    const-string v6, "only pogo is connected, do not send connected intent!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mCableConnected:Z

    .line 643
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 655
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.systemui.power.action.ACTION_CABLE_DISCONNECTED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "cableIntent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 665
    :cond_11
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    goto :goto_3
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 349
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 350
    const/4 v2, 0x1

    .line 358
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 355
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 356
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 358
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 356
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 361
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private playChargerConnectionSound(II)V
    .locals 5
    .param p1, "priorPlugType"    # I
    .param p2, "priorBateryStatus"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 819
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priorPlugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlugType =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq v0, p1, :cond_4

    .line 821
    if-eqz p1, :cond_1

    if-ne p1, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v3, :cond_1

    :cond_0
    if-eq p1, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v3, :cond_4

    .line 824
    :cond_1
    if-eq v3, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 828
    :cond_3
    const-string v0, "PowerUI"

    const-string v1, "charging interruption so don\'t play charger connection sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_4
    :goto_0
    return-void

    .line 831
    :cond_5
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v3, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_4

    .line 834
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playSound(I)V

    goto :goto_0
.end method

.method private sendLowBatteryDumpIfNeeded(III)V
    .locals 5
    .param p1, "priorBatteryLevel"    # I
    .param p2, "priorBucket"    # I
    .param p3, "currentBucket"    # I

    .prologue
    const/16 v4, 0xa

    .line 673
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LOW_BATTERY_DUMP"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 674
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int v0, p1, v0

    if-ge v0, v4, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int/2addr v0, p1

    if-lt v0, v4, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne v0, p1, :cond_2

    :cond_1
    if-ge p3, p2, :cond_3

    const/4 v0, -0x2

    if-ne v0, p3, :cond_3

    .line 677
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    if-eqz v0, :cond_3

    .line 678
    const-string v0, "PowerUI"

    const-string v1, "Low battery dump"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 683
    :cond_3
    return-void
.end method

.method private setChargerAnimationView(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 937
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    .line 942
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setWindowDisplay(Landroid/view/Display;)V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/power/ChargerAnimationView;->startChargerAnimation(IIZ)V

    .line 944
    return-void
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSaverMode(Z)V

    .line 312
    return-void
.end method

.method private updateBatteryNotificationLanguage()V
    .locals 4

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mForceShowFullBatteryNotification:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v0, v1, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    .line 1050
    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 1058
    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1065
    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 1067
    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify ChargingNotification again"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSupportChargingRemainingTime:Z

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(ZI)V

    .line 1073
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowIncompatibleChargerNotice:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_4

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    .line 1075
    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify incompatible charger again"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    .line 1079
    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1160
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1162
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1171
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1174
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1175
    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1177
    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1180
    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1183
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 1186
    return-void
.end method

.method public onChargerAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 948
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 950
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 952
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 956
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSupportChargingRemainingTime:Z

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(ZI)V

    .line 958
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 962
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 964
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 965
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    .line 966
    .local v0, "oldOrientation":I
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    .line 968
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui/power/ChargerAnimationView;->stopChargerAnimation()V

    .line 971
    .end local v0    # "oldOrientation":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 237
    new-instance v2, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 239
    new-instance v7, Lcom/android/systemui/power/PowerUI$1;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 245
    .local v7, "obs":Landroid/database/ContentObserver;
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 246
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0, v5, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 254
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    .line 258
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 259
    iput v10, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    invoke-interface {v0, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->setDeviceType(I)V

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSupportLED:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-eq v10, v0, :cond_5

    .line 266
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    .line 271
    :goto_2
    new-instance v6, Ljava/io/File;

    const-string v0, "/sys/class/power_supply/battery/time_to_full_now"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v6, "chargeTimeFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSupportChargingRemainingTime:Z

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 279
    .local v8, "powerManager":Landroid/os/PowerManager;
    if-nez v8, :cond_6

    .line 280
    const-string v0, "PowerUI"

    const-string v2, "start : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "PowerUI"

    const-string v2, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 290
    const-string v0, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start : (mSContextManager != null - mIsSContextEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    const v4, 0x1000118

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 308
    return-void

    .line 236
    .end local v6    # "chargeTimeFile":Ljava/io/File;
    .end local v7    # "obs":Landroid/database/ContentObserver;
    .end local v8    # "powerManager":Landroid/os/PowerManager;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto/16 :goto_0

    .line 261
    .restart local v7    # "obs":Landroid/database/ContentObserver;
    .restart local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_1

    .line 268
    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    goto/16 :goto_2

    .line 282
    .restart local v6    # "chargeTimeFile":Ljava/io/File;
    .restart local v8    # "powerManager":Landroid/os/PowerManager;
    :cond_6
    const-string v0, "PowerUI"

    invoke-virtual {v8, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 315
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 318
    .local v0, "critLevel":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 319
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 321
    .local v1, "defWarnLevel":I
    const-string v4, "low_power_trigger_level"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 325
    .local v3, "warnLevel":I
    move v3, v1

    .line 327
    if-ge v3, v0, :cond_0

    .line 328
    move v3, v0

    .line 331
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    .line 332
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 333
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 336
    return-void
.end method
