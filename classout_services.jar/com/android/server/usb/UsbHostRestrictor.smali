.class public Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbHostRestrictor"

.field private static final USB_HOST_DISABLE_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/disable"
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private static final USB_HOST_ENABLE_PATH:Ljava/lang/String; = "/sys/class/usb_notify"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static mCurrentSysNodeValue:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mTelephonyIntentReceiver2:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const-string v0, "OFF"

    sput-object v0, mCurrentSysNodeValue:Ljava/lang/String;

    .line 99
    sput-object v1, mPowerManager:Landroid/os/PowerManager;

    .line 100
    sput-object v1, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUsbDeviceManager"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 142
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, mBootCompleted:Z

    .line 208
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, mTelephonyIntentReceiver2:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$3;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, mUPSMReceiver:Landroid/content/BroadcastReceiver;

    .line 583
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, mUEventHostObserver:Landroid/os/UEventObserver;

    .line 106
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 110
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 112
    iget-object v0, p0, mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mTelephonyIntentReceiver2:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, handleBootCompleteBroadcast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, showAlertDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, showToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, getUsbHostDisableSysNodeWritable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, writeDisableSysNodetoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, getPowerManager()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 86
    invoke-direct {p0}, turnOnLcd()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 86
    sget-object v0, mCurrentSysNodeValue:Ljava/lang/String;

    return-object v0
.end method

.method private checkBuildType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 393
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "checkType":Ljava/lang/String;
    const-string/jumbo v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 398
    const-string v0, "ENG"

    .line 405
    .local v0, "buildType":Ljava/lang/String;
    :goto_16
    return-object v0

    .line 399
    .end local v0    # "buildType":Ljava/lang/String;
    :cond_17
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 400
    const-string v0, "USER"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_16

    .line 402
    .end local v0    # "buildType":Ljava/lang/String;
    :cond_23
    const-string v0, "ENG"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_16
.end method

.method private checkUsbBlockingCondition(Ljava/lang/String;)Z
    .registers 7
    .param p1, "disableValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 430
    const-string v3, "ENG"

    invoke-direct {p0}, checkBuildType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 431
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Cannot DISABLE USB at ENG BINARY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_15
    return v1

    .line 433
    :cond_16
    const-string v3, "USER"

    invoke-direct {p0}, checkBuildType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 434
    const-string v3, "CHM"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 435
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    .line 437
    .local v0, "isUPSModeOn":Z
    if-eqz v0, :cond_72

    .line 438
    const-string v3, "ON_ALL_SIM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "ON_ALL_UPSM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 439
    :cond_51
    const-string v1, "UsbHostRestrictor"

    const-string v3, "DISABLE USB for USER BINARY and CMCC MODEL and UPSM"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 440
    goto :goto_15

    .line 441
    :cond_5a
    const-string v2, "OFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 442
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 445
    :cond_6a
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 449
    :cond_72
    const-string v3, "ON_ALL_SIM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 450
    :cond_82
    const-string v1, "UsbHostRestrictor"

    const-string v3, "DISABLE USB for USER BINARY and CMCC MODEL"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 451
    goto :goto_15

    .line 452
    :cond_8b
    const-string v2, "OFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 453
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 456
    :cond_9c
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 4"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 460
    .end local v0    # "isUPSModeOn":Z
    :cond_a5
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 461
    const-string v3, "ON_ALL_UPSM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 462
    :cond_bb
    const-string v1, "UsbHostRestrictor"

    const-string v3, "DISABLE USB for USER BINARY and Ultra Power Save Mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 463
    goto/16 :goto_15

    .line 464
    :cond_c5
    const-string v2, "OFF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 465
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 5"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 468
    :cond_d6
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 6"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 472
    :cond_df
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 7"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 476
    :cond_e8
    const-string v2, "UsbHostRestrictor"

    const-string v3, "NOT DISABLE USB 8"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method private getPowerManager()V
    .registers 4

    .prologue
    .line 566
    sget-object v0, mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_22

    .line 567
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, mPowerManager:Landroid/os/PowerManager;

    .line 568
    sget-object v0, mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 569
    sget-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 571
    :cond_22
    return-void
.end method

.method private getUsbHostDisableSysNodeWritable()Z
    .registers 6

    .prologue
    .line 512
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/usb_notify"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 517
    const/4 v1, 0x1

    .line 522
    .local v1, "writableHostSysNode":Z
    :goto_e
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writableHostSysNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return v1

    .line 519
    .end local v1    # "writableHostSysNode":Z
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "writableHostSysNode":Z
    goto :goto_e
.end method

