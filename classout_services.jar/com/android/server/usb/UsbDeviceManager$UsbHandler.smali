.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# static fields
.field private static final CUSTOMER_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"

.field private static final TAG_GENEREAL_INFO:Ljava/lang/String; = "GeneralInfo"

.field private static final TAG_REGION:Ljava/lang/String; = "Region"

.field private static final USB30_AVAILABLE:Ljava/lang/String; = "/sys/class/android_usb/android0/ss_host_available"

.field private static final USB30_ENABLED:Ljava/lang/String; = "/sys/class/android_usb/android0/bcdUSB"

.field private static final USB30_ENABLING:Ljava/lang/String; = "/sys/class/android_usb/android0/usb30en"


# instance fields
.field private mAdbNotificationShown:Z

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentFunctionsApplied:Z

.field private mCurrentUser:I

.field private mHostConnected:Z

.field private final mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerConnected:Z

.field private final mPowerConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsb30ConnectionIsInProgressLock"
    .end annotation
.end field

.field private final mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

.field private mUsb30NotificationId:I

.field private mUsbDataUnlocked:Z

.field private final mUsbDeviceStates:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbNotificationId:I

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .registers 10
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 455
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 456
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 409
    const/4 v3, 0x1

    iput-boolean v3, p0, mUsbDataUnlocked:Z

    .line 415
    const/16 v3, -0x2710

    iput v3, p0, mCurrentUser:I

    .line 417
    iput-boolean v4, p0, mPowerConnected:Z

    .line 418
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, mUsbDeviceStates:Ljava/util/LinkedHashMap;

    .line 420
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v3, p0, mPowerConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v3, p0, mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$3;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v3, p0, mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 1132
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

    .line 1133
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, p0, mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    .line 459
    :try_start_39
    const-string/jumbo v3, "sys.usb.config"

    const-string/jumbo v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, mCurrentFunctions:Ljava/lang/String;

    .line 461
    const-string/jumbo v3, "none"

    iget-object v4, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 464
    :cond_50
    iget-object v3, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v4, "sys.usb.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, mCurrentFunctionsApplied:Z

    .line 466
    invoke-direct {p0}, getDefaultFunctions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adb"

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {p1, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 468
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, setEnabledFunctions(Ljava/lang/String;Z)V

    .line 470
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "state":Ljava/lang/String;
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read \'/sys/class/android_usb/android0/state\', state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0, v2}, updateState(Ljava/lang/String;)V

    .line 474
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initalized current function "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v6, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 482
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v3

    const-string v4, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 483
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v3

    const-string v4, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 485
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v1, "powerfilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mPowerConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mKeyguardUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 499
    # invokes: Lcom/android/server/usb/UsbDeviceManager;->registerDeviceRestriction()V
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_114} :catch_115

    .line 503
    .end local v1    # "powerfilter":Landroid/content/IntentFilter;
    .end local v2    # "state":Ljava/lang/String;
    :goto_114
    return-void

    .line 500
    :catch_115
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UsbDeviceManager"

    const-string v4, "Error initializing UsbHandler"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_114
.end method

.method static synthetic access$2700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 403
    invoke-direct {p0}, isUsb30Available()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 403
    invoke-direct {p0}, isUsb30Enabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 403
    invoke-direct {p0}, getDefaultFunctions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 403
    invoke-direct {p0}, updateUsbNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 403
    invoke-direct {p0, p1}, updateUsbNotification(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, mPowerConnected:Z

    return p1
.end method

.method private applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 722
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 723
    const-string v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    :goto_e
    return-object p1

    .line 725
    :cond_f
    const-string v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e
.end method

.method private getDefaultFunctions()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1389
    const-string/jumbo v6, "persist.sys.usb.q_config"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1392
    .local v3, "q_func":Ljava/lang/String;
    const-string/jumbo v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1402
    const-string/jumbo v6, "persist.sys.usb.config"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, "func":Ljava/lang/String;
    const-string/jumbo v6, "none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1408
    :cond_27
    invoke-direct {p0}, getSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 1409
    .local v5, "salesCode":Ljava/lang/String;
    if-nez v5, :cond_37

    .line 1410
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : salesCode is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const-string v5, "OXA"

    .line 1414
    :cond_37
    invoke-direct {p0}, getRegionCode()Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, "regionCode":Ljava/lang/String;
    if-nez v4, :cond_47

    .line 1416
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : regionCode is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v4, "EUR"

    .line 1423
    :cond_47
    const-string/jumbo v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "checkType":Ljava/lang/String;
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_enabled"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_61

    const/4 v0, 0x1

    .line 1428
    .local v0, "adbEnable":Z
    :cond_61
    if-eqz v0, :cond_68

    .line 1430
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v6, v0}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1434
    :cond_68
    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 1435
    const-string/jumbo v6, "user"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 1436
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : Default Function set as CHARGING ONLY for VZW USER"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v6, "askon"

    invoke-direct {p0, v6}, applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1439
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :cond_8d
    :goto_8d
    invoke-direct {p0}, isFactoryBinary()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 1455
    const-string/jumbo v2, "mtp,adb"

    .line 1456
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_9c
    const-string v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDefaultFunctions : func = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    .end local v0    # "adbEnable":Z
    .end local v1    # "checkType":Ljava/lang/String;
    .end local v2    # "func":Ljava/lang/String;
    .end local v4    # "regionCode":Ljava/lang/String;
    .end local v5    # "salesCode":Ljava/lang/String;
    :goto_b5
    return-object v2

    .line 1397
    :cond_b6
    const-string v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDefaultFunctions : q_func = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1399
    goto :goto_b5

    .line 1440
    .restart local v0    # "adbEnable":Z
    .restart local v1    # "checkType":Ljava/lang/String;
    .restart local v2    # "func":Ljava/lang/String;
    .restart local v4    # "regionCode":Ljava/lang/String;
    .restart local v5    # "salesCode":Ljava/lang/String;
    :cond_d7
    const-string v6, "ENG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 1441
    const-string/jumbo v6, "mtp"

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1442
    const-string v6, "UsbDeviceManager"

    const-string/jumbo v7, "getDefaultFunctions : Default Function set as MTP,ADB for VZW ENG"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const-string/jumbo v2, "mtp,adb"

    .line 1444
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 1447
    :cond_fa
    const-string/jumbo v6, "mtp"

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 1448
    const-string v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDefaultFunctions : Default Function Modified as ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const-string/jumbo v6, "mtp"

    invoke-direct {p0, v6}, applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1451
    const-string/jumbo v6, "persist.sys.usb.config"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d
