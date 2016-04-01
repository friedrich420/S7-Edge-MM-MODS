.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Lcom/android/server/audio/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

.field final synthetic val$sLocationF:Landroid/os/IBinder;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$vrManagerF:Lcom/android/server/VRManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 26

    .prologue
    .line 2445
    iput-object p1, p0, this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, val$context:Landroid/content/Context;

    iput-object p3, p0, val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, val$audioServiceF:Lcom/android/server/audio/AudioService;

    iput-object p9, p0, val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p10, p0, val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p11, p0, val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p12, p0, val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p13, p0, val$sLocationF:Landroid/os/IBinder;

    iput-object p14, p0, val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p15

    iput-object v0, p0, val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p16

    iput-object v0, p0, val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p17

    iput-object v0, p0, val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, val$vrManagerF:Lcom/android/server/VRManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p20

    iput-object v0, p0, val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p22

    iput-object v0, p0, val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p23

    iput-object v0, p0, val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, p24

    iput-object v0, p0, val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2448
    const-string v3, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x226

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2453
    :try_start_12
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_161

    .line 2458
    :goto_1b
    const-string v3, "SystemServer"

    const-string v4, "WebViewFactory preparation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 2463
    const/4 v3, -0x2

    :try_start_26
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2465
    iget-object v3, p0, val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V

    .line 2466
    iget-object v3, p0, val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startFingerprintService(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_33} :catch_16c

    .line 2471
    :goto_33
    :try_start_33
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # invokes: Lcom/android/server/SystemServer;->startThemeService()V
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_38} :catch_177

    .line 2476
    :goto_38
    :try_start_38
    iget-object v3, p0, val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v3, :cond_41

    iget-object v3, p0, val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_41} :catch_182

    .line 2481
    :cond_41
    :goto_41
    :try_start_41
    const-string v3, "SystemServer"

    const-string v4, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v3, p0, val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v3, :cond_51

    iget-object v3, p0, val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v3}, Lcom/android/server/NetworkManagementService;->systemReady()V

    .line 2483
    :cond_51
    const-string v3, "SystemServer"

    const-string v4, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_58} :catch_18d

    .line 2488
    :goto_58
    :try_start_58
    iget-object v3, p0, val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v3, :cond_61

    iget-object v3, p0, val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_61} :catch_198

    .line 2493
    :cond_61
    :goto_61
    :try_start_61
    iget-object v3, p0, val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v3, :cond_6a

    iget-object v3, p0, val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6a} :catch_1a3

    .line 2498
    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v3, p0, val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v3, :cond_73

    iget-object v3, p0, val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_73} :catch_1ae

    .line 2503
    :cond_73
    :goto_73
    :try_start_73
    iget-object v3, p0, val$audioServiceF:Lcom/android/server/audio/AudioService;

    if-eqz v3, :cond_7c

    iget-object v3, p0, val$audioServiceF:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->systemReady()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_7c} :catch_1b9

    .line 2508
    :cond_7c
    :goto_7c
    const-string v3, ""

    const-string/jumbo v4, "libc.debug.malloc"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string v3, "0"

    const-string/jumbo v4, "libc.debug.malloc"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 2510
    :cond_9a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->start()V

    .line 2515
    :cond_a1
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2519
    :try_start_ac
    iget-object v3, p0, val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v3, :cond_b5

    iget-object v3, p0, val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_b5} :catch_1c3

    .line 2524
    :cond_b5
    :goto_b5
    :try_start_b5
    iget-object v3, p0, val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v3, :cond_c0

    iget-object v3, p0, val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_c0} :catch_1cd

    .line 2529
    :cond_c0
    :goto_c0
    :try_start_c0
    iget-object v3, p0, val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v3, :cond_c9

    iget-object v3, p0, val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c9} :catch_1d7

    .line 2534
    :cond_c9
    :goto_c9
    :try_start_c9
    iget-object v3, p0, val$sLocationF:Landroid/os/IBinder;

    if-eqz v3, :cond_f8

    .line 2535
    const-string v3, "com.samsung.location.SLocationLoader"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2536
    .local v1, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "systemReady"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2537
    .local v2, "sLocationSystemReady":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, val$context:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, val$sLocationF:Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_f8} :catch_1e1

    .line 2543
    .end local v1    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "sLocationSystemReady":Ljava/lang/reflect/Method;
    :cond_f8
    :goto_f8
    :try_start_f8
    iget-object v3, p0, val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v3, :cond_101

    iget-object v3, p0, val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v3}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_101} :catch_201

    .line 2548
    :cond_101
    :goto_101
    :try_start_101
    iget-object v3, p0, val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v3, :cond_10a

    iget-object v3, p0, val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v3}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_10a} :catch_20b

    .line 2553
    :cond_10a
    :goto_10a
    :try_start_10a
    iget-object v3, p0, val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v3, :cond_113

    .line 2554
    iget-object v3, p0, val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v3}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_113} :catch_215

    .line 2560
    :cond_113
    :goto_113
    :try_start_113
    iget-object v3, p0, val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v3, :cond_11c

    .line 2561
    iget-object v3, p0, val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_11c} :catch_21f

    .line 2569
    :cond_11c
    :goto_11c
    :try_start_11c
    iget-object v3, p0, val$vrManagerF:Lcom/android/server/VRManagerService;

    if-eqz v3, :cond_125

    iget-object v3, p0, val$vrManagerF:Lcom/android/server/VRManagerService;

    invoke-virtual {v3}, Lcom/android/server/VRManagerService;->systemReady()V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_125} :catch_229

    .line 2576
    :cond_125
    :goto_125
    :try_start_125
    iget-object v3, p0, val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v3, :cond_12e

    iget-object v3, p0, val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v3}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_12e} :catch_234

    .line 2582
    :cond_12e
    :goto_12e
    :try_start_12e
    iget-object v3, p0, val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v3, :cond_137

    iget-object v3, p0, val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_137} :catch_23e

    .line 2587
    :cond_137
    :goto_137
    :try_start_137
    iget-object v3, p0, val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v3, :cond_140

    iget-object v3, p0, val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_140} :catch_248

    .line 2592
    :cond_140
    :goto_140
    :try_start_140
    iget-object v3, p0, val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v3, :cond_149

    iget-object v3, p0, val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_149} :catch_252

    .line 2599
    :cond_149
    :goto_149
    :try_start_149
    iget-object v3, p0, val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14e} :catch_25c

    .line 2614
    :goto_14e
    :try_start_14e
    iget-object v3, p0, val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    if-eqz v3, :cond_157

    iget-object v3, p0, val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverManagerService;->systemReady()V
    :try_end_157
    .catch Ljava/lang/Throwable; {:try_start_14e .. :try_end_157} :catch_266

    .line 2623
    :cond_157
    :goto_157
    :try_start_157
    iget-object v3, p0, val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    if-eqz v3, :cond_160

    iget-object v3, p0, val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_160} :catch_270

    .line 2628
    :cond_160
    :goto_160
    return-void

    .line 2454
    :catch_161
    move-exception v0

    .line 2455
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 2467
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16c
    move-exception v0

    .line 2468
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 2472
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_177
    move-exception v0

    .line 2473
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "starting Theme Service"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 2477
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_182
    move-exception v0

    .line 2478
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 2484
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18d
    move-exception v0

    .line 2485
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 2489
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_198
    move-exception v0

    .line 2490
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 2494
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a3
    move-exception v0

    .line 2495
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 2499
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1ae
    move-exception v0

    .line 2500
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_73

    .line 2504
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b9
    move-exception v0

    .line 2505
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c

    .line 2520
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1c3
    move-exception v0

    .line 2521
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b5

    .line 2525
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1cd
    move-exception v0

    .line 2526
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c0

    .line 2530
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1d7
    move-exception v0

    .line 2531
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c9

    .line 2539
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1e1
    move-exception v0

    .line 2540
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "making SLocation Service ready :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f8

    .line 2544
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_201
    move-exception v0

    .line 2545
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_101

    .line 2549
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_20b
    move-exception v0

    .line 2550
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10a

    .line 2556
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_215
    move-exception v0

    .line 2557
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_113

    .line 2562
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_21f
    move-exception v0

    .line 2563
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11c

    .line 2570
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_229
    move-exception v0

    .line 2571
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making VR Manager Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_125

    .line 2577
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_234
    move-exception v0

    .line 2578
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12e

    .line 2583
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_23e
    move-exception v0

    .line 2584
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_137

    .line 2588
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_248
    move-exception v0

    .line 2589
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_140

    .line 2593
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_252
    move-exception v0

    .line 2594
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_149

    .line 2600
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_25c
    move-exception v0

    .line 2601
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying EmergencyModeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14e

    .line 2615
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_266
    move-exception v0

    .line 2616
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CoverManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_157

    .line 2624
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_270
    move-exception v0

    .line 2625
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying SAccessoryManager running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_160
.end method