.method private handleBootCompleteBroadcast()V
    .registers 3

    .prologue
    .line 154
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mBootCompleted:Z

    .line 158
    invoke-direct {p0}, initSetUsbBlock()V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private initSetUsbBlock()V
    .registers 5

    .prologue
    .line 329
    const/4 v0, -0x1

    .line 330
    .local v0, "count":I
    const/4 v1, 0x0

    .line 332
    .local v1, "isUPSModeOn":Z
    const-string v2, "UsbHostRestrictor"

    const-string/jumbo v3, "initSetUsbBlock STARTED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v0

    .line 335
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    .line 337
    if-nez v0, :cond_55

    .line 339
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was never inserted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-eqz v1, :cond_3a

    .line 342
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 346
    const-string v2, "ON_ALL_BOTH"

    invoke-direct {p0, v2}, writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 389
    :cond_31
    :goto_31
    return-void

    .line 348
    :cond_32
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 351
    :cond_3a
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 355
    const-string v2, "ON_ALL_SIM"

    invoke-direct {p0, v2}, writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_31

    .line 357
    :cond_4d
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 361
    :cond_55
    if-lez v0, :cond_96

    .line 363
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SIM was already inserted"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v1, :cond_7b

    .line 366
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 370
    const-string v2, "ON_ALL_UPSM"

    invoke-direct {p0, v2}, writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_31

    .line 372
    :cond_73
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [ON] 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 375
    :cond_7b
    const-string v2, "UsbHostRestrictor"

    const-string v3, "UPS Mode is OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, getUsbHostDisableSysNodeWritable()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 379
    const-string v2, "OFF"

    invoke-direct {p0, v2}, writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_31

    .line 381
    :cond_8e
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Can NOT Write Disable Sys Node to [OFF]"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 385
    :cond_96
    if-gez v0, :cond_31

    .line 387
    const-string v2, "UsbHostRestrictor"

    const-string v3, "SUBINFO value is abnormal"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public static isUsbBlocked()Z
    .registers 3

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 550
    .local v0, "returnUsbBlockState":Z
    sget-object v1, mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 552
    const/4 v0, 0x1

    .line 562
    :goto_c
    return v0

    .line 553
    :cond_d
    sget-object v1, mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 555
    const/4 v0, 0x0

    goto :goto_c

    .line 557
    :cond_19
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private readDisableSysNodefromFile()Ljava/lang/String;
    .registers 6

    .prologue
    .line 482
    const-string v1, ""

    .line 486
    .local v1, "returnVal":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_25

    move-result-object v1

    .line 495
    :goto_13
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 498
    sput-object v1, mCurrentSysNodeValue:Ljava/lang/String;

    .line 499
    iget-object v2, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 505
    :goto_24
    return-object v1

    .line 488
    :catch_25
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Failed to read from DISABLE FILE"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2e
    const-string v2, "OFF"

    sput-object v2, mCurrentSysNodeValue:Ljava/lang/String;

    .line 502
    iget-object v2, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_24
.end method

.method private showAlertDialog()V
    .registers 6

    .prologue
    .line 528
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v2, "cmcc_block_usb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 534
    :try_start_17
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 539
    :goto_1c
    return-void

    .line 535
    :catch_1d
    move-exception v0

    .line 536
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private showToast()V
    .registers 3

    .prologue
    .line 542
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showToast"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSM()V

    .line 545
    return-void
.end method

.method private turnOnLcd()V
    .registers 5

    .prologue
    .line 574
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0}, getPowerManager()V

    .line 576
    sget-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    sget-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 577
    :cond_16
    sget-object v0, mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_23

    sget-object v0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 578
    :cond_23
    return-void
.end method

.method private writeDisableSysNodetoFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "writeValue"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node with ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :try_start_1e
    invoke-direct {p0, p1}, checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 413
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sput-object p1, mCurrentSysNodeValue:Ljava/lang/String;

    .line 415
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    .line 427
    :goto_37
    return-void

    .line 418
    :cond_38
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    const-string v2, "OFF"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "OFF"

    sput-object v1, mCurrentSysNodeValue:Ljava/lang/String;

    .line 420
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4a} :catch_4b

    goto :goto_37

    .line 422
    :catch_4b
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Failed to write to DISABLE FILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "OFF"

    sput-object v1, mCurrentSysNodeValue:Ljava/lang/String;

    .line 425
    iget-object v1, p0, mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_37
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 130
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_3
    const-string v0, "USB Host Restrictor State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mBootCompleted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mBootCompleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MultiSimManager.getAllSubInfoCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Value :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Writable :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, getUsbHostDisableSysNodeWritable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mCurrentSysNodeValue :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor UPSM ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SUPPORT UPSM :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_c6
    move-exception v0

    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_3 .. :try_end_c8} :catchall_c6

    throw v0
.end method
