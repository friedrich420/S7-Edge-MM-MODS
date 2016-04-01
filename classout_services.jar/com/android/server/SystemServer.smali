.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final DIR_ENCRYPTION:Z

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRONT_LED_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.frontled.FrontLEDManagerService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z = false

.field private static final isMobilePaymentAllowed:Z = true

.field private static final isRLLAllowed:Z


# instance fields
.field private final isElasticEnabled:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPluginManager:Landroid/app/epm/PluginManager;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field safeModeValueForTheme:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 349
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, isElasticEnabled:Z

    .line 368
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, mFactoryTestMode:I

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 270
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 270
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 270
    invoke-direct {p0}, startThemeService()V

    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 535
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 536
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, mSystemContext:Landroid/content/Context;

    .line 537
    iget-object v1, p0, mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 538
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, <init>()V

    invoke-direct {v0}, run()V

    .line 364
    return-void
.end method

.method private performPendingShutdown()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 518
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2e

    .line 521
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1c

    move v1, v3

    .line 524
    .local v1, "reboot":Z
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2f

    .line 525
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "reason":Ljava/lang/String;
    :goto_2a
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 532
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_2e
    return-void

    .line 527
    .restart local v1    # "reboot":Z
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_2a
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 513
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    return-void
.end method

.method private run()V
    .registers 12

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v10, 0x1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_19

    .line 377
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 389
    :cond_19
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string/jumbo v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_4c
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 403
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 412
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 425
    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 426
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 427
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 428
    iget-object v0, p0, mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 437
    :cond_9a
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 441
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 445
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 449
    invoke-static {v10}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 452
    invoke-static {v10}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 459
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 460
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 463
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, performPendingShutdown()V

    .line 470
    invoke-direct {p0}, createSystemContext()V

    .line 473
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 474
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 478
    :try_start_d6
    invoke-direct {p0}, startBootstrapServices()V

    .line 479
    invoke-direct {p0}, startCoreServices()V

    .line 480
    invoke-direct {p0}, startOtherServices()V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_df} :catch_138

    .line 489
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 490
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_ec
    :try_start_ec
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.galaxybetaservice"

    const/16 v2, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 498
    .local v9, "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_10d

    .line 499
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10d

    .line 500
    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_10d} :catch_148

    .line 507
    .end local v9    # "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    :cond_10d
    :goto_10d
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_11f
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 420
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 421
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_7f

    .line 482
    :catch_138
    move-exception v7

    .line 483
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    throw v7

    .line 503
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catch_148
    move-exception v0

    goto :goto_10d
.end method