.end method

.method private getRegionCode()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 1510
    const/4 v5, 0x0

    .line 1511
    .local v5, "regionCode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1513
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    const-string v10, "/system/csc/customer.xml"

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_b} :catch_6b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_7b
    .catchall {:try_start_4 .. :try_end_b} :catchall_8b

    .line 1514
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1515
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1518
    :cond_18
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v12, :cond_4f

    .line 1519
    if-ne v8, v13, :cond_18

    .line 1520
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1521
    .local v7, "tag":Ljava/lang/String;
    const-string v10, "GeneralInfo"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1522
    :cond_2c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_18

    .line 1523
    if-ne v8, v13, :cond_2c

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Region"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 1524
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1525
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_46} :catch_9f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_46} :catch_9c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_99
    .catchall {:try_start_b .. :try_end_46} :catchall_96

    move-result-object v5

    .line 1540
    if-eqz v2, :cond_4c

    .line 1541
    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_92

    :cond_4c
    :goto_4c
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    move-object v6, v5

    .line 1546
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "regionCode":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .local v6, "regionCode":Ljava/lang/String;
    :goto_4e
    return-object v6

    .line 1540
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "regionCode":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "regionCode":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_4f
    if-eqz v2, :cond_54

    .line 1541
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_57

    :cond_54
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_55
    :goto_55
    move-object v6, v5

    .line 1546
    .end local v5    # "regionCode":Ljava/lang/String;
    .restart local v6    # "regionCode":Ljava/lang/String;
    goto :goto_4e

    .line 1542
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "regionCode":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "regionCode":Ljava/lang/String;
    .restart local v8    # "type":I
    :catch_57
    move-exception v10

    move-object v1, v2

    .line 1545
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_55

    .line 1532
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_5a
    move-exception v0

    .line 1533
    .local v0, "fe":Ljava/io/FileNotFoundException;
    :goto_5b
    :try_start_5b
    const-string v10, "UsbDeviceManager"

    const-string/jumbo v11, "customer.xml file not found"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_8b

    .line 1540
    if-eqz v1, :cond_55

    .line 1541
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_55

    .line 1542
    :catch_69
    move-exception v10

    goto :goto_55

    .line 1534
    .end local v0    # "fe":Ljava/io/FileNotFoundException;
    :catch_6b
    move-exception v9

    .line 1535
    .local v9, "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6c
    :try_start_6c
    const-string v10, "UsbDeviceManager"

    const-string v11, "Error customer.xml file"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_8b

    .line 1540
    if-eqz v1, :cond_55

    .line 1541
    :try_start_75
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_55

    .line 1542
    :catch_79
    move-exception v10

    goto :goto_55

    .line 1536
    .end local v9    # "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7b
    move-exception v4

    .line 1537
    .local v4, "ioe":Ljava/io/IOException;
    :goto_7c
    :try_start_7c
    const-string v10, "UsbDeviceManager"

    const-string v11, "IO error customer.xml file"

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_8b

    .line 1540
    if-eqz v1, :cond_55

    .line 1541
    :try_start_85
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_55

    .line 1542
    :catch_89
    move-exception v10

    goto :goto_55

    .line 1539
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_8b
    move-exception v10

    .line 1540
    :goto_8c
    if-eqz v1, :cond_91

    .line 1541
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_94

    .line 1544
    :cond_91
    :goto_91
    throw v10

    .line 1542
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :catch_92
    move-exception v10

    goto :goto_4c

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_94
    move-exception v11

    goto :goto_91

    .line 1539
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_96
    move-exception v10

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_8c

    .line 1536
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_99
    move-exception v4

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_7c

    .line 1534
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_9c
    move-exception v9

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_6c

    .line 1532
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_9f
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5b
.end method

.method private getSalesCode()Ljava/lang/String;
    .registers 14

    .prologue
    .line 1465
    const-string/jumbo v7, "null"

    .line 1467
    .local v7, "sales_code":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1468
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1471
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v6, Ljava/io/File;

    const-string v9, "/efs/imei/mps_code.dat"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v6, "mps_fd":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/csc/sales_code.dat"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v8, "sales_fd":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 1475
    const-string v9, "UsbDeviceManager"

    const-string/jumbo v10, "mps exists"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/efs/imei/mps_code.dat"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_28} :catch_67
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_cc
    .catchall {:try_start_5 .. :try_end_28} :catchall_114

    .line 1477
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_28
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_14c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_145
    .catchall {:try_start_28 .. :try_end_2d} :catchall_13e

    .line 1478
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_30} :catch_150
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_148
    .catchall {:try_start_2d .. :try_end_30} :catchall_141

    move-result-object v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 1493
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :goto_33
    if-eqz v3, :cond_38

    .line 1494
    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1495
    :cond_38
    if-eqz v0, :cond_3d

    .line 1496
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_ad

    .line 1502
    .end local v6    # "mps_fd":Ljava/io/File;
    .end local v8    # "sales_fd":Ljava/io/File;
    :cond_3d
    :goto_3d
    return-object v7

    .line 1479
    .restart local v6    # "mps_fd":Ljava/io/File;
    .restart local v8    # "sales_fd":Ljava/io/File;
    :cond_3e
    :try_start_3e
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 1480
    const-string v9, "UsbDeviceManager"

    const-string/jumbo v10, "sales_code exists"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/system/csc/sales_code.dat"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_53} :catch_67
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_53} :catch_cc
    .catchall {:try_start_3e .. :try_end_53} :catchall_114

    .line 1482
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :try_start_53
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_58} :catch_14c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_145
    .catchall {:try_start_53 .. :try_end_58} :catchall_13e

    .line 1483
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_150
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_148
    .catchall {:try_start_58 .. :try_end_5b} :catchall_141

    move-result-object v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_33

    .line 1485
    :cond_5f
    :try_start_5f
    const-string v9, "UsbDeviceManager"

    const-string v10, "Both dat does not exist"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_66} :catch_cc
    .catchall {:try_start_5f .. :try_end_66} :catchall_114

    goto :goto_33

    .line 1487
    .end local v6    # "mps_fd":Ljava/io/File;
    .end local v8    # "sales_fd":Ljava/io/File;
    :catch_67
    move-exception v2

    .line 1488
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_68
    :try_start_68
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File not Found exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_68 .. :try_end_84} :catchall_114

    .line 1493
    if-eqz v3, :cond_89

    .line 1494
    :try_start_86
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1495
    :cond_89
    if-eqz v0, :cond_3d

    .line 1496
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_8f

    goto :goto_3d

    .line 1497
    :catch_8f
    move-exception v5

    .line 1498
    .local v5, "iex":Ljava/io/IOException;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException(iex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1497
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "iex":Ljava/io/IOException;
    .restart local v6    # "mps_fd":Ljava/io/File;
    .restart local v8    # "sales_fd":Ljava/io/File;
    :catch_ad
    move-exception v5

    .line 1498
    .restart local v5    # "iex":Ljava/io/IOException;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException(iex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 1489
    .end local v5    # "iex":Ljava/io/IOException;
    .end local v6    # "mps_fd":Ljava/io/File;
    .end local v8    # "sales_fd":Ljava/io/File;
    :catch_cc
    move-exception v2

    .line 1490
    .local v2, "e":Ljava/io/IOException;
    :goto_cd
    :try_start_cd
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_cd .. :try_end_e9} :catchall_114

    .line 1493
    if-eqz v3, :cond_ee

    .line 1494
    :try_start_eb
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1495
    :cond_ee
    if-eqz v0, :cond_3d

    .line 1496
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f3} :catch_f5

    goto/16 :goto_3d

    .line 1497
    :catch_f5
    move-exception v5

    .line 1498
    .restart local v5    # "iex":Ljava/io/IOException;
    const-string v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException(iex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 1492
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "iex":Ljava/io/IOException;
    :catchall_114
    move-exception v9

    .line 1493
    :goto_115
    if-eqz v3, :cond_11a

    .line 1494
    :try_start_117
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 1495
    :cond_11a
    if-eqz v0, :cond_11f

    .line 1496
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11f} :catch_120

    .line 1499
    :cond_11f
    :goto_11f
    throw v9

    .line 1497
    :catch_120
    move-exception v5

    .line 1498
    .restart local v5    # "iex":Ljava/io/IOException;
    const-string v10, "UsbDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException(iex): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11f

    .line 1492
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "iex":Ljava/io/IOException;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v6    # "mps_fd":Ljava/io/File;
    .restart local v8    # "sales_fd":Ljava/io/File;
    :catchall_13e
    move-exception v9

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_115

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_141
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_115

    .line 1489
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_145
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_cd

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_148
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_cd

    .line 1487
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_14c
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto/16 :goto_68

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_150
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto/16 :goto_68
.end method

.method private isChargingMode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "usbMode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 821
    if-nez p1, :cond_4

    .line 829
    :cond_3
    :goto_3
    return v0

    .line 824
    :cond_4
    const-string v1, "askon"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "charging"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "none"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 827
    :cond_1d
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private isFactoryBinary()Z
    .registers 4

    .prologue
    .line 1385
    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsb30Available()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1144
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/ss_host_available"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v0, "USB30_AVAILABLE_PATH":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1156
    :cond_e
    :goto_e
    return v3

    .line 1149
    :cond_f
    :try_start_f
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/ss_host_available"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, "state":Ljava/lang/String;
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsb30Available: read \'/sys/class/android_usb/android0/ss_host_available\', state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3e} :catch_43

    move-result v4

    if-eqz v4, :cond_e

    .line 1152
    const/4 v3, 0x1

    goto :goto_e

    .line 1153
    .end local v2    # "state":Ljava/lang/String;
    :catch_43
    move-exception v1

    .line 1154
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsbDeviceManager"

    const-string v5, "Error reading at isUsb30Available()"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private isUsb30Enabled()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1161
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/bcdUSB"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v0, "USB30_ENABLED_PATH":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1177
    :cond_e
    :goto_e
    return v3

    .line 1164
    :cond_f
    iget-object v4, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v5, "askon"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1165
    const-string v4, "UsbDeviceManager"

    const-string/jumbo v5, "isUsb30Enabled: always return false in charging only mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1170
    :cond_22
    :try_start_22
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/bcdUSB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "state":Ljava/lang/String;
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsb30Enabled: read \'/sys/class/android_usb/android0/bcdUSB\', state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v4, "0300"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_51} :catch_56

    move-result v4

    if-eqz v4, :cond_e

    .line 1173
    const/4 v3, 0x1

    goto :goto_e

    .line 1174
    .end local v2    # "state":Ljava/lang/String;
    :catch_56
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsbDeviceManager"

    const-string v5, "Error reading at isUsb30Enabled()"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private isUsbTransferAllowed()Z
    .registers 4

    .prologue
    .line 731
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 732
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private readBatteryOnline()I
    .registers 8

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "online":I
    const/4 v2, 0x0

    .line 836
    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_2
    new-instance v3, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/power_supply/battery/online"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_e} :catch_31
    .catchall {:try_start_2 .. :try_end_e} :catchall_3f

    .line 837
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_e
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 838
    const-string v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery online : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2a} :catch_49
    .catchall {:try_start_e .. :try_end_2a} :catchall_46

    .line 842
    if-eqz v3, :cond_4c

    .line 843
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    move-object v2, v3

    .line 846
    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :cond_30
    :goto_30
    return v1

    .line 839
    :catch_31
    move-exception v0

    .line 840
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_32
    :try_start_32
    const-string v4, "UsbDeviceManager"

    const-string v5, "Error reading at battery online path"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3f

    .line 842
    if-eqz v2, :cond_30

    .line 843
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_30

    .line 842
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_3f
    move-exception v4

    :goto_40
    if-eqz v2, :cond_45

    .line 843
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_45
    throw v4

    .line 842
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_46
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_40

    .line 839
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_49
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_32

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :cond_4c
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_30
.end method