.method private startBootstrapServices()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 551
    iget-object v2, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 554
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 556
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 557
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 563
    iget-object v2, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 567
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 570
    iget-object v2, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 574
    iget-object v2, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 577
    iget-object v2, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 580
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 582
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput-boolean v3, p0, mOnlyCore:Z

    .line 597
    :cond_6b
    :goto_6b
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v2, "SystemServer"

    const-string v4, "!@Boot: Start PackageManagerService"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v4, p0, mSystemContext:Landroid/content/Context;

    iget v2, p0, mFactoryTestMode:I

    if-eqz v2, :cond_d1

    move v2, v3

    :goto_80
    iget-boolean v3, p0, mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 601
    const-string v2, "SystemServer"

    const-string v3, "!@Boot: End PackageManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, mFirstBoot:Z

    .line 603
    iget-object v2, p0, mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 605
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 609
    iget-object v2, p0, mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 612
    iget-object v2, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 616
    invoke-static {}, startSensorService()V

    .line 617
    return-void

    .line 584
    :cond_be
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 585
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iput-boolean v3, p0, mOnlyCore:Z

    goto :goto_6b

    .line 599
    :cond_d1
    const/4 v2, 0x0

    goto :goto_80
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 624
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 627
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 628
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 631
    iget-object v0, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 634
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 635
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2652
    const/4 v4, 0x0

    .line 2653
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_1
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2654
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    if-lez v3, :cond_63

    const/16 v6, 0x10

    if-ge v3, v6, :cond_63

    .line 2657
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2660
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2661
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2663
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4d} :catch_6e

    move-result-object v4

    .line 2665
    if-eqz v4, :cond_63

    :try_start_50
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_63

    .line 2666
    const-string/jumbo v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2667
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_63} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_63} :catch_6e

    .line 2676
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_63
    :goto_63
    return-void

    .line 2669
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_64
    move-exception v5

    .line 2670
    .local v5, "e":Ljava/lang/Exception;
    :try_start_65
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6d} :catch_6e

    goto :goto_63

    .line 2673
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6e
    move-exception v5

    .line 2674
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2708
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2711
    :cond_24
    :try_start_24
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2712
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 2717
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2b
    :goto_2b
    return-void

    .line 2713
    :catch_2c
    move-exception v0

    .line 2714
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2690
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2691
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v2, :cond_8

    .line 2704
    :goto_7
    return-void

    .line 2695
    :cond_8
    :try_start_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2696
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2698
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_7

    .line 2700
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1f
    move-exception v0

    .line 2701
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting fingerprint service failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private startOtherServices()V
    .registers 215

    .prologue
    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemContext:Landroid/content/Context;

    .line 646
    .local v5, "context":Landroid/content/Context;
    const/16 v42, 0x0

    .line 647
    .local v42, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v78, 0x0

    .line 648
    .local v78, "contentService":Lcom/android/server/content/ContentService;
    const/16 v200, 0x0

    .line 649
    .local v200, "vibrator":Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 650
    .local v44, "alarm":Landroid/app/IAlarmManager;
    const/16 v152, 0x0

    .line 651
    .local v152, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 652
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 653
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v159, 0x0

    .line 654
    .local v159, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v69, 0x0

    .line 655
    .local v69, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v160, 0x0

    .line 656
    .local v160, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v183, 0x0

    .line 657
    .local v183, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v213, 0x0

    .line 658
    .local v213, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v198, 0x0

    .line 659
    .local v198, "usb":Lcom/android/server/usb/UsbService;
    const/16 v181, 0x0

    .line 660
    .local v181, "serial":Lcom/android/server/SerialService;
    const/16 v163, 0x0

    .line 661
    .local v163, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v66, 0x0

    .line 662
    .local v66, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v125, 0x0

    .line 663
    .local v125, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v187, 0x0

    .line 664
    .local v187, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v76, 0x0

    .line 666
    .local v76, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v89, 0x0

    .line 668
    .local v89, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v138, 0x0

    .line 669
    .local v138, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v51, 0x0

    .line 670
    .local v51, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v93, 0x0

    .line 671
    .local v93, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v113, 0x0

    .line 672
    .local v113, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v149, 0x0

    .line 673
    .local v149, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v110, 0x0

    .line 674
    .local v110, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v54, 0x0

    .line 676
    .local v54, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v170, 0x0

    .line 678
    .local v170, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v192, 0x0

    .line 679
    .local v192, "timaService":Lcom/android/server/TimaService;
    const/16 v190, 0x0

    .line 681
    .local v190, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v85, 0x0

    .line 684
    .local v85, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    const/16 v140, 0x0

    .line 685
    .local v140, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v142, 0x0

    .line 689
    .local v142, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v179, 0x0

    .line 690
    .local v179, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v177, 0x0

    .line 693
    .local v177, "sdpLogService":Lcom/android/server/SdpLogService;
    const/16 v102, 0x0

    .line 696
    .local v102, "dlpService":Lcom/android/server/DLPManagerService;
    const/16 v91, 0x0

    .line 699
    .local v91, "dLSManager":Lcom/android/server/LSManager;
    const/16 v211, 0x0

    .line 709
    .local v211, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 710
    .local v100, "disableStorage":Z
    const-string v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 711
    .local v95, "disableBluetooth":Z
    const-string v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 712
    .local v96, "disableLocation":Z
    const-string v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v101

    .line 713
    .local v101, "disableSystemUI":Z
    const-string v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 714
    .local v99, "disableNonCoreServices":Z
    const-string v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 715
    .local v97, "disableNetwork":Z
    const-string v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 716
    .local v98, "disableNetworkTime":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v128

    .line 721
    .local v128, "isEmulator":Z
    const/16 v94, 0x1

    .line 724
    .local v94, "disableAtlas":Z
    :try_start_8e
    const-string v6, "SystemServer"

    const-string v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 727
    const-string v6, "SystemServer"

    const-string v7, "Scheduling Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 732
    const-string v6, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v188, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v188

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c1
    .catch Ljava/lang/RuntimeException; {:try_start_8e .. :try_end_c1} :catch_19e1

    .line 734
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v188, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_c1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v188

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 736
    const-string v6, "SystemServer"

    const-string v7, "Entropy Mixer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v111, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_d7} :catch_19e4

    .line 740
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v111, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_d7
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v199

    .line 741
    .local v199, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v199

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e9
    .catch Ljava/lang/RuntimeException; {:try_start_d7 .. :try_end_e9} :catch_1172

    move-result v6

    if-eqz v6, :cond_ff

    .line 743
    :try_start_ec
    const-string v6, "SystemServer"

    const-string v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v140

    .line 745
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v140

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ff} :catch_1166
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_ff} :catch_1172

    .line 756
    :cond_ff
    :goto_ff
    :try_start_ff
    const-string v6, "SystemServer"

    const-string v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_110} :catch_1189
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_110} :catch_1172

    .line 764
    :goto_110
    :try_start_110
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, mContentResolver:Landroid/content/ContentResolver;

    .line 766
    const-string v6, "SystemServer"

    const-string v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_128
    .catch Ljava/lang/RuntimeException; {:try_start_110 .. :try_end_128} :catch_1172

    .line 772
    :try_start_128
    const-string v6, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v43, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_136} :catch_1195
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_136} :catch_1172

    .line 774
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v43, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_136
    const-string v6, "account"

    move-object/from16 v0, v43

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_136 .. :try_end_13d} :catch_1a33
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_13d} :catch_19e9

    move-object/from16 v42, v43

    .line 780
    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_13f
    :try_start_13f
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v141

    .line 781
    .local v141, "mProductName":Ljava/lang/String;
    const-string/jumbo v6, "ktt"

    move-object/from16 v0, v141

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_169

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_154
    .catch Ljava/lang/RuntimeException; {:try_start_13f .. :try_end_154} :catch_1172

    move-result v6

    if-nez v6, :cond_169

    .line 784
    :try_start_157
    const-string v6, "SystemServer"

    const-string v7, "KT UCA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string/jumbo v6, "ktuca"

    new-instance v7, Landroid/ktuca/KtUcaService;

    invoke-direct {v7, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_169
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_169} :catch_11a1
    .catch Ljava/lang/RuntimeException; {:try_start_157 .. :try_end_169} :catch_1172

    .line 792
    :cond_169
    :goto_169
    :try_start_169
    const-string v6, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11ad

    const/4 v6, 0x1

    :goto_178
    invoke-static {v5, v6}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v78

    .line 798
    new-instance v90, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_183
    .catch Ljava/lang/RuntimeException; {:try_start_169 .. :try_end_183} :catch_1172

    .line 800
    .end local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v90, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_183
    sget-boolean v6, DIR_ENCRYPTION:Z

    if-eqz v6, :cond_18e

    .line 801
    const-string v6, "DirEncryptService"

    move-object/from16 v0, v90

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_18e} :catch_11b0
    .catch Ljava/lang/RuntimeException; {:try_start_183 .. :try_end_18e} :catch_19f2

    :cond_18e
    move-object/from16 v89, v90

    .line 812
    .end local v90    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_190
    :try_start_190
    const-string v6, "SystemServer"

    const-string v7, "Hmmm.... let\'s try LSM ^^"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v92, Lcom/android/server/LSManager;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/LSManager;-><init>(Landroid/content/Context;)V
    :try_end_19e
    .catch Ljava/lang/RuntimeException; {:try_start_190 .. :try_end_19e} :catch_1172

    .line 816
    .end local v91    # "dLSManager":Lcom/android/server/LSManager;
    .local v92, "dLSManager":Lcom/android/server/LSManager;
    :try_start_19e
    const-string v6, "LSManager"

    move-object/from16 v0, v92

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_19e .. :try_end_1a5} :catch_11be
    .catch Ljava/lang/RuntimeException; {:try_start_19e .. :try_end_1a5} :catch_19fb

    move-object/from16 v91, v92

    .line 825
    .end local v92    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v91    # "dLSManager":Lcom/android/server/LSManager;
    :goto_1a7
    :try_start_1a7
    const-string v6, "SystemServer"

    const-string v7, "SecurityManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catch Ljava/lang/RuntimeException; {:try_start_1a7 .. :try_end_1ae} :catch_1172

    .line 827
    :try_start_1ae
    invoke-static {v5}, startSecurityManagerService(Landroid/content/Context;)V
    :try_end_1b1
    .catch Ljava/lang/Throwable; {:try_start_1ae .. :try_end_1b1} :catch_11cc
    .catch Ljava/lang/RuntimeException; {:try_start_1ae .. :try_end_1b1} :catch_1172

    .line 834
    :goto_1b1
    :try_start_1b1
    const-string v6, "SystemServer"

    const-string v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catch Ljava/lang/RuntimeException; {:try_start_1b1 .. :try_end_1b8} :catch_1172

    .line 836
    :try_start_1b8
    const-string v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c2
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1c2} :catch_11d6
    .catch Ljava/lang/RuntimeException; {:try_start_1b8 .. :try_end_1c2} :catch_1172

    .line 844
    :goto_1c2
    :try_start_1c2
    const-string v6, "SystemServer"

    const-string v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catch Ljava/lang/RuntimeException; {:try_start_1c2 .. :try_end_1c9} :catch_1172

    .line 846
    :try_start_1c9
    const-string v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v5}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1c9 .. :try_end_1d3} :catch_11e0
    .catch Ljava/lang/RuntimeException; {:try_start_1c9 .. :try_end_1d3} :catch_1172

    .line 855
    :goto_1d3
    :try_start_1d3
    const-string v6, "SystemServer"

    const-string v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1da
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1da} :catch_1172

    .line 857
    :try_start_1da
    const-string v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v5}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e4
    .catch Ljava/lang/Throwable; {:try_start_1da .. :try_end_1e4} :catch_11ed
    .catch Ljava/lang/RuntimeException; {:try_start_1da .. :try_end_1e4} :catch_1172

    .line 866
    :goto_1e4
    :try_start_1e4
    const-string v6, "SystemServer"

    const-string v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catch Ljava/lang/RuntimeException; {:try_start_1e4 .. :try_end_1eb} :catch_1172

    .line 868
    :try_start_1eb
    const-string v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v5}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f5
    .catch Ljava/lang/Throwable; {:try_start_1eb .. :try_end_1f5} :catch_11fa
    .catch Ljava/lang/RuntimeException; {:try_start_1eb .. :try_end_1f5} :catch_1172

    .line 875
    :goto_1f5
    :try_start_1f5
    const-string v6, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_203
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_203} :catch_1172

    .line 878
    :try_start_203
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 879
    const-string v6, "SystemServer"

    const-string v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_215
    .catch Ljava/lang/Throwable; {:try_start_203 .. :try_end_215} :catch_1204
    .catch Ljava/lang/RuntimeException; {:try_start_203 .. :try_end_215} :catch_1172

    .line 884
    :goto_215
    :try_start_215
    const-string v6, "SystemServer"

    const-string v7, "Vibrator Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v201, Lcom/android/server/VibratorService;

    move-object/from16 v0, v201

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_223
    .catch Ljava/lang/RuntimeException; {:try_start_215 .. :try_end_223} :catch_1172

    .line 886
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .local v201, "vibrator":Lcom/android/server/VibratorService;
    :try_start_223
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v201

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 889
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_245

    .line 890
    const-string v6, "SystemServer"

    const-string v7, "Tw ToolBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v195, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v195

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 892
    .local v195, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v6, "tw_toolbox"

    move-object/from16 v0, v195

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 903
    .end local v195    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_245
    const-string v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_253
    .catch Ljava/lang/RuntimeException; {:try_start_223 .. :try_end_253} :catch_121b

    move-result v189

    .line 904
    .local v189, "timaEnabled":Z
    if-eqz v189, :cond_326

    .line 906
    :try_start_256
    const-string v6, "SystemServer"

    const-string v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 910
    new-instance v193, Lcom/android/server/TimaService;

    move-object/from16 v0, v193

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_268
    .catch Ljava/lang/Throwable; {:try_start_256 .. :try_end_268} :catch_120e
    .catch Ljava/lang/RuntimeException; {:try_start_256 .. :try_end_268} :catch_121b

    .line 911
    .end local v192    # "timaService":Lcom/android/server/TimaService;
    .local v193, "timaService":Lcom/android/server/TimaService;
    :try_start_268
    const-string/jumbo v6, "tima"

    move-object/from16 v0, v193

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_270
    .catch Ljava/lang/Throwable; {:try_start_268 .. :try_end_270} :catch_1a2e
    .catch Ljava/lang/RuntimeException; {:try_start_268 .. :try_end_270} :catch_1a04

    move-object/from16 v192, v193

    .line 916
    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .restart local v192    # "timaService":Lcom/android/server/TimaService;
    :goto_272
    const/16 v6, -0x13

    :try_start_274
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_277
    .catch Ljava/lang/RuntimeException; {:try_start_274 .. :try_end_277} :catch_121b

    .line 920
    :try_start_277
    const-string v6, "SystemServer"

    const-string v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v191, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v191

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_285
    .catch Ljava/lang/Throwable; {:try_start_277 .. :try_end_285} :catch_1224
    .catch Ljava/lang/RuntimeException; {:try_start_277 .. :try_end_285} :catch_121b

    .end local v190    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v191, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v190, v191

    .line 929
    .end local v191    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v190    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_287
    :try_start_287
    const-string v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v194

    .line 930
    .local v194, "timaversion":Z
    if-eqz v194, :cond_326

    .line 933
    const/16 v121, 0x0

    .line 934
    .local v121, "icccService":Lcom/android/server/IcccManagerService;
    new-instance v121, Lcom/android/server/IcccManagerService;

    .end local v121    # "icccService":Lcom/android/server/IcccManagerService;
    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    .line 935
    .restart local v121    # "icccService":Lcom/android/server/IcccManagerService;
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 937
    const-string v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_2b1} :catch_1265
    .catch Ljava/lang/RuntimeException; {:try_start_287 .. :try_end_2b1} :catch_121b

    .line 940
    :try_start_2b1
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/IcccManagerService;->TimaSetLicenseStatusJNI()I

    move-result v122

    .line 942
    .local v122, "iccc_result":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimaSetLicenseStatusJNI result : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v122

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-nez v122, :cond_1231

    .line 946
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x0

    move-object/from16 v0, v121

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->Iccc_SaveData_Platform(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2f4} :catch_1256
    .catch Ljava/lang/RuntimeException; {:try_start_2b1 .. :try_end_2f4} :catch_121b

    .line 960
    .end local v122    # "iccc_result":I
    :goto_2f4
    :try_start_2f4
    const-string v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v130

    .line 962
    .local v130, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v130 .. v130}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 963
    const-string v6, "SystemServer"

    const-string v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_326

    .line 966
    const-string v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v35

    .line 968
    .local v35, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 969
    const-string v6, "SystemServer"

    const-string v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_326
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_326} :catch_1265
    .catch Ljava/lang/RuntimeException; {:try_start_2f4 .. :try_end_326} :catch_121b

    .line 980
    .end local v35    # "FipsKeyStoreClass":Ljava/lang/Class;
    .end local v121    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v130    # "keyStoreClass":Ljava/lang/Class;
    .end local v194    # "timaversion":Z
    :cond_326
    :goto_326
    const/16 v107, 0x1

    .line 981
    .local v107, "enabledMDM":Z
    const/4 v6, 0x1

    move/from16 v0, v107

    if-ne v6, v0, :cond_345

    .line 982
    const/16 v106, 0x1

    .line 983
    .local v106, "enabledCEP":Z
    const/4 v6, 0x1

    move/from16 v0, v106

    if-ne v6, v0, :cond_127e

    .line 985
    :try_start_334
    const-string v6, "SystemServer"

    const-string v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_345
    .catch Ljava/lang/Throwable; {:try_start_334 .. :try_end_345} :catch_1272
    .catch Ljava/lang/RuntimeException; {:try_start_334 .. :try_end_345} :catch_121b

    .line 995
    .end local v106    # "enabledCEP":Z
    :cond_345
    :goto_345
    :try_start_345
    const-string v6, "SystemServer"

    const-string v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string/jumbo v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_357
    .catch Ljava/lang/Throwable; {:try_start_345 .. :try_end_357} :catch_1287
    .catch Ljava/lang/RuntimeException; {:try_start_345 .. :try_end_357} :catch_121b

    .line 1002
    :goto_357
    :try_start_357
    const-string v6, "SystemServer"

    const-string v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35e
    .catch Ljava/lang/RuntimeException; {:try_start_357 .. :try_end_35e} :catch_121b

    .line 1004
    :try_start_35e
    new-instance v56, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v56

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1005
    .local v56, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    .line 1006
    .local v55, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v6, v7

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .line 1007
    .local v57, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v10, v6, v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v184

    check-cast v184, Landroid/os/IBinder;

    .line 1008
    .local v184, "ssrmService":Landroid/os/IBinder;
    const-string v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v184

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_35e .. :try_end_3a2} :catch_1293
    .catch Ljava/lang/RuntimeException; {:try_start_35e .. :try_end_3a2} :catch_121b

    .line 1014
    .end local v55    # "cfmsClass":Ljava/lang/Class;
    .end local v56    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v57    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v184    # "ssrmService":Landroid/os/IBinder;
    :goto_3a2
    :try_start_3a2
    const-string v6, "SystemServer"

    const-string v7, "Consumer IR Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    new-instance v77, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_3b0
    .catch Ljava/lang/RuntimeException; {:try_start_3a2 .. :try_end_3b0} :catch_121b

    .line 1016
    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v77, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3b0
    const-string v6, "consumer_ir"

    move-object/from16 v0, v77

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v6, v0, mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 1019
    const-string v6, "alarm"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v44

    .line 1022
    const-string v6, "SystemServer"

    const-string v7, "Init Watchdog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v207

    .line 1024
    .local v207, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v207

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1026
    const-string v6, "SystemServer"

    const-string v7, "Input Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v126, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v126

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f3
    .catch Ljava/lang/RuntimeException; {:try_start_3b0 .. :try_end_3f3} :catch_1a0f

    .line 1029
    .end local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v126, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_3f3
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_410

    .line 1030
    const-string v6, "SystemServer"

    const-string v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_410
    .catch Ljava/lang/RuntimeException; {:try_start_3f3 .. :try_end_410} :catch_12ad

    .line 1035
    :cond_410
    :try_start_410
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_428

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_466

    .line 1037
    :cond_428
    const-string v6, "SystemServer"

    const-string v7, "SContext Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v176, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v176

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1039
    .local v176, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "android.hardware.scontext.SContextService"

    move-object/from16 v0, v176

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v62

    .line 1040
    .local v62, "class_SContextService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v74

    .line 1041
    .local v74, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_466
    .catch Ljava/lang/Exception; {:try_start_410 .. :try_end_466} :catch_12a1
    .catch Ljava/lang/RuntimeException; {:try_start_410 .. :try_end_466} :catch_12ad

    .line 1048
    .end local v62    # "class_SContextService":Ljava/lang/Class;
    .end local v74    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    .end local v176    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    :cond_466
    :goto_466
    :try_start_466
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_46f
    .catch Ljava/lang/RuntimeException; {:try_start_466 .. :try_end_46f} :catch_12ad

    move-result v6

    if-eqz v6, :cond_487

    .line 1050
    :try_start_472
    const-string v6, "SystemServer"

    const-string v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v53, Landroid/app/BarBeamService;

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v53, "barbeam":Landroid/app/BarBeamService;
    const-string v6, "barbeam"

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_487
    .catch Ljava/lang/Throwable; {:try_start_472 .. :try_end_487} :catch_12ba
    .catch Ljava/lang/RuntimeException; {:try_start_472 .. :try_end_487} :catch_12ad

    .line 1063
    .end local v53    # "barbeam":Landroid/app/BarBeamService;
    :cond_487
    :goto_487
    :try_start_487
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iput-object v6, v0, mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 1069
    const-string v6, "SystemServer"

    const-string v7, "Window Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_12c6

    const/4 v6, 0x1

    move v7, v6

    :goto_4a7
    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirstBoot:Z

    if-nez v6, :cond_12ca

    const/4 v6, 0x1

    :goto_4ae
    move-object/from16 v0, p0

    iget-boolean v10, v0, mOnlyCore:Z

    move-object/from16 v0, v126

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v213

    .line 1073
    const-string/jumbo v6, "window"

    move-object/from16 v0, v213

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1074
    const-string/jumbo v6, "input"

    move-object/from16 v0, v126

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v213

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v6, v0, mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iget-object v7, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiWindowFacadeService;->setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v6, v0, mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, v213

    invoke-virtual {v6, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1085
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v126

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1086
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1089
    move-object/from16 v0, p0

    iget-object v6, v0, mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1094
    if-eqz v128, :cond_12cd

    .line 1095
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooh Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_501
    const-string v6, "SystemServer"

    const-string v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_508
    .catch Ljava/lang/RuntimeException; {:try_start_487 .. :try_end_508} :catch_12ad

    .line 1117
    :try_start_508
    new-instance v143, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50f
    .catch Ljava/lang/Throwable; {:try_start_508 .. :try_end_50f} :catch_1320
    .catch Ljava/lang/RuntimeException; {:try_start_508 .. :try_end_50f} :catch_12ad

    .line 1118
    .end local v142    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v143, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_50f
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v143

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_517
    .catch Ljava/lang/Throwable; {:try_start_50f .. :try_end_517} :catch_1a29
    .catch Ljava/lang/RuntimeException; {:try_start_50f .. :try_end_517} :catch_1a1a

    move-object/from16 v142, v143

    .line 1125
    .end local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v142    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_519
    :try_start_519
    new-instance v6, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_521
    .catch Ljava/lang/RuntimeException; {:try_start_519 .. :try_end_521} :catch_12ad

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v76, v77

    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v125, v126

    .end local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v200, v201

    .line 1132
    .end local v107    # "enabledMDM":Z
    .end local v141    # "mProductName":Ljava/lang/String;
    .end local v189    # "timaEnabled":Z
    .end local v199    # "versionInfo":Landroid/os/Bundle;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .end local v207    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    :goto_52b
    const/16 v185, 0x0

    .line 1133
    .local v185, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v166, 0x0

    .line 1134
    .local v166, "notification":Landroid/app/INotificationManager;
    const/16 v123, 0x0

    .line 1135
    .local v123, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v205, 0x0

    .line 1136
    .local v205, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v131, 0x0

    .line 1137
    .local v131, "location":Lcom/android/server/LocationManagerService;
    const/16 v173, 0x0

    .line 1138
    .local v173, "sLocation":Landroid/os/IBinder;
    const/16 v79, 0x0

    .line 1139
    .local v79, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v196, 0x0

    .line 1140
    .local v196, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v133, 0x0

    .line 1142
    .local v133, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v202, 0x0

    .line 1144
    .local v202, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v49, 0x0

    .line 1145
    .local v49, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v146, 0x0

    .line 1148
    .local v146, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v108, 0x0

    .line 1152
    .local v108, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v171, 0x0

    .line 1156
    .local v171, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_579

    .line 1158
    :try_start_54e
    const-string v6, "SystemServer"

    const-string v7, "Input Method Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v124, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v124

    move-object/from16 v1, v213

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_55e
    .catch Ljava/lang/Throwable; {:try_start_54e .. :try_end_55e} :catch_132c

    .line 1160
    .end local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v124, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_55e
    const-string/jumbo v6, "input_method"

    move-object/from16 v0, v124

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_566
    .catch Ljava/lang/Throwable; {:try_start_55e .. :try_end_566} :catch_19dc

    move-object/from16 v123, v124

    .line 1166
    .end local v124    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_568
    :try_start_568
    const-string v6, "SystemServer"

    const-string v7, "Accessibility Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-string v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_579
    .catch Ljava/lang/Throwable; {:try_start_568 .. :try_end_579} :catch_1339

    .line 1175
    :cond_579
    :goto_579
    :try_start_579
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_57c
    .catch Ljava/lang/Throwable; {:try_start_579 .. :try_end_57c} :catch_1346

    .line 1182
    :goto_57c
    :try_start_57c
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v167

    .line 1183
    .local v167, "pM":Landroid/content/pm/PackageManager;
    if-eqz v167, :cond_5e5

    .line 1184
    const-string v6, "SystemServer"

    const-string v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const-string v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e5

    const-string v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e5

    const-string v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e5

    .line 1187
    new-instance v151, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v151

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1188
    .local v151, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v151

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v61

    .line 1189
    .local v61, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v73

    .line 1190
    .local v73, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v73

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1191
    const-string v6, "SystemServer"

    const-string v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e5
    .catch Ljava/lang/Exception; {:try_start_57c .. :try_end_5e5} :catch_1353

    .line 1200
    .end local v61    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v73    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v151    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v167    # "pM":Landroid/content/pm/PackageManager;
    :cond_5e5
    :goto_5e5
    const/16 v81, 0x0

    .line 1202
    .local v81, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_612

    .line 1203
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 1204
    .local v87, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60b

    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135f

    .line 1205
    :cond_60b
    const-string v6, "SystemServer"

    const-string v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    .end local v87    # "cryptState":Ljava/lang/String;
    :cond_612
    :goto_612
    :try_start_612
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v169

    .line 1228
    .local v169, "pm":Landroid/content/pm/PackageManager;
    if-eqz v169, :cond_643

    .line 1229
    const-string v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v169

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_643

    .line 1230
    const-string v6, "SystemServer"

    const-string v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    new-instance v172, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v172

    move-object/from16 v1, v125

    invoke-direct {v0, v5, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_632
    .catch Ljava/lang/Throwable; {:try_start_612 .. :try_end_632} :catch_13a2

    .line 1232
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v172, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :try_start_632
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v172

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1233
    move-object/from16 v0, v125

    move-object/from16 v1, v172

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    :try_end_641
    .catch Ljava/lang/Throwable; {:try_start_632 .. :try_end_641} :catch_19d2

    move-object/from16 v171, v172

    .line 1252
    .end local v169    # "pm":Landroid/content/pm/PackageManager;
    .end local v172    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :cond_643
    :goto_643
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_663

    .line 1254
    :try_start_64b
    const-string v6, "SystemServer"

    const-string v7, "Add FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const-string v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1256
    const-string v6, "SystemServer"

    const-string v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_663
    .catch Ljava/lang/Throwable; {:try_start_64b .. :try_end_663} :catch_13af

    .line 1262
    :cond_663
    :goto_663
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6cd

    .line 1263
    if-nez v100, :cond_68f

    const-string v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68f

    .line 1270
    :try_start_67b
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1271
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_68e
    .catch Ljava/lang/Throwable; {:try_start_67b .. :try_end_68e} :catch_13bb

    move-result-object v152

    .line 1279
    :cond_68f
    :goto_68f
    :try_start_68f
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    if-eqz v89, :cond_6a2

    .line 1281
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_6a2
    .catch Ljava/lang/Throwable; {:try_start_68f .. :try_end_6a2} :catch_13c8

    .line 1292
    :cond_6a2
    :goto_6a2
    :try_start_6a2
    const-string v6, "SystemServer"

    const-string v7, "VR Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v203, Lcom/android/server/VRManagerService;

    move-object/from16 v0, v203

    invoke-direct {v0, v5}, Lcom/android/server/VRManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6b0
    .catch Ljava/lang/Throwable; {:try_start_6a2 .. :try_end_6b0} :catch_13d5

    .line 1294
    .end local v202    # "vrManager":Lcom/android/server/VRManagerService;
    .local v203, "vrManager":Lcom/android/server/VRManagerService;
    :try_start_6b0
    const-string/jumbo v6, "vr"

    move-object/from16 v0, v203

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b8
    .catch Ljava/lang/Throwable; {:try_start_6b0 .. :try_end_6b8} :catch_19cd

    move-object/from16 v202, v203

    .line 1303
    .end local v203    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v202    # "vrManager":Lcom/android/server/VRManagerService;
    :goto_6ba
    const-string v6, "SystemServer"

    const-string v7, "Check LSM please."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    if-eqz v91, :cond_6cd

    .line 1306
    :try_start_6c3
    const-string v6, "SystemServer"

    const-string v7, "LSManager.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/LSManager;->systemReady()V
    :try_end_6cd
    .catch Ljava/lang/Throwable; {:try_start_6c3 .. :try_end_6cd} :catch_13e2

    .line 1319
    :cond_6cd
    :goto_6cd
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1322
    :try_start_6d6
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_6dd
    .catch Ljava/lang/Throwable; {:try_start_6d6 .. :try_end_6dd} :catch_13ef

    .line 1328
    :goto_6dd
    :try_start_6dd
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1040386

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_6f0
    .catch Landroid/os/RemoteException; {:try_start_6dd .. :try_end_6f0} :catch_19ca

    .line 1335
    :goto_6f0
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1a3c

    .line 1336
    if-nez v99, :cond_73b

    .line 1338
    :try_start_6f9
    const-string v6, "SystemServer"

    const-string v7, "LockSettingsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    new-instance v134, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_707
    .catch Ljava/lang/Throwable; {:try_start_6f9 .. :try_end_707} :catch_13fc

    .line 1340
    .end local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v134, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_707
    const-string/jumbo v6, "lock_settings"

    move-object/from16 v0, v134

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70f
    .catch Ljava/lang/Throwable; {:try_start_707 .. :try_end_70f} :catch_19c5

    move-object/from16 v133, v134

    .line 1345
    .end local v134    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_711
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_729

    .line 1346
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1349
    :cond_729
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1353
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1358
    :cond_73b
    :try_start_73b
    const-string v6, "SystemServer"

    const-string v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    new-instance v139, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_749
    .catch Ljava/lang/Throwable; {:try_start_73b .. :try_end_749} :catch_1409

    .line 1360
    .end local v138    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v139, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_749
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v139

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1361
    const-string v6, "SystemServer"

    const-string v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_758
    .catch Ljava/lang/Throwable; {:try_start_749 .. :try_end_758} :catch_19c0

    move-object/from16 v138, v139

    .line 1369
    .end local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v138    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_75a
    :try_start_75a
    const-string v6, "SystemServer"

    const-string v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    new-instance v180, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v180

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_768
    .catch Ljava/lang/Throwable; {:try_start_75a .. :try_end_768} :catch_1415

    .line 1371
    .end local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v180, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_768
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v180

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_770
    .catch Ljava/lang/Throwable; {:try_start_768 .. :try_end_770} :catch_19bb

    move-object/from16 v179, v180

    .line 1376
    .end local v180    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_772
    :try_start_772
    const-string v6, "SystemServer"

    const-string v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v178, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v178

    invoke-direct {v0, v5}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_780
    .catch Ljava/lang/Throwable; {:try_start_772 .. :try_end_780} :catch_1422

    .line 1378
    .end local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v178, "sdpLogService":Lcom/android/server/SdpLogService;
    :try_start_780
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v178

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_788
    .catch Ljava/lang/Throwable; {:try_start_780 .. :try_end_788} :catch_19b6

    move-object/from16 v177, v178

    .line 1387
    .end local v178    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    :goto_78a
    :try_start_78a
    const-string v6, "SystemServer"

    const-string v7, "DLPManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    new-instance v103, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_798
    .catch Ljava/lang/Throwable; {:try_start_78a .. :try_end_798} :catch_142e

    .line 1389
    .end local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v103, "dlpService":Lcom/android/server/DLPManagerService;
    :try_start_798
    const-string/jumbo v6, "dlp"

    move-object/from16 v0, v103

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a0
    .catch Ljava/lang/Throwable; {:try_start_798 .. :try_end_7a0} :catch_19b1

    move-object/from16 v102, v103

    .line 1396
    .end local v103    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    :goto_7a2
    if-nez v99, :cond_7c8

    .line 1398
    :try_start_7a4
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    new-instance v109, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    move-object/from16 v0, v109

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_7b7
    .catch Ljava/lang/Throwable; {:try_start_7a4 .. :try_end_7b7} :catch_143b

    .line 1400
    .end local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v109, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_7b7
    const-string/jumbo v6, "enterprise_policy"

    move-object/from16 v0, v109

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1401
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c6
    .catch Ljava/lang/Throwable; {:try_start_7b7 .. :try_end_7c6} :catch_19ac

    move-object/from16 v108, v109

    .line 1408
    .end local v109    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_7c8
    :goto_7c8
    if-nez v101, :cond_7e4

    .line 1410
    :try_start_7ca
    const-string v6, "SystemServer"

    const-string v7, "Status Bar"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    new-instance v186, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v186

    move-object/from16 v1, v213

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_7da
    .catch Ljava/lang/Throwable; {:try_start_7ca .. :try_end_7da} :catch_1447

    .line 1412
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v186, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_7da
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v186

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e2
    .catch Ljava/lang/Throwable; {:try_start_7da .. :try_end_7e2} :catch_19a7

    move-object/from16 v185, v186

    .line 1418
    .end local v186    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_7e4
    :goto_7e4
    if-nez v99, :cond_7f7

    .line 1420
    :try_start_7e6
    const-string v6, "SystemServer"

    const-string v7, "Clipboard Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const-string v6, "clipboard"

    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f7
    .catch Ljava/lang/Throwable; {:try_start_7e6 .. :try_end_7f7} :catch_1454

    .line 1429
    :cond_7f7
    :goto_7f7
    if-nez v99, :cond_80a

    .line 1431
    :try_start_7f9
    const-string v6, "SystemServer"

    const-string v7, "ClipboardEx Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const-string v6, "clipboardEx"

    new-instance v7, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80a
    .catch Ljava/lang/Throwable; {:try_start_7f9 .. :try_end_80a} :catch_1461

    .line 1440
    :cond_80a
    :goto_80a
    if-nez v97, :cond_81d

    .line 1442
    :try_start_80c
    const-string v6, "SystemServer"

    const-string v7, "NetworkManagement Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1444
    const-string/jumbo v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81d
    .catch Ljava/lang/Throwable; {:try_start_80c .. :try_end_81d} :catch_146e

    .line 1452
    :cond_81d
    :goto_81d
    const-string v6, "SystemServer"

    const-string v7, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :try_start_824
    const-string v6, "SystemServer"

    const-string v7, "Absolute Persistence Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string v6, "ABTPersistenceService"

    new-instance v7, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v7, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_835
    .catch Ljava/lang/Throwable; {:try_start_824 .. :try_end_835} :catch_147b

    .line 1464
    :goto_835
    if-nez v99, :cond_84f

    .line 1466
    :try_start_837
    const-string v6, "SystemServer"

    const-string v7, "Text Service Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    new-instance v197, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v197

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_845
    .catch Ljava/lang/Throwable; {:try_start_837 .. :try_end_845} :catch_1488

    .line 1468
    .end local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v197, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_845
    const-string/jumbo v6, "textservices"

    move-object/from16 v0, v197

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84d
    .catch Ljava/lang/Throwable; {:try_start_845 .. :try_end_84d} :catch_19a2

    move-object/from16 v196, v197

    .line 1474
    .end local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_84f
    :goto_84f
    if-nez v97, :cond_1a38

    .line 1476
    :try_start_851
    const-string v6, "SystemServer"

    const-string v7, "Network Score Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    new-instance v161, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_85f
    .catch Ljava/lang/Throwable; {:try_start_851 .. :try_end_85f} :catch_1495

    .line 1478
    .end local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v161, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_85f
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v161

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_867
    .catch Ljava/lang/Throwable; {:try_start_85f .. :try_end_867} :catch_199d

    move-object/from16 v160, v161

    .line 1484
    .end local v161    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_869
    :try_start_869
    const-string v6, "SystemServer"

    const-string v7, "NetworkStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    new-instance v162, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v162

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v9, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_879
    .catch Ljava/lang/Throwable; {:try_start_869 .. :try_end_879} :catch_14a2

    .line 1486
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v162, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_879
    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v162

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_881
    .catch Ljava/lang/Throwable; {:try_start_879 .. :try_end_881} :catch_1998

    move-object/from16 v8, v162

    .line 1492
    .end local v162    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_883
    :try_start_883
    const-string v6, "SystemServer"

    const-string v7, "NetworkPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_89c
    .catch Ljava/lang/Throwable; {:try_start_883 .. :try_end_89c} :catch_14af

    .line 1497
    .end local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_89c
    const-string/jumbo v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a2
    .catch Ljava/lang/Throwable; {:try_start_89c .. :try_end_8a2} :catch_1995

    .line 1502
    :goto_8a2
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1503
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1505
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1508
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1511
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1520
    :try_start_8cf
    const-string v6, "SystemServer"

    const-string v7, "Connectivity Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    new-instance v70, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_8dd
    .catch Ljava/lang/Throwable; {:try_start_8cf .. :try_end_8dd} :catch_14be

    .line 1523
    .end local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v70, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_8dd
    const-string v6, "connectivity"

    move-object/from16 v0, v70

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1524
    move-object/from16 v0, v70

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1525
    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_8ee
    .catch Ljava/lang/Throwable; {:try_start_8dd .. :try_end_8ee} :catch_1990

    move-object/from16 v69, v70

    .line 1531
    .end local v70    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_8f0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_947

    .line 1534
    :try_start_8fc
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v58

    .line 1536
    .local v58, "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v63

    .line 1537
    .local v63, "class_SmartBondingService":Ljava/lang/Class;
    const-string v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v114

    .line 1539
    .local v114, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v75

    .line 1541
    .local v75, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v114

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v75

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1542
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_947
    .catch Ljava/lang/Throwable; {:try_start_8fc .. :try_end_947} :catch_14cb

    .line 1549
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v63    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v75    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v114    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :cond_947
    :goto_947
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_992

    .line 1551
    :try_start_953
    const-string v6, "SystemServer"

    const-string v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance v154, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v154

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1553
    .local v154, "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v154

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v153

    .line 1554
    .local v153, "mptcpClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v153

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v155

    .line 1555
    .local v155, "mptcpConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v155

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v156

    check-cast v156, Landroid/os/IBinder;

    .line 1558
    .local v156, "mptcpService":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_992
    .catch Ljava/lang/Throwable; {:try_start_953 .. :try_end_992} :catch_14d8

    .line 1565
    .end local v153    # "mptcpClass":Ljava/lang/Class;
    .end local v154    # "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    .end local v155    # "mptcpConstructor":Ljava/lang/reflect/Constructor;
    .end local v156    # "mptcpService":Landroid/os/IBinder;
    :cond_992
    :goto_992
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b6

    .line 1567
    :try_start_99e
    const-string v6, "SystemServer"

    const-string v7, "Starting EPDG SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/16 v112, 0x0

    .line 1569
    .local v112, "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.sec.epdg.EpdgService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v112

    .line 1570
    if-nez v112, :cond_14e5

    .line 1571
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b6
    .catch Ljava/lang/Throwable; {:try_start_99e .. :try_end_9b6} :catch_1514

    .line 1588
    .end local v112    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9b6
    :goto_9b6
    :try_start_9b6
    const-string v6, "SystemServer"

    const-string v7, "Starting CLINFO SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/16 v65, 0x0

    .line 1591
    .local v65, "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    const/16 v59, 0x0

    .line 1593
    .local v59, "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v65, Ldalvik/system/PathClassLoader;

    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "/system/framework/clocinfoservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v65

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1596
    .restart local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    if-nez v65, :cond_1520

    .line 1597
    const-string v6, "SystemServer"

    const-string v7, "clocinfo is not existed"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d7
    .catch Ljava/lang/Throwable; {:try_start_9b6 .. :try_end_9d7} :catch_1533

    .line 1620
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :goto_9d7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9fb

    .line 1623
    :try_start_9e3
    const-string v6, "SystemServer"

    const-string v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v212, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v212

    invoke-direct {v0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_9f1
    .catch Ljava/lang/Throwable; {:try_start_9e3 .. :try_end_9f1} :catch_1587

    .line 1625
    .end local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v212, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :try_start_9f1
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v212

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9f9
    .catch Ljava/lang/Throwable; {:try_start_9f1 .. :try_end_9f9} :catch_198b

    move-object/from16 v211, v212

    .line 1633
    .end local v212    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :cond_9fb
    :goto_9fb
    :try_start_9fb
    const-string v6, "SystemServer"

    const-string v7, "Network Service Discovery Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v183

    .line 1635
    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v183

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a0e
    .catch Ljava/lang/Throwable; {:try_start_9fb .. :try_end_a0e} :catch_1594

    .line 1641
    :goto_a0e
    :try_start_a0e
    const-string v6, "SystemServer"

    const-string v7, "DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-static {v5}, startDpmService(Landroid/content/Context;)V
    :try_end_a18
    .catch Ljava/lang/Throwable; {:try_start_a0e .. :try_end_a18} :catch_15a1

    .line 1648
    :goto_a18
    if-nez v99, :cond_a2c

    .line 1650
    :try_start_a1a
    const-string v6, "SystemServer"

    const-string v7, "UpdateLock Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a2c
    .catch Ljava/lang/Throwable; {:try_start_a1a .. :try_end_a2c} :catch_15ae

    .line 1663
    :cond_a2c
    :goto_a2c
    if-eqz v152, :cond_a4a

    move-object/from16 v0, p0

    iget-boolean v6, v0, mOnlyCore:Z

    if-nez v6, :cond_a4a

    .line 1666
    :try_start_a34
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a4a

    .line 1667
    invoke-interface/range {v152 .. v152}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_a4a
    .catch Landroid/os/RemoteException; {:try_start_a34 .. :try_end_a4a} :catch_1988

    .line 1673
    :cond_a4a
    :goto_a4a
    if-eqz v42, :cond_a4f

    .line 1674
    :try_start_a4c
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_a4f
    .catch Ljava/lang/Throwable; {:try_start_a4c .. :try_end_a4f} :catch_15bb

    .line 1680
    :cond_a4f
    :goto_a4f
    if-eqz v78, :cond_a54

    .line 1681
    :try_start_a51
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_a54
    .catch Ljava/lang/Throwable; {:try_start_a51 .. :try_end_a54} :catch_15c8

    .line 1686
    :cond_a54
    :goto_a54
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1687
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v166

    .line 1689
    move-object/from16 v0, v166

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1693
    if-nez v96, :cond_aa7

    .line 1695
    :try_start_a78
    const-string v6, "SystemServer"

    const-string v7, "Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    new-instance v132, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a86
    .catch Ljava/lang/Throwable; {:try_start_a78 .. :try_end_a86} :catch_15d5

    .line 1697
    .end local v131    # "location":Lcom/android/server/LocationManagerService;
    .local v132, "location":Lcom/android/server/LocationManagerService;
    :try_start_a86
    const-string/jumbo v6, "location"

    move-object/from16 v0, v132

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a8e
    .catch Ljava/lang/Throwable; {:try_start_a86 .. :try_end_a8e} :catch_1983

    move-object/from16 v131, v132

    .line 1703
    .end local v132    # "location":Lcom/android/server/LocationManagerService;
    .restart local v131    # "location":Lcom/android/server/LocationManagerService;
    :goto_a90
    :try_start_a90
    const-string v6, "SystemServer"

    const-string v7, "Country Detector"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    new-instance v80, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_a9e
    .catch Ljava/lang/Throwable; {:try_start_a90 .. :try_end_a9e} :catch_15e2

    .line 1705
    .end local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v80, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_a9e
    const-string v6, "country_detector"

    move-object/from16 v0, v80

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_aa5
    .catch Ljava/lang/Throwable; {:try_start_a9e .. :try_end_aa5} :catch_197e

    move-object/from16 v79, v80

    .line 1712
    .end local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_aa7
    :goto_aa7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b0b

    .line 1714
    const/16 v64, 0x0

    .line 1715
    .local v64, "clazz":Ljava/lang/Class;
    :try_start_ab5
    const-string v6, "SystemServer"

    const-string v7, "Starting VZW Location Manager "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const-string v6, "com.samsung.vzwlbs"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v45

    .line 1717
    .local v45, "apkServiceContext":Landroid/content/Context;
    const-string v6, "SystemServer"

    const-string v7, "Loading VzwLocationManagerService from the APK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aca
    .catch Ljava/lang/Throwable; {:try_start_ab5 .. :try_end_aca} :catch_160c

    .line 1719
    :try_start_aca
    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v64

    .line 1720
    const-string v6, "SystemServer"

    const-string v7, "Loaded VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_adb
    .catch Ljava/lang/Exception; {:try_start_aca .. :try_end_adb} :catch_15ef
    .catch Ljava/lang/Throwable; {:try_start_aca .. :try_end_adb} :catch_160c

    .line 1725
    :goto_adb
    if-eqz v64, :cond_1618

    .line 1726
    const/4 v6, 0x1

    :try_start_ade
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1727
    .local v72, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/4 v6, 0x0

    aput-object v5, v48, v6

    .line 1728
    .local v48, "arglist":[Ljava/lang/Object;
    move-object/from16 v0, v72

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v120

    check-cast v120, Landroid/os/IBinder;

    .line 1729
    .local v120, "ib":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "Adding VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v6, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v120

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b0b
    .catch Ljava/lang/Throwable; {:try_start_ade .. :try_end_b0b} :catch_160c

    .line 1741
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v48    # "arglist":[Ljava/lang/Object;
    .end local v64    # "clazz":Ljava/lang/Class;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v120    # "ib":Landroid/os/IBinder;
    :cond_b0b
    :goto_b0b
    :try_start_b0b
    const-string v6, "SystemServer"

    const-string v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const-string v6, "com.samsung.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v174

    .line 1743
    .local v174, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v10

    move-object/from16 v0, v174

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v119

    .line 1744
    .local v119, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v119

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v173, v0

    .line 1745
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v173

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b43
    .catch Ljava/lang/Throwable; {:try_start_b0b .. :try_end_b43} :catch_1621

    .line 1752
    .end local v119    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v174    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b43
    const/16 v135, 0x0

    .line 1753
    .local v135, "mCPPInstance":Landroid/os/IBinder;
    const/16 v83, 0x0

    .line 1754
    .local v83, "cppClassLoader":Ldalvik/system/PathClassLoader;
    const/16 v60, 0x0

    .line 1756
    .local v60, "classCPPositioningService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_b49
    const-string v6, "SystemServer"

    const-string v7, "Starting CP Positioning Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance v84, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/cppservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v84

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_b5d
    .catch Ljava/lang/Throwable; {:try_start_b49 .. :try_end_b5d} :catch_197b

    .line 1758
    .end local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .local v84, "cppClassLoader":Ldalvik/system/PathClassLoader;
    if-nez v84, :cond_1640

    .line 1759
    :try_start_b5f
    const-string v6, "SystemServer"

    const-string v7, "cppservice is not existed"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b66
    .catch Ljava/lang/Throwable; {:try_start_b5f .. :try_end_b66} :catch_1653

    :goto_b66
    move-object/from16 v83, v84

    .line 1780
    .end local v84    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    :goto_b68
    if-eqz v135, :cond_b8b

    if-eqz v60, :cond_b8b

    .line 1782
    :try_start_b6c
    const-string v6, "SystemServer"

    const-string v7, "Samsung CP Location Manager Service SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v165, v0

    .line 1784
    .local v165, "noparams":[Ljava/lang/Class;
    const-string/jumbo v6, "systemReady"

    move-object/from16 v0, v60

    move-object/from16 v1, v165

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v136

    .line 1785
    .local v136, "mCPPSystemReady":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    move-object/from16 v0, v136

    move-object/from16 v1, v135

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8b
    .catch Ljava/lang/Throwable; {:try_start_b6c .. :try_end_b8b} :catch_1694

    .line 1795
    .end local v136    # "mCPPSystemReady":Ljava/lang/reflect/Method;
    .end local v165    # "noparams":[Ljava/lang/Class;
    :cond_b8b
    :goto_b8b
    if-nez v99, :cond_b9f

    .line 1797
    :try_start_b8d
    const-string v6, "SystemServer"

    const-string v7, "Search Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const-string/jumbo v6, "search"

    new-instance v7, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b9f
    .catch Ljava/lang/Throwable; {:try_start_b8d .. :try_end_b9f} :catch_16a0

    .line 1805
    :cond_b9f
    :goto_b9f
    if-nez v99, :cond_bb3

    .line 1807
    :try_start_ba1
    const-string v6, "SystemServer"

    const-string v7, "Execute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string/jumbo v6, "execute"

    new-instance v7, Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/execute/ExecuteManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bb3
    .catch Ljava/lang/Throwable; {:try_start_ba1 .. :try_end_bb3} :catch_16ad

    .line 1816
    :cond_bb3
    :goto_bb3
    :try_start_bb3
    const-string v6, "SystemServer"

    const-string v7, "DropBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string/jumbo v6, "dropbox"

    new-instance v7, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bcc
    .catch Ljava/lang/Throwable; {:try_start_bb3 .. :try_end_bcc} :catch_16ba

    .line 1823
    :goto_bcc
    if-nez v99, :cond_bf3

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_bf3

    .line 1826
    :try_start_bdb
    const-string v6, "SystemServer"

    const-string v7, "Wallpaper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    new-instance v206, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v206

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_be9
    .catch Ljava/lang/Throwable; {:try_start_bdb .. :try_end_be9} :catch_16c7

    .line 1828
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v206, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_be9
    const-string/jumbo v6, "wallpaper"

    move-object/from16 v0, v206

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bf1
    .catch Ljava/lang/Throwable; {:try_start_be9 .. :try_end_bf1} :catch_1976

    move-object/from16 v205, v206

    .line 1835
    .end local v206    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_bf3
    :goto_bf3
    :try_start_bf3
    const-string v6, "SystemServer"

    const-string v7, "Audio Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    new-instance v52, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_c01
    .catch Ljava/lang/Throwable; {:try_start_bf3 .. :try_end_c01} :catch_16d4

    .line 1837
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .local v52, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_c01
    const-string v6, "audio"

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c08
    .catch Ljava/lang/Throwable; {:try_start_c01 .. :try_end_c08} :catch_1971

    move-object/from16 v51, v52

    .line 1842
    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_c0a
    if-nez v99, :cond_c15

    .line 1843
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1847
    :cond_c15
    :try_start_c15
    const-string v6, "SystemServer"

    const-string v7, "Wired Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v125

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v125

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_c28
    .catch Ljava/lang/Throwable; {:try_start_c15 .. :try_end_c28} :catch_16e1

    .line 1855
    :goto_c28
    if-nez v99, :cond_c78

    .line 1856
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c3f

    .line 1858
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1861
    :cond_c3f
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c57

    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c60

    .line 1865
    :cond_c57
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1869
    :cond_c60
    :try_start_c60
    const-string v6, "SystemServer"

    const-string v7, "Serial Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    new-instance v182, Lcom/android/server/SerialService;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_c6e
    .catch Ljava/lang/Throwable; {:try_start_c60 .. :try_end_c6e} :catch_16ee

    .line 1872
    .end local v181    # "serial":Lcom/android/server/SerialService;
    .local v182, "serial":Lcom/android/server/SerialService;
    :try_start_c6e
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v182

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c76
    .catch Ljava/lang/Throwable; {:try_start_c6e .. :try_end_c76} :catch_196c

    move-object/from16 v181, v182

    .line 1882
    .end local v182    # "serial":Lcom/android/server/SerialService;
    .restart local v181    # "serial":Lcom/android/server/SerialService;
    :cond_c78
    :goto_c78
    :try_start_c78
    const-string v6, "SystemServer"

    const-string v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string/jumbo v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c8a
    .catch Ljava/lang/Throwable; {:try_start_c78 .. :try_end_c8a} :catch_16fa

    .line 1890
    :goto_c8a
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1892
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1894
    if-nez v99, :cond_cf7

    .line 1895
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cb3

    .line 1896
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1899
    :cond_cb3
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cc8

    .line 1900
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1903
    :cond_cc8
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cdd

    .line 1904
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1907
    :cond_cdd
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_cf7

    .line 1908
    const-string v6, "SystemServer"

    const-string v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1913
    :cond_cf7
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1914
    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const-string/jumbo v6, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d3c

    .line 1918
    :try_start_d23
    const-string v6, "SystemServer"

    const-string v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/16 v105, 0x0

    .line 1920
    .local v105, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v105

    .line 1921
    if-nez v105, :cond_1706

    .line 1922
    const-string v6, "SystemServer"

    const-string/jumbo v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3c
    .catch Ljava/lang/Throwable; {:try_start_d23 .. :try_end_d3c} :catch_1735

    .line 1938
    .end local v105    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d3c
    :goto_d3c
    :try_start_d3c
    const-string v6, "SystemServer"

    const-string v7, "DiskStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d4e
    .catch Ljava/lang/Throwable; {:try_start_d3c .. :try_end_d4e} :catch_1741

    .line 1947
    :goto_d4e
    :try_start_d4e
    const-string v6, "SystemServer"

    const-string v7, "UCM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    new-instance v86, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d5c
    .catch Ljava/lang/Throwable; {:try_start_d4e .. :try_end_d5c} :catch_174e

    .line 1949
    .end local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .local v86, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :try_start_d5c
    const-string v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, v86

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d63
    .catch Ljava/lang/Throwable; {:try_start_d5c .. :try_end_d63} :catch_1967

    move-object/from16 v85, v86

    .line 1957
    .end local v86    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :goto_d65
    :try_start_d65
    const-string v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/16 v144, 0x0

    .line 1959
    .local v144, "mdnieClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v144

    .line 1960
    if-nez v144, :cond_175b

    .line 1961
    const-string v6, "SystemServer"

    const-string v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7e
    .catch Ljava/lang/Throwable; {:try_start_d65 .. :try_end_d7e} :catch_1781

    .line 1973
    .end local v144    # "mdnieClass":Ljava/lang/Class;
    :goto_d7e
    :try_start_d7e
    const-string v6, "SystemServer"

    const-string v7, "AAS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/16 v40, 0x0

    .line 1975
    .local v40, "aasClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.allaroundsensing.AASManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    .line 1976
    if-nez v40, :cond_178d

    .line 1977
    const-string v6, "SystemServer"

    const-string v7, "AAS Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d96
    .catch Ljava/lang/Throwable; {:try_start_d7e .. :try_end_d96} :catch_17b2

    .line 1989
    .end local v40    # "aasClass":Ljava/lang/Class;
    :goto_d96
    :try_start_d96
    const-string v6, "SystemServer"

    const-string v7, "MSCS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/16 v157, 0x0

    .line 1991
    .local v157, "mscsClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mscs.MSCSManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v157

    .line 1992
    if-nez v157, :cond_17be

    .line 1993
    const-string v6, "SystemServer"

    const-string v7, "MSCS Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dae
    .catch Ljava/lang/Throwable; {:try_start_d96 .. :try_end_dae} :catch_17e3

    .line 2007
    .end local v157    # "mscsClass":Ljava/lang/Class;
    :goto_dae
    :try_start_dae
    const-string v6, "SystemServer"

    const-string v7, "Starting SpenGestureManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v213

    invoke-direct {v7, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_dc2
    .catch Ljava/lang/Throwable; {:try_start_dae .. :try_end_dc2} :catch_17ef

    .line 2017
    :goto_dc2
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2035
    :try_start_dcb
    const-string v6, "SystemServer"

    const-string v7, "SamplingProfiler Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const-string/jumbo v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ddd
    .catch Ljava/lang/Throwable; {:try_start_dcb .. :try_end_ddd} :catch_17fc

    .line 2042
    :goto_ddd
    if-nez v97, :cond_df1

    if-nez v98, :cond_df1

    .line 2044
    :try_start_de1
    const-string v6, "SystemServer"

    const-string v7, "NetworkTimeUpdateService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    new-instance v164, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_def
    .catch Ljava/lang/Throwable; {:try_start_de1 .. :try_end_def} :catch_1809

    .end local v163    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v164, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v163, v164

    .line 2060
    .end local v164    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v163    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_df1
    :goto_df1
    :try_start_df1
    const-string v6, "SystemServer"

    const-string v7, "CommonTimeManagementService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    new-instance v67, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_dff
    .catch Ljava/lang/Throwable; {:try_start_df1 .. :try_end_dff} :catch_1816

    .line 2062
    .end local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v67, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_dff
    const-string v6, "commontime_management"

    move-object/from16 v0, v67

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e06
    .catch Ljava/lang/Throwable; {:try_start_dff .. :try_end_e06} :catch_1962

    move-object/from16 v66, v67

    .line 2067
    .end local v67    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_e08
    if-nez v97, :cond_e16

    .line 2069
    :try_start_e0a
    const-string v6, "SystemServer"

    const-string v7, "CertBlacklister"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    new-instance v6, Lcom/android/server/CertBlacklister;

    invoke-direct {v6, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_e16
    .catch Ljava/lang/Throwable; {:try_start_e0a .. :try_end_e16} :catch_1823

    .line 2076
    :cond_e16
    :goto_e16
    if-nez v99, :cond_e21

    .line 2078
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2081
    :cond_e21
    if-nez v99, :cond_e3c

    if-nez v94, :cond_e3c

    .line 2083
    :try_start_e25
    const-string v6, "SystemServer"

    const-string v7, "Assets Atlas Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    new-instance v50, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_e33
    .catch Ljava/lang/Throwable; {:try_start_e25 .. :try_end_e33} :catch_1830

    .line 2085
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v50, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_e33
    const-string v6, "assetatlas"

    move-object/from16 v0, v50

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e3a
    .catch Ljava/lang/Throwable; {:try_start_e33 .. :try_end_e3a} :catch_195d

    move-object/from16 v49, v50

    .line 2091
    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_e3c
    :goto_e3c
    if-nez v99, :cond_e49

    .line 2092
    const-string/jumbo v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2096
    :cond_e49
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e5e

    .line 2097
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2100
    :cond_e5e
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2102
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2104
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e85

    .line 2105
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2108
    :cond_e85
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e9a

    .line 2109
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2112
    :cond_e9a
    if-nez v99, :cond_ed2

    .line 2114
    :try_start_e9c
    const-string v6, "SystemServer"

    const-string v7, "Media Router Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    new-instance v147, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_eaa
    .catch Ljava/lang/Throwable; {:try_start_e9c .. :try_end_eaa} :catch_183d

    .line 2116
    .end local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v147, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_eaa
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v147

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_eb2
    .catch Ljava/lang/Throwable; {:try_start_eaa .. :try_end_eb2} :catch_1958

    move-object/from16 v146, v147

    .line 2121
    .end local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_eb4
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2123
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2126
    :try_start_ec6
    const-string v6, "SystemServer"

    const-string v7, "BackgroundDexOptService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_ed2
    .catch Ljava/lang/Throwable; {:try_start_ec6 .. :try_end_ed2} :catch_184a

    .line 2136
    :cond_ed2
    :goto_ed2
    :try_start_ed2
    const-string v6, "SystemServer"

    const-string v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 2138
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_ee0
    .catch Ljava/lang/Throwable; {:try_start_ed2 .. :try_end_ee0} :catch_1857

    .line 2144
    :goto_ee0
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2173
    const-string/jumbo v6, "ro.bluetooth.wipower"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v129

    .line 2175
    .local v129, "isWipowerEnabled":Z
    if-eqz v129, :cond_1871

    .line 2177
    :try_start_ef3
    const-string/jumbo v39, "wbc_service"

    .line 2178
    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v6, "SystemServer"

    const-string v7, "WipowerBatteryControl Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    new-instance v209, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v209

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2183
    .local v209, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v209

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v208

    .line 2184
    .local v208, "wbcClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v208

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v88

    .line 2185
    .local v88, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v88

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v210

    .line 2186
    .local v210, "wbcObject":Ljava/lang/Object;
    const-string v6, "SystemServer"

    const-string v7, "Successfully loaded WbcService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const-string/jumbo v6, "wbc_service"

    check-cast v210, Landroid/os/IBinder;

    .end local v210    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v210

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f3d
    .catch Ljava/lang/Throwable; {:try_start_ef3 .. :try_end_f3d} :catch_1864

    .line 2198
    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v88    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v208    # "wbcClass":Ljava/lang/Class;
    .end local v209    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_f3d
    :try_start_f3d
    const-string v6, "SystemServer"

    const-string v7, "MiniModeAppManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v127

    .line 2201
    .local v127, "instructionSet":Ljava/lang/String;
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v6, "/system/framework/minimode.jar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/dalvik-cache/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v127

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v6, v7, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2203
    .restart local v58    # "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 2204
    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .line 2205
    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "mini_mode_app_manager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fa0
    .catch Ljava/lang/Throwable; {:try_start_f3d .. :try_end_fa0} :catch_187a

    .line 2214
    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v127    # "instructionSet":Ljava/lang/String;
    :goto_fa0
    :try_start_fa0
    const-string v6, "SystemServer"

    const-string v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fb2
    .catch Ljava/lang/Throwable; {:try_start_fa0 .. :try_end_fb2} :catch_1886

    .line 2222
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v60    # "classCPPositioningService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .end local v129    # "isWipowerEnabled":Z
    .end local v135    # "mCPPInstance":Landroid/os/IBinder;
    :goto_fb2
    if-nez v99, :cond_fbd

    .line 2223
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2227
    :cond_fbd
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v6

    if-eqz v6, :cond_fd1

    .line 2229
    :try_start_fc3
    new-instance v46, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 2230
    .local v46, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v6, "SamsungAppDisabler"

    move-object/from16 v0, v46

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fd1
    .catch Ljava/lang/Throwable; {:try_start_fc3 .. :try_end_fd1} :catch_1890

    .line 2239
    .end local v46    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_fd1
    :goto_fd1
    :try_start_fd1
    const-string v6, "SystemServer"

    const-string v7, "Lpnet Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string/jumbo v6, "lpnet"

    new-instance v7, Lcom/android/server/LpnetManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fe3
    .catch Ljava/lang/Throwable; {:try_start_fd1 .. :try_end_fe3} :catch_189c

    .line 2249
    :goto_fe3
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v175

    .line 2250
    .local v175, "safeMode":Z
    move/from16 v0, v175

    move-object/from16 v1, p0

    iput-boolean v0, v1, safeModeValueForTheme:Z

    .line 2251
    if-eqz v175, :cond_18a8

    .line 2252
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2253
    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2255
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 2262
    :goto_1005
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v149

    .end local v149    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v149, Lcom/android/server/MmsServiceBroker;

    .line 2267
    .restart local v149    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_1011
    const-string/jumbo v6, "injection"

    new-instance v7, Lcom/android/server/im/InjectionManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/im/InjectionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_101c
    .catch Ljava/lang/Throwable; {:try_start_1011 .. :try_end_101c} :catch_18b1

    .line 2277
    :goto_101c
    :try_start_101c
    const-string v6, "SystemServer"

    const-string v7, "Mobile Payment Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const-string/jumbo v6, "mobile_payment"

    new-instance v7, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_102e
    .catch Ljava/lang/Throwable; {:try_start_101c .. :try_end_102e} :catch_18be

    .line 2288
    :goto_102e
    :try_start_102e
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    new-instance v116, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/gamemanager.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v116

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2290
    .local v116, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v116

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v115

    .line 2291
    .local v115, "gamemanagerClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v115

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v117

    .line 2292
    .local v117, "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v117

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/os/IBinder;

    .line 2293
    .local v118, "gamemanagerService":Landroid/os/IBinder;
    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v118

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2294
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1075
    .catch Ljava/lang/Throwable; {:try_start_102e .. :try_end_1075} :catch_18ca

    .line 2304
    .end local v115    # "gamemanagerClass":Ljava/lang/Class;
    .end local v116    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .end local v117    # "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    .end local v118    # "gamemanagerService":Landroid/os/IBinder;
    :goto_1075
    :try_start_1075
    invoke-virtual/range {v200 .. v200}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_1078
    .catch Ljava/lang/Throwable; {:try_start_1075 .. :try_end_1078} :catch_18d6

    .line 2309
    :goto_1078
    if-eqz v133, :cond_107d

    .line 2311
    :try_start_107a
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_107d
    .catch Ljava/lang/Throwable; {:try_start_107a .. :try_end_107d} :catch_18e3

    .line 2318
    :cond_107d
    :goto_107d
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2320
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2323
    if-eqz v108, :cond_109c

    .line 2324
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 2325
    const-string v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_109c
    :try_start_109c
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_109f
    .catch Ljava/lang/Throwable; {:try_start_109c .. :try_end_109f} :catch_18f0

    .line 2335
    :goto_109f
    if-eqz v175, :cond_10a8

    .line 2336
    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2342
    :cond_10a8
    invoke-virtual/range {v213 .. v213}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v68

    .line 2343
    .local v68, "config":Landroid/content/res/Configuration;
    new-instance v148, Landroid/util/DisplayMetrics;

    invoke-direct/range {v148 .. v148}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2344
    .local v148, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v204

    check-cast v204, Landroid/view/WindowManager;

    .line 2345
    .local v204, "w":Landroid/view/WindowManager;
    invoke-interface/range {v204 .. v204}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v148

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2346
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v68

    move-object/from16 v1, v148

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2350
    :try_start_10ce
    move-object/from16 v0, p0

    iget-object v6, v0, mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_10dd
    .catch Ljava/lang/Throwable; {:try_start_10ce .. :try_end_10dd} :catch_18fd

    .line 2356
    :goto_10dd
    :try_start_10dd
    move-object/from16 v0, p0

    iget-object v6, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_10e4
    .catch Ljava/lang/Throwable; {:try_start_10dd .. :try_end_10e4} :catch_190a

    .line 2363
    :goto_10e4
    :try_start_10e4
    move-object/from16 v0, p0

    iget-object v6, v0, mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, mOnlyCore:Z

    move/from16 v0, v175

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_10f1
    .catch Ljava/lang/Throwable; {:try_start_10e4 .. :try_end_10f1} :catch_1917

    .line 2370
    :goto_10f1
    :try_start_10f1
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_10f4
    .catch Ljava/lang/Throwable; {:try_start_10f1 .. :try_end_10f4} :catch_1924

    .line 2376
    :goto_10f4
    :try_start_10f4
    invoke-virtual/range {v177 .. v177}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_10f7
    .catch Ljava/lang/Throwable; {:try_start_10f4 .. :try_end_10f7} :catch_1931

    .line 2384
    :goto_10f7
    :try_start_10f7
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/DLPManagerService;->systemReady()V
    :try_end_10fa
    .catch Ljava/lang/Throwable; {:try_start_10f7 .. :try_end_10fa} :catch_193e

    .line 2391
    :goto_10fa
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v199

    .line 2392
    .restart local v199    # "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v199

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1112

    .line 2394
    :try_start_110f
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_1112
    .catch Ljava/lang/Throwable; {:try_start_110f .. :try_end_1112} :catch_194b

    .line 2402
    :cond_1112
    :goto_1112
    if-eqz v175, :cond_112a

    .line 2403
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/epm/PluginManager;->getInstance(Landroid/content/Context;)Landroid/app/epm/PluginManager;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, mPluginManager:Landroid/app/epm/PluginManager;

    .line 2404
    move-object/from16 v0, p0

    iget-object v6, v0, mPluginManager:Landroid/app/epm/PluginManager;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v10, v11}, Landroid/app/epm/PluginManager;->changeThemeState(Ljava/lang/String;IZ)Z

    .line 2409
    :cond_112a
    move-object v14, v9

    .line 2410
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 2411
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 2412
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v69

    .line 2413
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v160

    .line 2414
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v205

    .line 2415
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v123

    .line 2416
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v131

    .line 2417
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v173

    .line 2418
    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v79

    .line 2419
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v163

    .line 2420
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v66

    .line 2421
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v196

    .line 2422
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v185

    .line 2424
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v202

    .line 2426
    .local v28, "vrManagerF":Lcom/android/server/VRManagerService;
    move-object/from16 v29, v49

    .line 2427
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v125

    .line 2428
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v187

    .line 2429
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v146

    .line 2430
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v51

    .line 2431
    .local v18, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v150, v149

    .line 2433
    .local v150, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v81

    .line 2437
    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v171

    .line 2445
    .local v34, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v34}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2630
    return-void

    .line 746
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Lcom/android/server/VRManagerService;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v68    # "config":Landroid/content/res/Configuration;
    .end local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v131    # "location":Lcom/android/server/LocationManagerService;
    .end local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v148    # "metrics":Landroid/util/DisplayMetrics;
    .end local v150    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v166    # "notification":Landroid/app/INotificationManager;
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v173    # "sLocation":Landroid/os/IBinder;
    .end local v175    # "safeMode":Z
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v202    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v204    # "w":Landroid/view/WindowManager;
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_1166
    move-exception v104

    .line 747
    .local v104, "e":Ljava/lang/Throwable;
    :try_start_1167
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1170
    .catch Ljava/lang/RuntimeException; {:try_start_1167 .. :try_end_1170} :catch_1172

    goto/16 :goto_ff

    .line 1127
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v199    # "versionInfo":Landroid/os/Bundle;
    :catch_1172
    move-exception v104

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v187, v188

    .line 1128
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "e":Ljava/lang/RuntimeException;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_1177
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52b

    .line 758
    .end local v104    # "e":Ljava/lang/RuntimeException;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v199    # "versionInfo":Landroid/os/Bundle;
    :catch_1189
    move-exception v104

    .line 759
    .local v104, "e":Ljava/lang/Throwable;
    :try_start_118a
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_110

    .line 775
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1195
    move-exception v104

    .line 776
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1196
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13f

    .line 786
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v141    # "mProductName":Ljava/lang/String;
    :catch_11a1
    move-exception v104

    .line 787
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting KT UCA Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11ab
    .catch Ljava/lang/RuntimeException; {:try_start_118a .. :try_end_11ab} :catch_1172

    goto/16 :goto_169

    .line 793
    .end local v104    # "e":Ljava/lang/Throwable;
    :cond_11ad
    const/4 v6, 0x0

    goto/16 :goto_178

    .line 803
    .end local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v90    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_11b0
    move-exception v104

    .line 804
    .restart local v104    # "e":Ljava/lang/Throwable;
    :try_start_11b1
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11ba
    .catch Ljava/lang/RuntimeException; {:try_start_11b1 .. :try_end_11ba} :catch_19f2

    .line 805
    const/16 v89, 0x0

    .end local v90    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_190

    .line 817
    .end local v91    # "dLSManager":Lcom/android/server/LSManager;
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v92    # "dLSManager":Lcom/android/server/LSManager;
    :catch_11be
    move-exception v104

    .line 818
    .restart local v104    # "e":Ljava/lang/Throwable;
    :try_start_11bf
    const-string v6, "SystemServer"

    const-string v7, "Failure starting LSManager"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11c8
    .catch Ljava/lang/RuntimeException; {:try_start_11bf .. :try_end_11c8} :catch_19fb

    .line 819
    const/16 v91, 0x0

    .end local v92    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v91    # "dLSManager":Lcom/android/server/LSManager;
    goto/16 :goto_1a7

    .line 828
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_11cc
    move-exception v104

    .line 829
    .restart local v104    # "e":Ljava/lang/Throwable;
    :try_start_11cd
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SecurityManager Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b1

    .line 837
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_11d6
    move-exception v104

    .line 839
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 847
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_11e0
    move-exception v104

    .line 849
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1d3

    .line 858
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_11ed
    move-exception v104

    .line 860
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1e4

    .line 869
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_11fa
    move-exception v104

    .line 871
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f5

    .line 880
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1204
    move-exception v104

    .line 881
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120c
    .catch Ljava/lang/RuntimeException; {:try_start_11cd .. :try_end_120c} :catch_1172

    goto/16 :goto_215

    .line 912
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v189    # "timaEnabled":Z
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_120e
    move-exception v104

    .line 913
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_120f
    :try_start_120f
    const-string/jumbo v6, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_272

    .line 1127
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v189    # "timaEnabled":Z
    :catch_121b
    move-exception v104

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1177

    .line 923
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v189    # "timaEnabled":Z
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1224
    move-exception v104

    .line 924
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_122f
    .catch Ljava/lang/RuntimeException; {:try_start_120f .. :try_end_122f} :catch_121b

    goto/16 :goto_287

    .line 950
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v121    # "icccService":Lcom/android/server/IcccManagerService;
    .restart local v122    # "iccc_result":I
    .restart local v194    # "timaversion":Z
    :cond_1231
    :try_start_1231
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x1

    move-object/from16 v0, v121

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->Iccc_SaveData_Platform(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1254
    .catch Ljava/lang/Exception; {:try_start_1231 .. :try_end_1254} :catch_1256
    .catch Ljava/lang/RuntimeException; {:try_start_1231 .. :try_end_1254} :catch_121b

    goto/16 :goto_2f4

    .line 953
    .end local v122    # "iccc_result":I
    :catch_1256
    move-exception v104

    .line 955
    .local v104, "e":Ljava/lang/Exception;
    :try_start_1257
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1263
    .catch Ljava/lang/Exception; {:try_start_1257 .. :try_end_1263} :catch_1265
    .catch Ljava/lang/RuntimeException; {:try_start_1257 .. :try_end_1263} :catch_121b

    goto/16 :goto_2f4

    .line 972
    .end local v104    # "e":Ljava/lang/Exception;
    .end local v121    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v194    # "timaversion":Z
    :catch_1265
    move-exception v104

    .line 973
    .restart local v104    # "e":Ljava/lang/Exception;
    :try_start_1266
    const-string v6, "SystemServer"

    const-string v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_326

    .line 987
    .end local v104    # "e":Ljava/lang/Exception;
    .restart local v106    # "enabledCEP":Z
    .restart local v107    # "enabledMDM":Z
    :catch_1272
    move-exception v104

    .line 988
    .local v104, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_345

    .line 991
    .end local v104    # "e":Ljava/lang/Throwable;
    :cond_127e
    const-string v6, "SystemServer"

    const-string v7, "MDM is enabled, but CEP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_345

    .line 997
    .end local v106    # "enabledCEP":Z
    :catch_1287
    move-exception v104

    .line 998
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_357

    .line 1009
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1293
    move-exception v104

    .line 1010
    .local v104, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_129f
    .catch Ljava/lang/RuntimeException; {:try_start_1266 .. :try_end_129f} :catch_121b

    goto/16 :goto_3a2

    .line 1043
    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "e":Ljava/lang/Exception;
    .end local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v207    # "watchdog":Lcom/android/server/Watchdog;
    :catch_12a1
    move-exception v104

    .line 1044
    .restart local v104    # "e":Ljava/lang/Exception;
    :try_start_12a2
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SContextService"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_466

    .line 1127
    .end local v104    # "e":Ljava/lang/Exception;
    :catch_12ad
    move-exception v104

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v76, v77

    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v125, v126

    .end local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1177

    .line 1054
    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_12ba
    move-exception v104

    .line 1055
    .local v104, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_487

    .line 1070
    .end local v104    # "e":Ljava/lang/Throwable;
    :cond_12c6
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_4a7

    :cond_12ca
    const/4 v6, 0x0

    goto/16 :goto_4ae

    .line 1096
    :cond_12cd
    move-object/from16 v0, p0

    iget v6, v0, mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12dd

    .line 1097
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 1098
    :cond_12dd
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12f2

    .line 1100
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 1101
    :cond_12f2
    if-eqz v95, :cond_12fd

    .line 1102
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_501

    .line 1104
    :cond_12fd
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v6, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1108
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v6, "bluetooth_secure_mode_manager"

    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_501

    .line 1119
    :catch_1320
    move-exception v104

    .line 1120
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1321
    const-string v6, "SystemServer"

    const-string v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132a
    .catch Ljava/lang/RuntimeException; {:try_start_12a2 .. :try_end_132a} :catch_12ad

    goto/16 :goto_519

    .line 1161
    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v107    # "enabledMDM":Z
    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v141    # "mProductName":Ljava/lang/String;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v189    # "timaEnabled":Z
    .end local v199    # "versionInfo":Landroid/os/Bundle;
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .end local v207    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v131    # "location":Lcom/android/server/LocationManagerService;
    .restart local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v166    # "notification":Landroid/app/INotificationManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v173    # "sLocation":Landroid/os/IBinder;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v202    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_132c
    move-exception v104

    .line 1162
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_132d
    const-string/jumbo v6, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_568

    .line 1169
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1339
    move-exception v104

    .line 1170
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_579

    .line 1176
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1346
    move-exception v104

    .line 1177
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57c

    .line 1194
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1353
    move-exception v104

    .line 1195
    .local v104, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e5

    .line 1207
    .end local v104    # "e":Ljava/lang/Exception;
    .restart local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    :cond_135f
    if-nez v99, :cond_612

    .line 1208
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v168

    .line 1209
    .local v168, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v168

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1379

    const-string v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v168

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_612

    .line 1212
    :cond_1379
    :try_start_1379
    const-string v6, "SystemServer"

    const-string v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    new-instance v82, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v213

    move-object/from16 v2, v125

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_138b
    .catch Ljava/lang/Throwable; {:try_start_1379 .. :try_end_138b} :catch_1396

    .line 1214
    .end local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v82, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_138b
    const-string v6, "cover"

    move-object/from16 v0, v82

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1392
    .catch Ljava/lang/Throwable; {:try_start_138b .. :try_end_1392} :catch_19d7

    move-object/from16 v81, v82

    .line 1217
    .end local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_612

    .line 1215
    :catch_1396
    move-exception v104

    .line 1216
    .local v104, "e":Ljava/lang/Throwable;
    :goto_1397
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_612

    .line 1236
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v168    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_13a2
    move-exception v104

    .line 1237
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_13a3
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_643

    .line 1257
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13af
    move-exception v104

    .line 1258
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_663

    .line 1273
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13bb
    move-exception v104

    .line 1274
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68f

    .line 1284
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13c8
    move-exception v104

    .line 1285
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a2

    .line 1295
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13d5
    move-exception v104

    .line 1296
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_13d6
    const-string/jumbo v6, "starting VR Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6ba

    .line 1309
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13e2
    move-exception v104

    .line 1310
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting LSManager service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6cd

    .line 1323
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13ef
    move-exception v104

    .line 1324
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6dd

    .line 1341
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13fc
    move-exception v104

    .line 1342
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_13fd
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_711

    .line 1362
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1409
    move-exception v104

    .line 1363
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_140a
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_75a

    .line 1372
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1415
    move-exception v104

    .line 1373
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1416
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_772

    .line 1379
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1422
    move-exception v104

    .line 1380
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1423
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_78a

    .line 1390
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_142e
    move-exception v104

    .line 1391
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_142f
    const-string/jumbo v6, "unable to start DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a2

    .line 1402
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_143b
    move-exception v104

    .line 1403
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_143c
    const-string v6, "SystemServer"

    const-string v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7c8

    .line 1413
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1447
    move-exception v104

    .line 1414
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1448
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7e4

    .line 1423
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1454
    move-exception v104

    .line 1424
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f7

    .line 1434
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1461
    move-exception v104

    .line 1435
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_80a

    .line 1445
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_146e
    move-exception v104

    .line 1446
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_81d

    .line 1458
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_147b
    move-exception v104

    .line 1459
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Absolute Persistence Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_835

    .line 1469
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1488
    move-exception v104

    .line 1470
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1489
    const-string/jumbo v6, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_84f

    .line 1479
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1495
    move-exception v104

    .line 1480
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1496
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_869

    .line 1487
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_14a2
    move-exception v104

    .line 1488
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_14a3
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_883

    .line 1498
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_14af
    move-exception v104

    move-object/from16 v4, v159

    .line 1499
    .end local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_14b2
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8a2

    .line 1526
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_14be
    move-exception v104

    .line 1527
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_14bf
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8f0

    .line 1543
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_14cb
    move-exception v104

    .line 1544
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_947

    .line 1559
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_14d8
    move-exception v104

    .line 1560
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_992

    .line 1573
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v112    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14e5
    :try_start_14e5
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1575
    .local v47, "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1577
    move-object/from16 v0, v112

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1578
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "epdg"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1512
    .catch Ljava/lang/Throwable; {:try_start_14e5 .. :try_end_1512} :catch_1514

    goto/16 :goto_9b6

    .line 1580
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v112    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1514
    move-exception v104

    .line 1581
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Epdg Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9b6

    .line 1599
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :cond_1520
    :try_start_1520
    const-string v6, "com.samsung.clocinfo.CLocInfoService"

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v59

    .line 1601
    if-nez v59, :cond_1559

    .line 1602
    const-string v6, "SystemServer"

    const-string v7, "CLINFO Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1531
    .catch Ljava/lang/Throwable; {:try_start_1520 .. :try_end_1531} :catch_1533

    goto/16 :goto_9d7

    .line 1613
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :catch_1533
    move-exception v104

    .line 1614
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start CLINFO Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1615
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed To Start CLINFO Service"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d7

    .line 1604
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :cond_1559
    :try_start_1559
    const-string v6, "SystemServer"

    const-string v7, "CLINFO Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1606
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1608
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1609
    .local v71, "constCLInfoService":Ljava/lang/reflect/Constructor;
    const-string v7, "clinfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1585
    .catch Ljava/lang/Throwable; {:try_start_1559 .. :try_end_1585} :catch_1533

    goto/16 :goto_9d7

    .line 1626
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    .end local v71    # "constCLInfoService":Ljava/lang/reflect/Constructor;
    :catch_1587
    move-exception v104

    .line 1627
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1588
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9fb

    .line 1637
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1594
    move-exception v104

    .line 1638
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a0e

    .line 1643
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_15a1
    move-exception v104

    .line 1644
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a18

    .line 1653
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_15ae
    move-exception v104

    .line 1654
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a2c

    .line 1675
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_15bb
    move-exception v104

    .line 1676
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a4f

    .line 1682
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_15c8
    move-exception v104

    .line 1683
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a54

    .line 1698
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_15d5
    move-exception v104

    .line 1699
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_15d6
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a90

    .line 1706
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_15e2
    move-exception v104

    .line 1707
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_15e3
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aa7

    .line 1721
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    .restart local v64    # "clazz":Ljava/lang/Class;
    :catch_15ef
    move-exception v104

    .line 1722
    .local v104, "e":Ljava/lang/Exception;
    :try_start_15f0
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while loading the class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v104

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160a
    .catch Ljava/lang/Throwable; {:try_start_15f0 .. :try_end_160a} :catch_160c

    goto/16 :goto_adb

    .line 1734
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v104    # "e":Ljava/lang/Exception;
    :catch_160c
    move-exception v104

    .line 1735
    .local v104, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b0b

    .line 1732
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    :cond_1618
    :try_start_1618
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161f
    .catch Ljava/lang/Throwable; {:try_start_1618 .. :try_end_161f} :catch_160c

    goto/16 :goto_b0b

    .line 1746
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v64    # "clazz":Ljava/lang/Class;
    :catch_1621
    move-exception v104

    .line 1747
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v104 .. v104}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b43

    .line 1761
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v60    # "classCPPositioningService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v84    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v135    # "mCPPInstance":Landroid/os/IBinder;
    :cond_1640
    :try_start_1640
    const-string v6, "com.samsung.cpp.CPPositioningService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v60

    .line 1763
    if-nez v60, :cond_1661

    .line 1764
    const-string v6, "SystemServer"

    const-string v7, "cppservice does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1651
    .catch Ljava/lang/Throwable; {:try_start_1640 .. :try_end_1651} :catch_1653

    goto/16 :goto_b66

    .line 1776
    :catch_1653
    move-exception v104

    move-object/from16 v83, v84

    .line 1777
    .end local v84    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1656
    const-string v6, "Failed To Start samsung CP Location Manager "

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b68

    .line 1766
    .end local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v84    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    :cond_1661
    :try_start_1661
    const-string v6, "SystemServer"

    const-string v7, "cppservice exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1768
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1770
    move-object/from16 v0, v60

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v137

    .line 1771
    .local v137, "mCPPositioningService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v137

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v135, v0

    .line 1772
    const-string v6, "cpp_service"

    move-object/from16 v0, v135

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1692
    .catch Ljava/lang/Throwable; {:try_start_1661 .. :try_end_1692} :catch_1653

    goto/16 :goto_b66

    .line 1787
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v84    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .end local v137    # "mCPPositioningService":Ljava/lang/reflect/Constructor;
    .restart local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    :catch_1694
    move-exception v104

    .line 1788
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Invoking Samsung CP Location Manager System ready Failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b8b

    .line 1800
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16a0
    move-exception v104

    .line 1801
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b9f

    .line 1810
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16ad
    move-exception v104

    .line 1811
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bb3

    .line 1819
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16ba
    move-exception v104

    .line 1820
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bcc

    .line 1829
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16c7
    move-exception v104

    .line 1830
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_16c8
    const-string/jumbo v6, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bf3

    .line 1838
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16d4
    move-exception v104

    .line 1839
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_16d5
    const-string/jumbo v6, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c0a

    .line 1851
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16e1
    move-exception v104

    .line 1852
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c28

    .line 1873
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16ee
    move-exception v104

    .line 1874
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_16ef
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SerialService"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c78

    .line 1884
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_16fa
    move-exception v104

    .line 1885
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c8a

    .line 1926
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v105    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1706
    :try_start_1706
    const-string v6, "SystemServer"

    const-string/jumbo v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1928
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1929
    move-object/from16 v0, v105

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1930
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const-string v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1733
    .catch Ljava/lang/Throwable; {:try_start_1706 .. :try_end_1733} :catch_1735

    goto/16 :goto_d3c

    .line 1932
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v105    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1735
    move-exception v104

    .line 1933
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting eds Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d3c

    .line 1940
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1741
    move-exception v104

    .line 1941
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d4e

    .line 1950
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_174e
    move-exception v104

    .line 1951
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_174f
    const-string/jumbo v6, "starting UCMService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d65

    .line 1963
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v144    # "mdnieClass":Ljava/lang/Class;
    :cond_175b
    const/4 v6, 0x1

    :try_start_175c
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v144

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1964
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v145

    check-cast v145, Landroid/os/IBinder;

    .line 1965
    .local v145, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v145

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_177f
    .catch Ljava/lang/Throwable; {:try_start_175c .. :try_end_177f} :catch_1781

    goto/16 :goto_d7e

    .line 1967
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v144    # "mdnieClass":Ljava/lang/Class;
    .end local v145    # "mdnieService":Landroid/os/IBinder;
    :catch_1781
    move-exception v104

    .line 1968
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d7e

    .line 1979
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v40    # "aasClass":Ljava/lang/Class;
    :cond_178d
    const/4 v6, 0x1

    :try_start_178e
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1980
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/IBinder;

    .line 1981
    .local v41, "aasService":Landroid/os/IBinder;
    const-string v6, "AAS"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17b0
    .catch Ljava/lang/Throwable; {:try_start_178e .. :try_end_17b0} :catch_17b2

    goto/16 :goto_d96

    .line 1983
    .end local v40    # "aasClass":Ljava/lang/Class;
    .end local v41    # "aasService":Landroid/os/IBinder;
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_17b2
    move-exception v104

    .line 1984
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start AAS Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d96

    .line 1995
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v157    # "mscsClass":Ljava/lang/Class;
    :cond_17be
    const/4 v6, 0x1

    :try_start_17bf
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v157

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1996
    .restart local v72    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Landroid/os/IBinder;

    .line 1997
    .local v158, "mscsService":Landroid/os/IBinder;
    const-string v6, "MSCS"

    move-object/from16 v0, v158

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17e1
    .catch Ljava/lang/Throwable; {:try_start_17bf .. :try_end_17e1} :catch_17e3

    goto/16 :goto_dae

    .line 1999
    .end local v72    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v157    # "mscsClass":Ljava/lang/Class;
    .end local v158    # "mscsService":Landroid/os/IBinder;
    :catch_17e3
    move-exception v104

    .line 2000
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start MSCS Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_dae

    .line 2010
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_17ef
    move-exception v104

    .line 2011
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_dc2

    .line 2038
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_17fc
    move-exception v104

    .line 2039
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ddd

    .line 2046
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1809
    move-exception v104

    .line 2047
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_df1

    .line 2063
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1816
    move-exception v104

    .line 2064
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1817
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e08

    .line 2071
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1823
    move-exception v104

    .line 2072
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e16

    .line 2086
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1830
    move-exception v104

    .line 2087
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_1831
    const-string/jumbo v6, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e3c

    .line 2117
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_183d
    move-exception v104

    .line 2118
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_183e
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_eb4

    .line 2128
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_184a
    move-exception v104

    .line 2129
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ed2

    .line 2139
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1857
    move-exception v104

    .line 2140
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ee0

    .line 2188
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v129    # "isWipowerEnabled":Z
    :catch_1864
    move-exception v104

    .line 2189
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f3d

    .line 2192
    .end local v104    # "e":Ljava/lang/Throwable;
    :cond_1871
    const-string v6, "SystemServer"

    const-string v7, "Wipower not supported"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f3d

    .line 2207
    :catch_187a
    move-exception v104

    .line 2208
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fa0

    .line 2216
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1886
    move-exception v104

    .line 2217
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fb2

    .line 2231
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v60    # "classCPPositioningService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v129    # "isWipowerEnabled":Z
    .end local v135    # "mCPPInstance":Landroid/os/IBinder;
    :catch_1890
    move-exception v104

    .line 2232
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_fd1

    .line 2241
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_189c
    move-exception v104

    .line 2242
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fe3

    .line 2258
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v175    # "safeMode":Z
    :cond_18a8
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_1005

    .line 2268
    :catch_18b1
    move-exception v104

    .line 2269
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Feature Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_101c

    .line 2279
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_18be
    move-exception v104

    .line 2280
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Payment Manager Service"

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_102e

    .line 2295
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_18ca
    move-exception v104

    .line 2296
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add GameManagerService."

    move-object/from16 v0, v104

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1075

    .line 2305
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_18d6
    move-exception v104

    .line 2306
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1078

    .line 2312
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_18e3
    move-exception v104

    .line 2313
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_107d

    .line 2331
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_18f0
    move-exception v104

    .line 2332
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_109f

    .line 2351
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v68    # "config":Landroid/content/res/Configuration;
    .restart local v148    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v204    # "w":Landroid/view/WindowManager;
    :catch_18fd
    move-exception v104

    .line 2352
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10dd

    .line 2357
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_190a
    move-exception v104

    .line 2358
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10e4

    .line 2364
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1917
    move-exception v104

    .line 2365
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10f1

    .line 2371
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1924
    move-exception v104

    .line 2372
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10f4

    .line 2377
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1931
    move-exception v104

    .line 2378
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10f7

    .line 2385
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_193e
    move-exception v104

    .line 2386
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making EnterpriserRightsManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10fa

    .line 2395
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v199    # "versionInfo":Landroid/os/Bundle;
    :catch_194b
    move-exception v104

    .line 2396
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-direct {v0, v6, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1112

    .line 2117
    .end local v68    # "config":Landroid/content/res/Configuration;
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v148    # "metrics":Landroid/util/DisplayMetrics;
    .end local v175    # "safeMode":Z
    .end local v199    # "versionInfo":Landroid/os/Bundle;
    .end local v204    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v60    # "classCPPositioningService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v135    # "mCPPInstance":Landroid/os/IBinder;
    .restart local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_1958
    move-exception v104

    move-object/from16 v146, v147

    .end local v147    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_183e

    .line 2086
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_195d
    move-exception v104

    move-object/from16 v49, v50

    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_1831

    .line 2063
    .end local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v67    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_1962
    move-exception v104

    move-object/from16 v66, v67

    .end local v67    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_1817

    .line 1950
    .end local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v86    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :catch_1967
    move-exception v104

    move-object/from16 v85, v86

    .end local v86    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v85    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    goto/16 :goto_174f

    .line 1873
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v181    # "serial":Lcom/android/server/SerialService;
    .restart local v182    # "serial":Lcom/android/server/SerialService;
    :catch_196c
    move-exception v104

    move-object/from16 v181, v182

    .end local v182    # "serial":Lcom/android/server/SerialService;
    .restart local v181    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_16ef

    .line 1838
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v52    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_1971
    move-exception v104

    move-object/from16 v51, v52

    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_16d5

    .line 1829
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v206    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_1976
    move-exception v104

    move-object/from16 v205, v206

    .end local v206    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_16c8

    .line 1776
    :catch_197b
    move-exception v104

    goto/16 :goto_1656

    .line 1706
    .end local v60    # "classCPPositioningService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v83    # "cppClassLoader":Ldalvik/system/PathClassLoader;
    .end local v135    # "mCPPInstance":Landroid/os/IBinder;
    .restart local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_197e
    move-exception v104

    move-object/from16 v79, v80

    .end local v80    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_15e3

    .line 1698
    .end local v131    # "location":Lcom/android/server/LocationManagerService;
    .restart local v132    # "location":Lcom/android/server/LocationManagerService;
    :catch_1983
    move-exception v104

    move-object/from16 v131, v132

    .end local v132    # "location":Lcom/android/server/LocationManagerService;
    .restart local v131    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_15d6

    .line 1668
    :catch_1988
    move-exception v6

    goto/16 :goto_a4a

    .line 1626
    .end local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v212    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_198b
    move-exception v104

    move-object/from16 v211, v212

    .end local v212    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v211    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    goto/16 :goto_1588

    .line 1526
    .end local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v70    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_1990
    move-exception v104

    move-object/from16 v69, v70

    .end local v70    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_14bf

    .line 1498
    :catch_1995
    move-exception v104

    goto/16 :goto_14b2

    .line 1487
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v162    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_1998
    move-exception v104

    move-object/from16 v8, v162

    .end local v162    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_14a3

    .line 1479
    .end local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v161    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_199d
    move-exception v104

    move-object/from16 v160, v161

    .end local v161    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v160    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_1496

    .line 1469
    .end local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_19a2
    move-exception v104

    move-object/from16 v196, v197

    .end local v197    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_1489

    .line 1413
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v186    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_19a7
    move-exception v104

    move-object/from16 v185, v186

    .end local v186    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_1448

    .line 1402
    .end local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v109    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_19ac
    move-exception v104

    move-object/from16 v108, v109

    .end local v109    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_143c

    .line 1390
    .end local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v103    # "dlpService":Lcom/android/server/DLPManagerService;
    :catch_19b1
    move-exception v104

    move-object/from16 v102, v103

    .end local v103    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v102    # "dlpService":Lcom/android/server/DLPManagerService;
    goto/16 :goto_142f

    .line 1379
    .end local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v178    # "sdpLogService":Lcom/android/server/SdpLogService;
    :catch_19b6
    move-exception v104

    move-object/from16 v177, v178

    .end local v178    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v177    # "sdpLogService":Lcom/android/server/SdpLogService;
    goto/16 :goto_1423

    .line 1372
    .end local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v180    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_19bb
    move-exception v104

    move-object/from16 v179, v180

    .end local v180    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v179    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_1416

    .line 1362
    .end local v138    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_19c0
    move-exception v104

    move-object/from16 v138, v139

    .end local v139    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v138    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_140a

    .line 1341
    .end local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v134    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_19c5
    move-exception v104

    move-object/from16 v133, v134

    .end local v134    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_13fd

    .line 1332
    :catch_19ca
    move-exception v6

    goto/16 :goto_6f0

    .line 1295
    .end local v202    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v203    # "vrManager":Lcom/android/server/VRManagerService;
    :catch_19cd
    move-exception v104

    move-object/from16 v202, v203

    .end local v203    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v202    # "vrManager":Lcom/android/server/VRManagerService;
    goto/16 :goto_13d6

    .line 1236
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v169    # "pm":Landroid/content/pm/PackageManager;
    .restart local v172    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_19d2
    move-exception v104

    move-object/from16 v171, v172

    .end local v172    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    goto/16 :goto_13a3

    .line 1215
    .end local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v169    # "pm":Landroid/content/pm/PackageManager;
    .restart local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v168    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_19d7
    move-exception v104

    move-object/from16 v81, v82

    .end local v82    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_1397

    .line 1161
    .end local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v168    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v124    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_19dc
    move-exception v104

    move-object/from16 v123, v124

    .end local v124    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_132d

    .line 1127
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v131    # "location":Lcom/android/server/LocationManagerService;
    .end local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v166    # "notification":Landroid/app/INotificationManager;
    .end local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v173    # "sLocation":Landroid/os/IBinder;
    .end local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v202    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_19e1
    move-exception v104

    goto/16 :goto_1177

    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_19e4
    move-exception v104

    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_1177

    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v199    # "versionInfo":Landroid/os/Bundle;
    :catch_19e9
    move-exception v104

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_1177

    .end local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v141    # "mProductName":Ljava/lang/String;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_19f2
    move-exception v104

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v89, v90

    .end local v90    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v89    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_1177

    .end local v91    # "dLSManager":Lcom/android/server/LSManager;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_19fb
    move-exception v104

    move-object/from16 v91, v92

    .end local v92    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v91    # "dLSManager":Lcom/android/server/LSManager;
    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_1177

    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v192    # "timaService":Lcom/android/server/TimaService;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v189    # "timaEnabled":Z
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1a04
    move-exception v104

    move-object/from16 v192, v193

    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .restart local v192    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1177

    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v107    # "enabledMDM":Z
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1a0f
    move-exception v104

    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v76, v77

    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1177

    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v142    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v207    # "watchdog":Lcom/android/server/Watchdog;
    :catch_1a1a
    move-exception v104

    move-object/from16 v142, v143

    .end local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v142    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v110, v111

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v76, v77

    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v187, v188

    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v125, v126

    .end local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v200, v201

    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1177

    .line 1119
    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v142    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v200    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v201    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1a29
    move-exception v104

    move-object/from16 v142, v143

    .end local v143    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v142    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_1321

    .line 912
    .end local v77    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "enabledMDM":Z
    .end local v126    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v192    # "timaService":Lcom/android/server/TimaService;
    .end local v207    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v125    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v193    # "timaService":Lcom/android/server/TimaService;
    :catch_1a2e
    move-exception v104

    move-object/from16 v192, v193

    .end local v193    # "timaService":Lcom/android/server/TimaService;
    .restart local v192    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_120f

    .line 775
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v141    # "mProductName":Ljava/lang/String;
    .end local v189    # "timaEnabled":Z
    .end local v201    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v200    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1a33
    move-exception v104

    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_1196

    .end local v111    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v188    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v199    # "versionInfo":Landroid/os/Bundle;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v108    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v110    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v131    # "location":Lcom/android/server/LocationManagerService;
    .restart local v133    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v146    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v166    # "notification":Landroid/app/INotificationManager;
    .restart local v171    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v173    # "sLocation":Landroid/os/IBinder;
    .restart local v185    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v187    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v196    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v202    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v205    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_1a38
    move-object/from16 v4, v159

    .end local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_a18

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_1a3c
    move-object/from16 v4, v159

    .end local v159    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_fb2
.end method

.method static final startSecurityManagerService(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2680
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2681
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.service.sm"

    const-string v3, "com.sec.android.service.sm.service.SecurityManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2683
    const-string v1, "CMD"

    const-string v2, "START_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2684
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2685
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2643
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2644
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2647
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2648
    return-void
.end method

.method private startThemeService()V
    .registers 6

    .prologue
    .line 2633
    iget-object v0, p0, mSystemContext:Landroid/content/Context;

    .line 2634
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2635
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2637
    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2638
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2639
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2640
    return-void
.end method