.method private setAdbEnabled(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 609
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAdbEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (mAdbEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eq p1, v2, :cond_69

    .line 611
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 615
    invoke-direct {p0}, getDefaultFunctions()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "oldFunctions":Ljava/lang/String;
    invoke-direct {p0, v1}, applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "newFunctions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 618
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 619
    const-string v2, "adb"

    invoke-static {v0, v2}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 620
    const-string/jumbo v2, "persist.sys.usb.config"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_60
    :goto_60
    iget-object v2, p0, mCurrentFunctions:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, setEnabledFunctions(Ljava/lang/String;Z)V

    .line 635
    invoke-direct {p0}, updateAdbNotification()V

    .line 638
    .end local v0    # "newFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctions":Ljava/lang/String;
    :cond_69
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 639
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 641
    :cond_80
    return-void

    .line 622
    .restart local v0    # "newFunctions":Ljava/lang/String;
    .restart local v1    # "oldFunctions":Ljava/lang/String;
    :cond_81
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "setAdbEnabled: ADB enabled, but no adb at FunctionName"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 625
    :cond_8a
    const-string v2, "adb"

    invoke-static {v0, v2}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 626
    const-string/jumbo v2, "persist.sys.usb.config"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 628
    :cond_99
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "setAdbEnabled: ADB disabled, but adb at FunctionName"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v5, 0x0

    .line 647
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabledFunctions functions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "forceRestart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    .line 652
    .local v0, "oldFunctions":Ljava/lang/String;
    iget-boolean v1, p0, mCurrentFunctionsApplied:Z

    .line 654
    .local v1, "oldFunctionsApplied":Z
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 655
    invoke-direct {p0, p1, p2}, trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 692
    :cond_3d
    :goto_3d
    return-void

    .line 664
    :cond_3e
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 665
    if-eqz v1, :cond_5b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 666
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-direct {p0, v0, v5}, trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 674
    :cond_5b
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 675
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 2: Restoring default USB functions."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v2, 0x0

    invoke-direct {p0, v2, v5}, trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 683
    :cond_71
    const-string v2, "charging"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 684
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string/jumbo v2, "none"

    invoke-direct {p0, v2, v5}, trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 691
    :cond_89
    const-string v2, "UsbDeviceManager"

    const-string v3, "Unable to set any USB functions!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .registers 6
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbConfig("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 590
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbConfig: this is same as before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v1, 0x1

    .line 595
    :goto_47
    return v1

    .line 594
    :cond_48
    const-string/jumbo v1, "sys.usb.config"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, p1}, waitForState(Ljava/lang/String;)Z

    move-result v1

    goto :goto_47
.end method

.method private showUsbBlockAlertDialog()V
    .registers 6

    .prologue
    .line 1325
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1326
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string v2, "cmcc_block_usb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1328
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1331
    :try_start_17
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    .line 1335
    :goto_20
    return-void

    .line 1332
    :catch_21
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbDeviceManager"

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

    goto :goto_20
.end method

.method private trySetEnabledFunctions(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 695
    if-nez p1, :cond_8

    .line 696
    invoke-direct {p0}, getDefaultFunctions()Ljava/lang/String;

    move-result-object p1

    .line 698
    :cond_8
    invoke-direct {p0, p1}, applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 699
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 701
    iget-object v2, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, mCurrentFunctionsApplied:Z

    if-eqz v2, :cond_20

    if-eqz p2, :cond_63

    .line 703
    :cond_20
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting USB config to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput-object p1, p0, mCurrentFunctions:Ljava/lang/String;

    .line 705
    iput-boolean v0, p0, mCurrentFunctionsApplied:Z

    .line 708
    const-string/jumbo v2, "none"

    invoke-direct {p0, v2}, setUsbConfig(Ljava/lang/String;)Z

    .line 711
    invoke-direct {p0, p1}, setUsbConfig(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 712
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to switch USB config to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_60
    return v0

    .line 716
    :cond_61
    iput-boolean v1, p0, mCurrentFunctionsApplied:Z

    :cond_63
    move v0, v1

    .line 718
    goto :goto_60
.end method

.method private updateAdbNotification()V
    .registers 13

    .prologue
    .line 1338
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbShowNotificationBar:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1381
    :cond_8
    :goto_8
    return-void

    .line 1339
    :cond_9
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdbNotification : mAdbEnabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mConnected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, mConnected:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mAdbNotificationShown = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, mAdbNotificationShown:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1343
    const v6, 0x10403f4

    .line 1344
    .local v6, "id":I
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_103

    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_103

    .line 1345
    const-string v0, "0"

    const-string/jumbo v1, "persist.adb.notify"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1347
    iget-boolean v0, p0, mAdbNotificationShown:Z

    if-nez v0, :cond_8

    .line 1348
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1349
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x10403f4

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1350
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x10403f5

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1353
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1356
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1359
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080786

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1373
    .local v8, "notification":Landroid/app/Notification;
    const/4 v0, 0x1

    iput-boolean v0, p0, mAdbNotificationShown:Z

    .line 1374
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x10403f4

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_8

    .line 1377
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_103
    iget-boolean v0, p0, mAdbNotificationShown:Z

    if-eqz v0, :cond_8

    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, mAdbNotificationShown:Z

    .line 1379
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x10403f4

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_8
.end method

.method private updateAudioSourceFunction()V
    .registers 9

    .prologue
    .line 850
    iget-object v6, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v7, "audio_source"

    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 852
    .local v3, "enabled":Z
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eq v3, v6, :cond_3c

    .line 853
    const/4 v0, -0x1

    .line 854
    .local v0, "card":I
    const/4 v1, -0x1

    .line 856
    .local v1, "device":I
    if-eqz v3, :cond_2e

    .line 857
    const/4 v4, 0x0

    .line 859
    .local v4, "scanner":Ljava/util/Scanner;
    :try_start_15
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_21} :catch_3d
    .catchall {:try_start_15 .. :try_end_21} :catchall_4b

    .line 860
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_21
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 861
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_28} :catch_55
    .catchall {:try_start_21 .. :try_end_28} :catchall_52

    move-result v1

    .line 865
    if-eqz v5, :cond_2e

    .line 866
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 870
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_2e
    :goto_2e
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->setAccessoryAudioState(ZII)V

    .line 872
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 874
    .end local v0    # "card":I
    .end local v1    # "device":I
    :cond_3c
    return-void

    .line 862
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_3d
    move-exception v2

    .line 863
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3e
    :try_start_3e
    const-string v6, "UsbDeviceManager"

    const-string v7, "could not open audio source PCM file"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4b

    .line 865
    if-eqz v4, :cond_2e

    .line 866
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_2e

    .line 865
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_4b
    move-exception v6

    :goto_4c
    if-eqz v4, :cond_51

    .line 866
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_51
    throw v6

    .line 865
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catchall_52
    move-exception v6

    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_4c

    .line 862
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_55
    move-exception v2

    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_3e
.end method

.method private updateCurrentAccessory()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 738
    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_d2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_d2

    const/4 v0, 0x1

    .line 742
    .local v0, "enteringAccessoryMode":Z
    :goto_20
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCurrentAccessory: mCurrentAccessory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mAccessoryModeRequestTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SystemClock.elapsedRealtime() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",enteringAccessoryMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mConfigured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mConfigured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mConnected  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-boolean v2, p0, mConfigured:Z

    if-eqz v2, :cond_de

    if-eqz v0, :cond_de

    .line 752
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d5

    .line 753
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 754
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 757
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "send ACTION_USB_ACCESSORY_ATTACHED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 759
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v1, v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1202(Lcom/android/server/usb/UsbDeviceManager;J)J

    .line 779
    :cond_d1
    :goto_d1
    return-void

    .end local v0    # "enteringAccessoryMode":Z
    :cond_d2
    move v0, v1

    .line 738
    goto/16 :goto_20

    .line 762
    .restart local v0    # "enteringAccessoryMode":Z
    :cond_d5
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 764
    :cond_de
    if-nez v0, :cond_d1

    .line 767
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "exited USB accessory mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-direct {p0, v8, v1}, setEnabledFunctions(Ljava/lang/String;Z)V

    .line 770
    iget-object v1, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_d1

    .line 771
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 772
    const-string v1, "UsbDeviceManager"

    const-string/jumbo v2, "send ACTION_USB_ACCESSORY_DETACHED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 775
    :cond_10a
    iput-object v8, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 776
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1302(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_d1
.end method

.method private updateMidiFunction()V
    .registers 9

    .prologue
    .line 877
    iget-object v4, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v5, "midi"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 879
    .local v1, "enabled":Z
    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eq v1, v4, :cond_3c

    .line 880
    if-eqz v1, :cond_37

    .line 881
    const/4 v2, 0x0

    .line 883
    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_14
    new-instance v3, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_20} :catch_5f
    .catchall {:try_start_14 .. :try_end_20} :catchall_6e

    .line 884
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_20
    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$1902(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 885
    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$2002(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_32} :catch_7a
    .catchall {:try_start_20 .. :try_end_32} :catchall_77

    .line 890
    if-eqz v3, :cond_37

    .line 891
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 895
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_37
    :goto_37
    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1802(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 897
    :cond_3c
    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v5

    iget-object v4, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eqz v4, :cond_75

    iget-boolean v4, p0, mConfigured:Z

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    :goto_4f
    iget-object v6, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v6

    iget-object v7, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    .line 898
    return-void

    .line 886
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_5f
    move-exception v0

    .line 887
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_60
    :try_start_60
    const-string v4, "UsbDeviceManager"

    const-string v5, "could not open MIDI PCM file"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_6e

    .line 888
    const/4 v1, 0x0

    .line 890
    if-eqz v2, :cond_37

    .line 891
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_37

    .line 890
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_6e
    move-exception v4

    :goto_6f
    if-eqz v2, :cond_74

    .line 891
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_74
    throw v4

    .line 897
    .end local v2    # "scanner":Ljava/util/Scanner;
    :cond_75
    const/4 v4, 0x0

    goto :goto_4f

    .line 890
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_77
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_6f

    .line 886
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_7a
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_60
.end method

.method private updateUsbCableState(Z)V
    .registers 6
    .param p1, "connected"    # Z

    .prologue
    .line 812
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_CABLE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 816
    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending intent : ACTION_USB_CABLE_STATE : connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method private updateUsbFunctions()V
    .registers 1

    .prologue
    .line 806
    invoke-direct {p0}, updateAudioSourceFunction()V

    .line 807
    invoke-direct {p0}, updateMidiFunction()V

    .line 808
    return-void
.end method

.method private updateUsbNotification()V
    .registers 2

    .prologue
    .line 1315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateUsbNotification(Z)V

    .line 1316
    return-void
.end method

.method private updateUsbNotification(Z)V
    .registers 14
    .param p1, "refresh"    # Z

    .prologue
    .line 1199
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : mConnected = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, mConnected:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mConfigured = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, mConfigured:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mCurrentFunctions = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1312
    :cond_43
    :goto_43
    return-void

    .line 1203
    :cond_44
    const/4 v6, 0x0

    .line 1204
    .local v6, "id":I
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1205
    .local v10, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, mConnected:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, mHostConnected:Z

    if-eqz v0, :cond_64

    .line 1211
    :cond_57
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v1, "charging"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 1213
    const v6, 0x10403ee

    .line 1250
    :cond_64
    :goto_64
    if-nez p1, :cond_6a

    iget v0, p0, mUsbNotificationId:I

    if-eq v6, v0, :cond_43

    .line 1252
    :cond_6a
    iget v0, p0, mUsbNotificationId:I

    if-eqz v0, :cond_aa

    .line 1253
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, mUsbNotificationId:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1255
    iget v0, p0, mUsbNotificationId:I

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1256
    .local v11, "title":Ljava/lang/CharSequence;
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : cancel id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, mUsbNotificationId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", title = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, mUsbNotificationId:I

    .line 1259
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_aa
    if-eqz v6, :cond_43

    .line 1260
    const v0, 0x10403f3

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1262
    .local v7, "message":Ljava/lang/CharSequence;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1264
    .restart local v11    # "title":Ljava/lang/CharSequence;
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : isKeyguardLocked = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isKeyguardSecure = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mBootCompleted = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 1270
    const v0, 0x1040bc6

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1276
    :cond_125
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1280
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_ALL_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_ALL_BOTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 1283
    :cond_14e
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1286
    const-string v0, "cmcc_block_usb"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1289
    :cond_161
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1292
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080786

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1306
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v8, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1308
    iput v6, p0, mUsbNotificationId:I

    .line 1309
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsbNotification : notify id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, mUsbNotificationId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", title = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 1214
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_1f6
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "mtp"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 1216
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp_and_ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1217
    invoke-direct {p0}, isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_217

    const v6, 0x1040bc4

    :goto_215
    goto/16 :goto_64

    :cond_217
    const v6, 0x10403ef

    goto :goto_215

    .line 1219
    :cond_21b
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "ptp"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_240

    .line 1221
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mtp_and_ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1222
    invoke-direct {p0}, isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_23c

    const v6, 0x1040bc5

    :goto_23a
    goto/16 :goto_64

    :cond_23c
    const v6, 0x10403f0

    goto :goto_23a

    .line 1224
    :cond_240
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "midi"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 1226
    const v6, 0x10403f1

    goto/16 :goto_64

    .line 1227
    :cond_250
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v1, "mass_storage"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 1229
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v1, "mass_storage"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1230
    const v6, 0x104070a

    goto/16 :goto_64

    .line 1232
    :cond_26b
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v1, "accessory"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 1234
    const v6, 0x10403f2

    goto/16 :goto_64

    .line 1235
    :cond_27a
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v1, "askon"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1237
    invoke-direct {p0}, readBatteryOnline()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_294

    invoke-direct {p0}, readBatteryOnline()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_29d

    .line 1238
    :cond_294
    const-string v0, "UsbDeviceManager"

    const-string v1, "connected for HDMI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 1239
    :cond_29d
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_ALL_UPSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 1241
    const-string v0, "UsbDeviceManager"

    const-string v1, "Block for UPSM mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 1243
    :cond_2b4
    const-string v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotification : mCurrentFunctions is [askon]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const v6, 0x1040a54

    goto/16 :goto_64
.end method

.method private updateUsbStateBroadcast()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 783
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 786
    const-string v3, "connected"

    iget-boolean v4, p0, mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 787
    const-string v3, "configured"

    iget-boolean v4, p0, mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 788
    const-string/jumbo v3, "unlocked"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    iget-object v3, p0, mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_39

    .line 791
    iget-object v3, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    array-length v3, v0

    if-ge v1, v3, :cond_39

    .line 793
    aget-object v3, v0, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 797
    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_39
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " configured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v3, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 800
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending intent : ACTION_USB_STATE : connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", configured = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", functions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .registers 7
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1d

    .line 574
    const-string/jumbo v2, "sys.usb.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    .line 579
    :goto_14
    return v2

    .line 576
    :cond_15
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 578
    :cond_1d
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v2, 0x0

    goto :goto_14
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1551
    const-string v1, "  USB Device State:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions Applied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mCurrentFunctionsApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    UsbDataUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mUsbDataUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    CurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    UseUsbNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    iget-object v2, p0, mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1560
    :try_start_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mUsb30ConnectionIsInProgress "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_b4 .. :try_end_cd} :catchall_191

    .line 1563
    :try_start_cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    usb 3.0 available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/ss_host_available"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    usb 3.0 enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/bcdUSB"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    usb 3.0 enabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/usb30en"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_190} :catch_194

    .line 1578
    :goto_190
    return-void

    .line 1561
    :catchall_191
    move-exception v1

    :try_start_192
    monitor-exit v2
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v1

    .line 1575
    :catch_194
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_190
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getCurrentFunctions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, mCurrentFunctions:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 902
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_40c

    .line 1121
    :cond_5
    :goto_5
    return-void

    .line 904
    :sswitch_6
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_UPDATE_STATE connected = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",configured = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_63

    const/4 v11, 0x1

    :goto_33
    iput-boolean v11, p0, mConnected:Z

    .line 906
    iget v11, p1, Landroid/os/Message;->arg2:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_65

    const/4 v11, 0x1

    :goto_3b
    iput-boolean v11, p0, mConfigured:Z

    .line 907
    iget-boolean v11, p0, mConnected:Z

    if-nez v11, :cond_41

    .line 911
    :cond_41
    invoke-direct {p0}, updateUsbNotification()V

    .line 912
    invoke-direct {p0}, updateAdbNotification()V

    .line 914
    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    const-string v12, "accessory"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 916
    invoke-direct {p0}, updateCurrentAccessory()V

    .line 921
    :cond_54
    :goto_54
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 922
    invoke-direct {p0}, updateUsbStateBroadcast()V

    .line 923
    invoke-direct {p0}, updateUsbFunctions()V

    goto :goto_5

    .line 905
    :cond_63
    const/4 v11, 0x0

    goto :goto_33

    .line 906
    :cond_65
    const/4 v11, 0x0

    goto :goto_3b

    .line 917
    :cond_67
    iget-boolean v11, p0, mConnected:Z

    if-nez v11, :cond_54

    .line 919
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_54

    .line 927
    :sswitch_71
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7d

    const/4 v11, 0x1

    :goto_77
    iput-boolean v11, p0, mHostConnected:Z

    .line 928
    invoke-direct {p0}, updateUsbNotification()V

    goto :goto_5

    .line 927
    :cond_7d
    const/4 v11, 0x0

    goto :goto_77

    .line 931
    :sswitch_7f
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_ENABLE_ADB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a5

    const/4 v11, 0x1

    :goto_a0
    invoke-direct {p0, v11}, setAdbEnabled(Z)V

    goto/16 :goto_5

    :cond_a5
    const/4 v11, 0x0

    goto :goto_a0

    .line 935
    :sswitch_a7
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_SET_CURRENT_FUNCTION"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 938
    .local v3, "functions":Ljava/lang/String;
    iget-boolean v11, p0, mPowerConnected:Z

    if-eqz v11, :cond_c2

    invoke-direct {p0, v3}, isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 939
    const-string v11, "DISCONNECTED"

    invoke-virtual {p0, v11}, updateState(Ljava/lang/String;)V

    .line 942
    :cond_c2
    const/4 v11, 0x0

    invoke-direct {p0, v3, v11}, setEnabledFunctions(Ljava/lang/String;Z)V

    .line 944
    iget-boolean v11, p0, mPowerConnected:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 945
    const-string v11, "CONFIGURED"

    invoke-virtual {p0, v11}, updateState(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 949
    .end local v3    # "functions":Ljava/lang/String;
    :sswitch_d9
    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 952
    :sswitch_e1
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_SET_USB_DATA_UNLOCKED"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 956
    :sswitch_eb
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_SYSTEM_READY"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0}, updateUsbNotification()V

    .line 958
    invoke-direct {p0}, updateAdbNotification()V

    .line 959
    invoke-direct {p0}, updateUsbFunctions()V

    .line 961
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 962
    iget-boolean v11, p0, mPowerConnected:Z

    invoke-direct {p0, v11}, updateUsbCableState(Z)V

    .line 963
    invoke-direct {p0}, updateUsbStateBroadcast()V

    goto/16 :goto_5

    .line 967
    :sswitch_10e
    const-string v11, "UsbDeviceManager"

    const-string/jumbo v12, "handleMessage -> MSG_BOOT_COMPLETED"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-boolean v11, p0, mPowerConnected:Z

    invoke-direct {p0, v11}, updateUsbCableState(Z)V

    .line 969
    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, setUsbConfig(Ljava/lang/String;)Z

    .line 970
    invoke-direct {p0}, updateUsbStateBroadcast()V

    .line 972
    iget-object v11, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v11, :cond_132

    .line 973
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v11

    iget-object v12, p0, mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v11, v12}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 975
    :cond_132
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v11

    if-eqz v11, :cond_149

    .line 976
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v11

    iget-object v12, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v12}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 978
    :cond_149
    iget-boolean v11, p0, mPowerConnected:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 979
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x64

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, sendMessage(IZ)V

    goto/16 :goto_5

    .line 983
    :sswitch_163
    iget v11, p0, mCurrentUser:I

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eq v11, v12, :cond_5

    .line 985
    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v12, "mtp"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_17f

    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v12, "ptp"

    invoke-static {v11, v12}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1df

    :cond_17f
    const/4 v0, 0x1

    .line 989
    .local v0, "active":Z
    :goto_180
    if-eqz v0, :cond_1d9

    iget v11, p0, mCurrentUser:I

    const/16 v12, -0x2710

    if-eq v11, v12, :cond_1d9

    .line 990
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current user switched to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, mCurrentUser:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; resetting USB host stack for MTP or PTP"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 993
    .local v8, "userManager":Landroid/os/UserManager;
    iget v11, p0, mCurrentUser:I

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 994
    .local v1, "currentUser":Landroid/content/pm/UserInfo;
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 995
    .local v7, "targetUser":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1cb

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v11

    if-nez v11, :cond_1d3

    :cond_1cb
    if-eqz v1, :cond_1e1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v11

    if-eqz v11, :cond_1e1

    .line 996
    :cond_1d3
    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, setEnabledFunctions(Ljava/lang/String;Z)V

    .line 1001
    .end local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "targetUser":Landroid/content/pm/UserInfo;
    .end local v8    # "userManager":Landroid/os/UserManager;
    :cond_1d9
    :goto_1d9
    iget v11, p1, Landroid/os/Message;->arg1:I

    iput v11, p0, mCurrentUser:I

    goto/16 :goto_5

    .line 985
    .end local v0    # "active":Z
    :cond_1df
    const/4 v0, 0x0

    goto :goto_180

    .line 998
    .restart local v0    # "active":Z
    .restart local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v7    # "targetUser":Landroid/content/pm/UserInfo;
    .restart local v8    # "userManager":Landroid/os/UserManager;
    :cond_1e1
    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_1d9

    .line 1006
    .end local v0    # "active":Z
    .end local v1    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "targetUser":Landroid/content/pm/UserInfo;
    .end local v8    # "userManager":Landroid/os/UserManager;
    :sswitch_1e8
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_POWER_STATE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_210

    iget-boolean v11, p0, mPowerConnected:Z

    invoke-direct {p0, v11}, updateUsbCableState(Z)V

    .line 1009
    :cond_210
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_32d

    iget-object v11, p0, mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v11}, isChargingMode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_32d

    .line 1010
    iget-boolean v11, p0, mPowerConnected:Z

    if-eqz v11, :cond_326

    .line 1011
    const-string v11, "CONFIGURED"

    invoke-virtual {p0, v11}, updateState(Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0}, getSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 1014
    .local v6, "salesCode":Ljava/lang/String;
    if-nez v6, :cond_238

    .line 1015
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_POWER_STATE : salesCode is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v6, "OXA"

    .line 1019
    :cond_238
    const-string v11, "VZW"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26d

    .line 1021
    const-string/jumbo v11, "ro.crypto.state"

    const-string/jumbo v12, "unencrypted"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1022
    .local v5, "roCryptoState":Ljava/lang/String;
    const-string/jumbo v11, "vold.decrypt"

    const-string/jumbo v12, "trigger_restart_framework"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1024
    .local v9, "voldDecrypt":Ljava/lang/String;
    const-string/jumbo v11, "encrypted"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_280

    const-string/jumbo v11, "trigger_restart_min_framework"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_280

    .line 1025
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_POWER_STATE : ENCRYPTED LOCKSCREEN. So skip about showing VZW USB Instruction Popup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .end local v5    # "roCryptoState":Ljava/lang/String;
    .end local v9    # "voldDecrypt":Ljava/lang/String;
    :cond_26d
    :goto_26d
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2eb

    .line 1050
    invoke-direct {p0}, showUsbBlockAlertDialog()V

    goto/16 :goto_5

    .line 1027
    .restart local v5    # "roCryptoState":Ljava/lang/String;
    .restart local v9    # "voldDecrypt":Ljava/lang/String;
    :cond_280
    const-string/jumbo v11, "persist.sys.usb.vzw_connected"

    const-string/jumbo v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1029
    .local v10, "vzw_connected":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29b

    .line 1030
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_POWER_STATE : VZW already connected before"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26d

    .line 1031
    :cond_29b
    const-string/jumbo v11, "false"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26d

    .line 1032
    const-string v11, "UsbDeviceManager"

    const-string v12, "MSG_POWER_STATE : VZW never connected, so send intent to show a popup"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.deviceinfo.UsbChargingNotiDialogVzw"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    :try_start_2be
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c7} :catch_2d1

    .line 1044
    :goto_2c7
    const-string/jumbo v11, "persist.sys.usb.vzw_connected"

    const-string/jumbo v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26d

    .line 1040
    :catch_2d1
    move-exception v2

    .line 1041
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to start activity to show VZW Fisrt USB Connection Popup : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c7

    .line 1051
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v5    # "roCryptoState":Ljava/lang/String;
    .end local v9    # "voldDecrypt":Ljava/lang/String;
    .end local v10    # "vzw_connected":Ljava/lang/String;
    :cond_2eb
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_BOTH"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30a

    .line 1052
    invoke-direct {p0}, showUsbBlockAlertDialog()V

    .line 1053
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, sendMessage(IZ)V

    goto/16 :goto_5

    .line 1054
    :cond_30a
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_UPSM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1055
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, sendMessage(IZ)V

    goto/16 :goto_5

    .line 1060
    .end local v6    # "salesCode":Ljava/lang/String;
    :cond_326
    const-string v11, "DISCONNECTED"

    invoke-virtual {p0, v11}, updateState(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1062
    :cond_32d
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_363

    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_UPSM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_351

    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_BOTH"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_363

    .line 1063
    :cond_351
    iget-boolean v11, p0, mPowerConnected:Z

    if-eqz v11, :cond_5

    .line 1065
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v11

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, sendMessage(IZ)V

    goto/16 :goto_5

    .line 1067
    :cond_363
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ON_ALL_SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1068
    iget-boolean v11, p0, mPowerConnected:Z

    if-eqz v11, :cond_5

    .line 1069
    const-string v11, "UsbDeviceManager"

    const-string v12, "USB Blocked by SIM while Device is not in CHARGING MODE. Show Dialog"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0}, showUsbBlockAlertDialog()V

    goto/16 :goto_5

    .line 1076
    :sswitch_389
    const-string v11, "UsbDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleMessage -> MSG_SHOW_UPSM_BLOCK_TOAST = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3d3

    .line 1078
    const-string v11, "UsbDeviceManager"

    const-string v12, "Ultra Power Saving Mode Toast"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040bc7

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1080
    :cond_3d3
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "emergency_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_402

    .line 1081
    const-string v11, "UsbDeviceManager"

    const-string v12, "Emergency Mode Toast"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040bc8

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1084
    :cond_402
    const-string v11, "UsbDeviceManager"

    const-string v12, "Don\'t show Toast"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 902
    nop

    :sswitch_data_40c
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7f
        0x2 -> :sswitch_a7
        0x3 -> :sswitch_eb
        0x4 -> :sswitch_10e
        0x5 -> :sswitch_163
        0x6 -> :sswitch_e1
        0x7 -> :sswitch_d9
        0x8 -> :sswitch_71
        0x9 -> :sswitch_389
        0x64 -> :sswitch_1e8
    .end sparse-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 513
    invoke-virtual {p0, p1}, removeMessages(I)V

    .line 514
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 517
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Z

    .prologue
    .line 520
    invoke-virtual {p0, p1}, removeMessages(I)V

    .line 521
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 523
    if-eqz p3, :cond_12

    const/4 v1, 0x1

    :goto_c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 524
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void

    .line 523
    :cond_12
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public sendMessage(IZ)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .prologue
    .line 506
    invoke-virtual {p0, p1}, removeMessages(I)V

    .line 507
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_10

    const/4 v1, 0x1

    :goto_a
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 509
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 510
    return-void

    .line 508
    :cond_10
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public sendMessage(IZZ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg0"    # Z
    .param p3, "arg1"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 529
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 530
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_13

    move v1, v2

    :goto_9
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 531
    if-eqz p3, :cond_15

    :goto_d
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 532
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void

    :cond_13
    move v1, v3

    .line 530
    goto :goto_9

    :cond_15
    move v2, v3

    .line 531
    goto :goto_d
.end method

.method public setUsb30Mode(Z)V
    .registers 8
    .param p1, "modeUSB30on"    # Z

    .prologue
    .line 1182
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/usb30en"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v0, "USB30_ENABLING_PATH":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1196
    :goto_d
    return-void

    .line 1187
    :cond_e
    :try_start_e
    iget-object v3, p0, mUsb30ConnectionIsInProgressLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_56

    .line 1188
    :try_start_11
    const-string v2, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsb30Mode: mUsb30ConnectionIsInProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/class/android_usb/android0/usb30en"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', val = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, mUsb30ConnectionIsInProgress:Ljava/lang/Boolean;

    .line 1190
    const-string v4, "/sys/class/android_usb/android0/usb30en"

    if-eqz p1, :cond_5f

    const-string v2, "1"

    :goto_4e
    invoke-static {v4, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    monitor-exit v3

    goto :goto_d

    :catchall_53
    move-exception v2

    monitor-exit v3
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_53

    :try_start_55
    throw v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    .line 1193
    :catch_56
    move-exception v1

    .line 1194
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbDeviceManager"

    const-string v3, "Error setUsb30Mode()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1190
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5f
    :try_start_5f
    const-string v2, "0"
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_53

    goto :goto_4e
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .registers 7
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "status"    # Landroid/hardware/usb/UsbPortStatus;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    if-ne v3, v1, :cond_15

    move v0, v1

    .line 564
    .local v0, "hostConnected":Z
    :goto_9
    const/16 v3, 0x8

    if-eqz v0, :cond_17

    :goto_d
    invoke-virtual {p0, v3, v1, v2}, obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 565
    return-void

    .end local v0    # "hostConnected":Z
    :cond_15
    move v0, v2

    .line 563
    goto :goto_9

    .restart local v0    # "hostConnected":Z
    :cond_17
    move v1, v2

    .line 564
    goto :goto_d
.end method

.method public declared-synchronized updateState(Ljava/lang/String;)V
    .registers 8
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "connected":I
    const/4 v0, 0x0

    .line 550
    .local v0, "configured":I
    :goto_b
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, removeMessages(I)V

    .line 552
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 557
    .local v2, "msg":Landroid/os/Message;
    if-nez v1, :cond_6c

    const-wide/16 v4, 0x5dc

    :goto_18
    invoke-virtual {p0, v2, v4, v5}, sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_37

    .line 558
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateState :: failed to send message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_69

    .line 560
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    .line 540
    :cond_39
    :try_start_39
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 541
    const/4 v1, 0x1

    .line 542
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .restart local v0    # "configured":I
    goto :goto_b

    .line 543
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_44
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 544
    const/4 v1, 0x1

    .line 545
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    .restart local v0    # "configured":I
    goto :goto_b

    .line 547
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_4f
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_39 .. :try_end_68} :catchall_69

    goto :goto_37

    .line 537
    :catchall_69
    move-exception v3

    monitor-exit p0

    throw v3

    .line 557
    .restart local v0    # "configured":I
    .restart local v1    # "connected":I
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_6c
    const-wide/16 v4, 0x0

    goto :goto_18
.end method

.method public updateUsbNotificationRefresh()V
    .registers 2

    .prologue
    .line 1320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateUsbNotification(Z)V

    .line 1321
    return-void
.end method
