.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final AP_CONNECTED:I = 0x5

.field private static final BROKER_CLOSING_TIME_MILLIS:I = 0x2ee

.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONNECT_MAX_RETRIES:I = 0x0

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final DB_PSM_SWITCH:Ljava/lang/String; = "psm_switch"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DEFAULT_SCAN_CHANNEL:I = 0x64b

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field private static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field private static final FULLSCAN_TIME_DELAY_MILLIS:I = 0x3e8

.field private static final INFO_TYPE_DPM_WIFI:I = 0x2

.field private static final KDDI_SOURCE_CONNECT_SUCCESS_ACTION:Ljava/lang/String; = "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

.field private static final KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION:Ljava/lang/String; = "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final POPUP_CAUSE_OXYGEN_NETWORK_ENABLED:I = 0x22090

.field private static final RESTART_SCANNING_TIME_MILLIS:I = 0x32

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final SCANNING_TIME_MILLIS:I = 0x2710

.field private static final SCAN_MAX_RETRIES:I = 0x0

.field private static final SIDESYNC_CLOSING_TIME_MILLIS:I = 0x2ee

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectState:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectByUser:Z

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private mDongleUpdateOnGoing:Z

.field private mDongleUpdateResult:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mFullScanTimer:Ljava/lang/Runnable;

.field private mFullScanningInProgress:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsBootCompleted:Z

.field private mKDDIServiceConnected:Z

.field private mLimitedContentsEnabled:Z

.field private mLimitedContentsType:Ljava/lang/String;

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mMirroringSwitching:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOnPowerSavingMode:Z

.field private final mP2pClientsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialScanningInProgress:Z

.field private mPinRequired:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRemoteIP:Ljava/lang/String;

.field private mRequestPendingSetup:Z

.field private mRequestedScanChannel:I

.field private mRestartTriggered:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private mScanRequestedInConnected:Z

.field private final mSupportsProtectedBuffers:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mUpdateURL:Ljava/lang/String;

.field private mWaitForAction:Z

.field private final mWaitTillBrokerClosed:Ljava/lang/Runnable;

.field private final mWaitTillSideSyncClosed:Ljava/lang/Runnable;

.field private mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWfdFrequency:I

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pConnected:Z

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pPrevState:Z

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

.field private mZeroSettingsConcept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, mKDDIServiceConnected:Z

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 262
    const/4 v1, 0x4

    iput v1, p0, mWifiDisplayWpsConfig:I

    .line 277
    const/4 v1, -0x1

    iput v1, p0, mConnectState:I

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mP2pClientsList:Ljava/util/ArrayList;

    .line 287
    const/16 v1, 0x64b

    iput v1, p0, mRequestedScanChannel:I

    .line 2201
    new-instance v1, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mDiscoverPeers:Ljava/lang/Runnable;

    .line 2209
    new-instance v1, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mWaitTillBrokerClosed:Ljava/lang/Runnable;

    .line 2216
    new-instance v1, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mFullScanTimer:Ljava/lang/Runnable;

    .line 2244
    new-instance v1, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mWaitTillSideSyncClosed:Ljava/lang/Runnable;

    .line 2253
    new-instance v1, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mConnectionTimeout:Ljava/lang/Runnable;

    .line 2265
    new-instance v1, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mRtspTimeout:Ljava/lang/Runnable;

    .line 2475
    new-instance v1, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v1, p0, mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    move-object/from16 v0, p1

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 297
    move-object/from16 v0, p2

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 298
    move-object/from16 v0, p3

    iput-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 300
    const-string/jumbo v1, "wifip2p"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 301
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 303
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v1, "com.samsung.android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "com.samsung.settings.POWERSAVING_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v1, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v1, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, mHandler:Landroid/os/Handler;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    new-instance v14, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v14, p0, v1}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 347
    .local v14, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 350
    .local v13, "resolver":Landroid/content/ContentResolver;
    :try_start_fa
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 351
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_143

    .line 352
    const-string v1, "com.android.settings"

    const/16 v2, 0x80

    invoke-virtual {v11, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 354
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 355
    .local v10, "meta_data":Landroid/os/Bundle;
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metadata value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "settings_apk_name"

    const-string/jumbo v5, "none"

    invoke-virtual {v10, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v1, "settings_apk_name"

    const-string/jumbo v2, "none"

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecSettings2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, mZeroSettingsConcept:Z
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_143} :catch_1ca

    .line 364
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "meta_data":Landroid/os/Bundle;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_143
    :goto_143
    iget-boolean v1, p0, mZeroSettingsConcept:Z

    if-eqz v1, :cond_159

    .line 365
    new-instance v12, Lcom/android/server/display/WifiDisplayController$2;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v12, p0, v1, v13}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 382
    .local v12, "powersavingObserver":Landroid/database/ContentObserver;
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    .end local v12    # "powersavingObserver":Landroid/database/ContentObserver;
    :cond_159
    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    const-string/jumbo v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 390
    const-string/jumbo v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    invoke-direct {p0}, updateSettings()V

    .line 397
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    const/4 v8, 0x1

    .line 401
    .local v8, "enabledMDM":Z
    if-eqz v8, :cond_1a6

    .line 402
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 403
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1a6

    .line 404
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 407
    :cond_1a6
    const-string/jumbo v1, "device_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mSupportsProtectedBuffers:Z

    .line 412
    new-instance v1, Landroid/media/WFDUibcManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 418
    return-void

    .line 360
    .end local v8    # "enabledMDM":Z
    :catch_1ca
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "WifiDisplayController"

    const-string v2, "Cannot get Metadata value"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, mZeroSettingsConcept:Z

    goto/16 :goto_143
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mWaitForAction:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mWaitForAction:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, requestPeers()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    invoke-static {p0}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    invoke-static {p0}, isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, handleScanResults()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, unadvertiseDisplay()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, updateConnection()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mPinRequired:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, disconnect()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, setUDP(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, requestPopup(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, requestScreenMirroringEnable(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayController;)Landroid/media/WFDUibcManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mDongleUpdateOnGoing:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 125
    iput-object p1, p0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "x2"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    invoke-static {p0}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 125
    invoke-direct/range {p0 .. p5}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 125
    invoke-static {p0}, describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget v0, p0, mWfdFrequency:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/display/WifiDisplayController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, mWfdFrequency:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 125
    invoke-direct {p0, p1}, getChangedClientDevice(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, tryDiscoverPeers()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mWifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget v0, p0, mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$5020(Lcom/android/server/display/WifiDisplayController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iget v0, p0, mConnectionRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, retryConnection()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget v0, p0, mConnectState:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mDisconnectByUser:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mDisconnectByUser:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, handlePeersChanged()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 125
    invoke-direct {p0, p1}, handleConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mKDDIServiceConnected:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mKDDIServiceConnected:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, mUpdateURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mWaitTillBrokerClosed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, getPowerSavingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, isHotspotOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mLimitedContentsType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, mLimitedContentsType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mLimitedContentsEnabled:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mLimitedContentsEnabled:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, mWaitTillSideSyncClosed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mDongleUpdateResult:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mDongleUpdateResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, mWfdEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, reportFeatureState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, updateScanState()V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 20
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 2310
    iget-object v1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_20

    iget v1, p0, mAdvertisedDisplayWidth:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_20

    iget v1, p0, mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_20

    iget v1, p0, mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_50

    .line 2315
    :cond_20
    iget-object v5, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2316
    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 2317
    .local v3, "oldSurface":Landroid/view/Surface;
    iget v7, p0, mAdvertisedDisplayWidth:I

    .line 2318
    .local v7, "oldDisplayWidth":I
    iget v8, p0, mAdvertisedDisplayHeight:I

    .line 2320
    .local v8, "oldDisplayHeight":I
    iput-object p1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2321
    move-object/from16 v0, p2

    iput-object v0, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 2322
    move/from16 v0, p3

    iput v0, p0, mAdvertisedDisplayWidth:I

    .line 2323
    move/from16 v0, p4

    iput v0, p0, mAdvertisedDisplayHeight:I

    .line 2324
    move/from16 v0, p5

    iput v0, p0, mAdvertisedDisplayFlags:I

    .line 2326
    iget-boolean v9, p0, mRequestPendingSetup:Z

    .line 2328
    .local v9, "requestPendingSetup":Z
    iget-object v13, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$29;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object v6, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIZIII)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2381
    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "oldDisplayWidth":I
    .end local v8    # "oldDisplayHeight":I
    .end local v9    # "requestPendingSetup":Z
    :cond_50
    return-void
.end method

.method private computeFeatureState()I
    .registers 2

    .prologue
    .line 1145
    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-nez v0, :cond_6

    .line 1146
    const/4 v0, 0x1

    .line 1148
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto :goto_5

    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1383
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2d

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1386
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :goto_2c
    return-void

    .line 1392
    :cond_2d
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6a

    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_6a

    .line 1396
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not part way through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connecting to a different device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1403
    :cond_6a
    iget-boolean v0, p0, mWfdEnabled:Z

    if-nez v0, :cond_89

    .line 1404
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1411
    :cond_89
    iget-boolean v0, p0, mHDMIConnected:Z

    if-eqz v0, :cond_9b

    .line 1412
    const-string v0, "WifiDisplayController"

    const-string v1, "connect: HDMI is Connected. Can\'t connect screen mirroring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const v0, 0x22074

    invoke-direct {p0, v0}, requestPopup(I)V

    goto :goto_2c

    .line 1417
    :cond_9b
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, mRemoteIP:Ljava/lang/String;

    .line 1418
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote IP :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mRemoteIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iput-object p1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1423
    const/4 v0, 0x0

    iput v0, p0, mConnectionRetriesLeft:I

    .line 1424
    invoke-direct {p0}, updateConnection()V

    goto/16 :goto_2c
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 9
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2465
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 4
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2455
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string/jumbo v0, "null"

    goto :goto_e
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 4
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 2459
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string/jumbo v0, "null"

    goto :goto_e
.end method

.method private disconnect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1429
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_20

    .line 1435
    iget-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnecting()V

    .line 1437
    iput-boolean v2, p0, mRequestPendingSetup:Z

    .line 1438
    iput-object v3, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1439
    iput-object v3, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1440
    iput-boolean v2, p0, mRemoteDisplayConnected:Z

    .line 1442
    iput-boolean v2, p0, mScanRequested:Z

    .line 1444
    invoke-direct {p0}, updateConnection()V

    .line 1450
    :cond_20
    return-void
.end method

.method private getCPUPowerSavingMode()I
    .registers 6

    .prologue
    .line 851
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "psm_cpu_clock"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 852
    .local v0, "iCpuPowerSavinge":I
    return v0
.end method

.method private getChangedClientDevice(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 10
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 2711
    if-eqz p1, :cond_9e

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    if-eqz v6, :cond_9e

    .line 2712
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v3

    .line 2713
    .local v3, "info_size":I
    if-lez v3, :cond_9e

    .line 2714
    const/4 v0, 0x0

    .line 2715
    .local v0, "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v5, 0x0

    .line 2716
    .local v5, "requestNewList":Z
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1d

    .line 2717
    const/4 v5, 0x1

    .line 2720
    :cond_1d
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2721
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 2722
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2723
    .local v1, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v5, :cond_3d

    .line 2724
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2725
    move-object v0, v1

    .line 2721
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2727
    :cond_3d
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v3, v6, :cond_52

    .line 2728
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 2729
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    move-object v0, v1

    .line 2753
    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i":I
    .end local v3    # "info_size":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v5    # "requestNewList":Z
    :cond_51
    :goto_51
    return-object v0

    .line 2733
    .restart local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v2    # "i":I
    .restart local v3    # "info_size":I
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .restart local v5    # "requestNewList":Z
    :cond_52
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_51

    .line 2734
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 2735
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2736
    .restart local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_51

    .line 2740
    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 2741
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    iget-object v7, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2742
    .restart local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    iget-object v7, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_51

    .line 2753
    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i":I
    .end local v3    # "info_size":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v5    # "requestNewList":Z
    :cond_9e
    const/4 v0, 0x0

    goto :goto_51
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .registers 9
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v4, 0x0

    .line 2396
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_8} :catch_20

    move-result-object v3

    .line 2407
    .local v3, "iface":Ljava/net/NetworkInterface;
    :try_start_9
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 2408
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2409
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2410
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_d

    .line 2411
    check-cast v0, Ljava/net/Inet4Address;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1f} :catch_3f

    .line 2421
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    :goto_1f
    return-object v0

    .line 2397
    :catch_20
    move-exception v2

    .line 2398
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 2400
    goto :goto_1f

    .line 2414
    .end local v2    # "ex":Ljava/net/SocketException;
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    :catch_3f
    move-exception v5

    .line 2419
    :cond_40
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it had no IPv4 addresses."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 2421
    goto :goto_1f
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .registers 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2425
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2428
    const/16 v0, 0x216a

    .line 2430
    :goto_16
    return v0

    :cond_17
    const/16 v0, 0x1c44

    goto :goto_16
.end method

.method private getPowerSavingMode()I
    .registers 5

    .prologue
    .line 843
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 844
    .local v0, "lowPowerMode":I
    return v0
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 10
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    .line 1964
    if-nez p1, :cond_4

    .line 1965
    const/4 v0, 0x0

    .line 1977
    :goto_3
    return-object v0

    .line 1967
    :cond_4
    invoke-static {p1}, getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1968
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const/4 v1, 0x1

    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_46
    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1968
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_54
    const/4 v1, 0x0

    goto :goto_1b

    :cond_56
    const-string v5, ""

    goto :goto_46
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .registers 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2050
    iput-object p1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2053
    if-nez p1, :cond_f

    .line 2054
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "networkInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_e
    :goto_e
    return-void

    .line 2058
    :cond_f
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2059
    iput-boolean v2, p0, mWifiP2pConnected:Z

    .line 2060
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 2077
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 2112
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2113
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_41

    iget-boolean v0, p0, mWifiDisplayCertMode:Z

    if-eqz v0, :cond_e

    .line 2114
    :cond_41
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_e

    .line 2093
    :cond_4e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2f

    .line 2094
    iget-boolean v0, p0, mDongleUpdateResult:Z

    if-ne v0, v2, :cond_67

    .line 2095
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "success  disable wfd "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    invoke-direct {p0}, disconnect()V

    .line 2097
    iput-boolean v3, p0, mDongleUpdateResult:Z

    .line 2099
    :cond_67
    iput-boolean v3, p0, mWifiP2pConnected:Z

    .line 2100
    iget-object v0, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2101
    iget-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onP2pDisconnected()V

    .line 2103
    iput v3, p0, mWfdFrequency:I

    .line 2104
    iget-boolean v0, p0, mRestartTriggered:Z

    if-eqz v0, :cond_7c

    .line 2105
    invoke-virtual {p0}, requestStartSettings()V

    .line 2107
    :cond_7c
    iput-boolean v3, p0, mRestartTriggered:Z

    goto :goto_2f

    .line 2176
    :cond_7f
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    if-eqz v0, :cond_89

    iget v0, p0, mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8d

    :cond_89
    iget-boolean v0, p0, mDongleUpdateOnGoing:Z

    if-eqz v0, :cond_a9

    .line 2178
    :cond_8d
    const v0, 0x2207b

    invoke-direct {p0, v0}, requestPopup(I)V

    .line 2179
    iput-boolean v3, p0, mDongleUpdateOnGoing:Z

    .line 2188
    :cond_95
    :goto_95
    iget-object v0, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_9d

    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_a0

    .line 2189
    :cond_9d
    invoke-direct {p0}, disconnect()V

    .line 2195
    :cond_a0
    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_e

    .line 2196
    invoke-direct {p0}, requestPeers()V

    goto/16 :goto_e

    .line 2180
    :cond_a9
    iget-boolean v0, p0, mWaitForAction:Z

    if-eqz v0, :cond_95

    .line 2181
    iput-boolean v3, p0, mWaitForAction:Z

    .line 2182
    invoke-direct {p0}, updateSettings()V

    goto :goto_95
.end method

.method private handleConnectionFailure(Z)V
    .registers 7
    .param p1, "timeoutOccurred"    # Z

    .prologue
    .line 2280
    const-string v1, "WifiDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1f

    .line 2283
    iget v1, p0, mConnectionRetriesLeft:I

    if-lez v1, :cond_23

    .line 2284
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2285
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    if-eqz p1, :cond_20

    const-wide/16 v2, 0x0

    :goto_1c
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2306
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1f
    :goto_1f
    return-void

    .line 2285
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_20
    const-wide/16 v2, 0x3e8

    goto :goto_1c

    .line 2298
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_23
    iget-boolean v1, p0, mRemoteDisplayConnected:Z

    if-eqz v1, :cond_33

    iget v1, p0, mConnectState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_33

    .line 2300
    const v1, 0x2207b

    invoke-direct {p0, v1}, requestPopup(I)V

    .line 2303
    :cond_33
    invoke-direct {p0}, disconnect()V

    goto :goto_1f
.end method

.method private handlePeersChanged()V
    .registers 1

    .prologue
    .line 2046
    invoke-direct {p0}, requestPeers()V

    .line 2047
    return-void
.end method

.method private handleScanFinished()V
    .registers 3

    .prologue
    .line 1357
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1363
    return-void
.end method

.method private handleScanResults()V
    .registers 7

    .prologue
    .line 1338
    iget-object v4, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1339
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 1340
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_2c

    .line 1341
    iget-object v4, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1342
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1344
    aget-object v4, v2, v3

    iget v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {v4, v5}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 1345
    invoke-direct {p0, v1}, updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1340
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1348
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2c
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v5, p0, v2}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1354
    return-void
.end method

.method private handleScanStarted()V
    .registers 3

    .prologue
    .line 1329
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1335
    return-void
.end method

.method private handleStateChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2030
    iput-boolean p1, p0, mWifiP2pEnabled:Z

    .line 2033
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    .line 2034
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2041
    :goto_15
    return-void

    .line 2039
    :cond_16
    invoke-direct {p0}, updateWfdEnableState()V

    goto :goto_15
.end method

.method private isAuSLServiceRunning()Z
    .registers 7

    .prologue
    .line 993
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 996
    .local v1, "am":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 997
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 998
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "className":Ljava/lang/String;
    const-string v4, "com.sec.kddi.ausharelink.service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1000
    const-string v4, "WifiDisplayController"

    const-string/jumbo v5, "isAuSLServiceRunning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v4, 0x1

    .line 1005
    .end local v2    # "className":Ljava/lang/String;
    :goto_35
    return v4

    .line 997
    .restart local v2    # "className":Ljava/lang/String;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1005
    .end local v2    # "className":Ljava/lang/String;
    :cond_39
    const/4 v4, 0x0

    goto :goto_35
.end method

.method private isHotspotOn()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_12

    .line 922
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 925
    :cond_12
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_18

    move v0, v1

    .line 939
    :goto_17
    return v0

    .line 929
    :cond_18
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    move v0, v1

    .line 939
    goto :goto_17

    .line 933
    :pswitch_23
    const/4 v0, 0x1

    goto :goto_17

    .line 929
    nop

    :pswitch_data_26
    .packed-switch 0xc
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private isP2pConnected()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 826
    :try_start_1
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 827
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 828
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_1b

    if-ne v4, v5, :cond_1a

    .line 829
    const/4 v3, 0x1

    .line 835
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1a
    :goto_1a
    return v3

    .line 833
    :catch_1b
    move-exception v1

    .line 834
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "WifiDisplayController"

    const-string/jumbo v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 2450
    if-eq p0, v0, :cond_6

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isSideSyncAppRunning()Z
    .registers 9

    .prologue
    .line 859
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 862
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 863
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 864
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_50

    .line 865
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.sec.android.sidesync30.ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 867
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSideSyncAppRunning className = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v5, 0x1

    .line 871
    .end local v2    # "className":Ljava/lang/String;
    :goto_4c
    return v5

    .line 864
    .restart local v2    # "className":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 871
    .end local v2    # "className":Ljava/lang/String;
    :cond_50
    const/4 v5, 0x0

    goto :goto_4c
.end method

.method private isSideSyncConnected()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "isSideSync":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 905
    if-nez v0, :cond_12

    .line 909
    :goto_11
    return v1

    .line 908
    :cond_12
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSideSyncConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2436
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isWifiIbssEnabled()Z
    .registers 3

    .prologue
    .line 947
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 948
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 951
    :cond_11
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_17

    .line 952
    const/4 v0, 0x0

    .line 955
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v0

    goto :goto_16
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 10
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1984
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1985
    .local v0, "connectConfig":Landroid/net/wifi/p2p/WifiP2pConfig;
    const-string/jumbo v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "JP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1986
    .local v1, "isJp":Z
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1987
    .local v2, "isKDDI":Z
    const/16 v3, 0xe

    iput v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1988
    if-eqz v1, :cond_32

    if-eqz v2, :cond_32

    .line 1989
    invoke-direct {p0}, isAuSLServiceRunning()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1990
    const/4 v3, 0x5

    iput v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1994
    :cond_32
    if-eqz p1, :cond_a9

    .line 1996
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iconIdx :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kddi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    if-nez v2, :cond_65

    iget v3, p0, mRequestedScanChannel:I

    const/16 v4, 0x64b

    if-ne v3, v4, :cond_65

    iget v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    if-lez v3, :cond_70

    .line 2000
    :cond_65
    const-string v3, "WifiDisplayController"

    const-string/jumbo v4, "set PERSISTENT_NET_ID"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/4 v3, -0x2

    iput v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2004
    :cond_70
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeConnConfig << n:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2008
    iget-boolean v3, p0, mPinRequired:Z

    if-eqz v3, :cond_aa

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 2009
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v3, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2023
    :cond_a9
    :goto_a9
    return-object v0

    .line 2011
    :cond_aa
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 2012
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_a9

    .line 2013
    :cond_b5
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 2014
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_a9

    .line 2015
    :cond_c0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 2016
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v4, 0x1

    iput v4, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_a9

    .line 2018
    :cond_cc
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v3, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_a9
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .registers 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 2388
    iget-object v2, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, mAdvertisedDisplayWidth:I

    iget v4, p0, mAdvertisedDisplayHeight:I

    iget v5, p0, mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2391
    return-void
.end method

.method private reportFeatureState()V
    .registers 4

    .prologue
    .line 1135
    invoke-direct {p0}, computeFeatureState()I

    move-result v0

    .line 1136
    .local v0, "featureState":I
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1142
    return-void
.end method

.method private requestPeers()V
    .registers 4

    .prologue
    .line 1297
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1326
    return-void
.end method

.method private requestPopup(I)V
    .registers 7
    .param p1, "cause"    # I

    .prologue
    .line 582
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestPopup cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :try_start_19
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    sparse-switch p1, :sswitch_data_88

    .line 606
    :cond_29
    :goto_29
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    iget-boolean v2, p0, mIsBootCompleted:Z

    if-eqz v2, :cond_39

    .line 608
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 614
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_39
    :goto_39
    return-void

    .line 589
    .restart local v1    # "intent":Landroid/content/Intent;
    :sswitch_3a
    const-string v2, "WifiDisplayController"

    const-string/jumbo v3, "requestPopup << POPUP_CAUSE_DONGLE_UPDATE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v2, "url"

    iget-object v3, p0, mUpdateURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const/4 v2, 0x1

    iput-boolean v2, p0, mDongleUpdateOnGoing:Z

    .line 592
    const/4 v2, 0x0

    iput-object v2, p0, mUpdateURL:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_50} :catch_51

    goto :goto_29

    .line 610
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_51
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :sswitch_6c
    :try_start_6c
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29

    .line 599
    :sswitch_7a
    iget-object v2, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_29

    .line 600
    const-string v2, "DeviceName"

    iget-object v3, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_87} :catch_51

    goto :goto_29

    .line 586
    :sswitch_data_88
    .sparse-switch
        0x22078 -> :sswitch_3a
        0x2207b -> :sswitch_6c
        0x2208a -> :sswitch_7a
    .end sparse-switch
.end method

.method private requestScreenMirroringEnable(Z)V
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 633
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroring_enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string v1, "PackageName"

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 640
    return-void
.end method

.method private retryConnection()V
    .registers 3

    .prologue
    .line 1471
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1472
    invoke-direct {p0}, updateConnection()V

    .line 1473
    return-void
.end method

.method private setUDP(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1453
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1456
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8} :catch_17

    .line 1461
    :goto_8
    iget-object v2, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 1462
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1463
    const/4 v1, 0x0

    .line 1464
    return-void

    .line 1457
    :catch_17
    move-exception v0

    .line 1458
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private stopPeerDiscovery()V
    .registers 4

    .prologue
    .line 1271
    const-string v1, "WifiDisplayController"

    const-string v2, "callSECApi SEC_COMMAND_ID_P2P_STOP_DISCOVERY_NO_FLUSH instead of stopPeerDiscovery"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1273
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const v1, 0x2208f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1274
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->callSECApi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Message;)I

    .line 1294
    return-void
.end method

.method private tryDiscoverPeers()V
    .registers 7

    .prologue
    .line 1206
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mFullScanTimer:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1208
    const/16 v0, 0x64b

    .line 1210
    .local v0, "requestedScanChannel":I
    iget v1, p0, mRequestedScanChannel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 1211
    iget v0, p0, mRequestedScanChannel:I

    .line 1213
    :cond_12
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1237
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1265
    return-void
.end method

.method private unadvertiseDisplay()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2384
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2385
    return-void
.end method

.method private updateConnection()V
    .registers 22

    .prologue
    .line 1482
    const-string v2, "WifiDisplayController"

    const-string/jumbo v4, "updateConnection"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-direct/range {p0 .. p0}, updateScanState()V

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_92

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_92

    .line 1493
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopped listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    if-eqz v2, :cond_54

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v2}, Landroid/media/WFDUibcManager;->stop()Z

    .line 1506
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, broadcastWfdState(I)V

    .line 1507
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, requestScreenMirroringEnable(Z)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_6d

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1515
    :cond_6d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1516
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mRemoteDisplayInterface:Ljava/lang/String;

    .line 1517
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mRemoteDisplayConnected:Z

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1521
    invoke-direct/range {p0 .. p0}, unadvertiseDisplay()V

    .line 1527
    :cond_92
    move-object/from16 v0, p0

    iget-object v2, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_b6

    .line 1530
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateConnection, mDisconnectingDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_b5
    :goto_b5
    return-void

    .line 1535
    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_103

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_103

    .line 1536
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1548
    move-object/from16 v0, p0

    iget-object v15, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1549
    .local v15, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_b5

    .line 1582
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_103
    move-object/from16 v0, p0

    iget-object v2, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_127

    .line 1585
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateConnection, mCancelingDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 1590
    :cond_127
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_175

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_175

    .line 1591
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling connection to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1601
    move-object/from16 v0, p0

    iget-object v15, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1602
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_b5

    .line 1637
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_175
    move-object/from16 v0, p0

    iget-object v2, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_198

    .line 1638
    move-object/from16 v0, p0

    iget-boolean v2, v0, mWifiDisplayCertMode:Z

    if-eqz v2, :cond_193

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    move-object/from16 v0, p0

    iget-object v4, v0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 1641
    :cond_193
    invoke-direct/range {p0 .. p0}, unadvertiseDisplay()V

    goto/16 :goto_b5

    .line 1646
    :cond_198
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_1fd

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_1fd

    .line 1647
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    .line 1675
    .local v9, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1676
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v14, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1679
    .local v14, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v9, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_b5

    .line 1714
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v9    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_b5

    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v2, :cond_b5

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v2}, getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v8

    .line 1716
    .local v8, "addr":Ljava/net/Inet4Address;
    if-nez v8, :cond_239

    .line 1717
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, handleConnectionFailure(Z)V

    goto/16 :goto_b5

    .line 1723
    :cond_239
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v15, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1726
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v17

    .line 1727
    .local v17, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1728
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, mRemoteDisplayInterface:Ljava/lang/String;

    .line 1730
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1736
    .local v12, "initParam":Lorg/json/JSONObject;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, broadcastWfdState(I)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    if-eqz v2, :cond_2ae

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v2}, Landroid/media/WFDUibcManager;->start()Z

    .line 1744
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-static {v2, v4}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 1787
    const-string v2, "WifiDisplayController"

    const-string v4, "Wfd request type is normal"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1790
    .local v16, "platform":Ljava/lang/String;
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "platform info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/16 v20, 0x0

    .local v20, "support_width":I
    const/16 v19, 0x0

    .line 1793
    .local v19, "support_height":I
    const-string/jumbo v2, "exynos4"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_315

    const-string/jumbo v2, "exynos3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_315

    const-string/jumbo v2, "msm8226"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_315

    const-string/jumbo v2, "msm8916"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b2

    .line 1794
    :cond_315
    const/16 v20, 0x500

    const/16 v19, 0x2d0

    .line 1801
    :goto_319
    :try_start_319
    const-string/jumbo v2, "width"

    move/from16 v0, v20

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1802
    const-string/jumbo v2, "height"

    move/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1803
    const-string/jumbo v2, "fps"

    const/16 v4, 0x1e

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1804
    const-string/jumbo v2, "use_hdcp"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1805
    const-string/jumbo v2, "use_audio"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1806
    const-string/jumbo v2, "qoslevel"

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1807
    const-string/jumbo v2, "supportsProtectedBuffers"

    move-object/from16 v0, p0

    iget-boolean v4, v0, mSupportsProtectedBuffers:Z

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1808
    move-object/from16 v0, p0

    iget-boolean v2, v0, mRequestPendingSetup:Z

    if-eqz v2, :cond_368

    .line 1809
    const-string v2, "WifiDisplayController"

    const-string/jumbo v4, "initParam.put pending_setup"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string/jumbo v2, "pending_setup"

    move-object/from16 v0, p0

    iget-boolean v4, v0, mRequestPendingSetup:Z

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_368
    .catch Lorg/json/JSONException; {:try_start_319 .. :try_end_368} :catch_3b8

    .line 1816
    :cond_368
    :goto_368
    move-object/from16 v0, p0

    iget-boolean v2, v0, mRequestPendingSetup:Z

    if-eqz v2, :cond_37f

    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1818
    .restart local v3    # "display":Landroid/hardware/display/WifiDisplay;
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1823
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_37f
    new-instance v13, Lcom/android/server/display/WifiDisplayController$19;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1943
    .local v13, "listener":Landroid/media/RemoteDisplay$Listener;
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v13, v2, v4, v5}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1944
    move-object/from16 v0, p0

    iget-boolean v2, v0, mRequestPendingSetup:Z

    if-eqz v2, :cond_3c3

    .line 1945
    const-string v2, "WifiDisplayController"

    const-string v4, "Request PendingSetup. Skip to set RTSP timeout."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mRequestPendingSetup:Z

    goto/16 :goto_b5

    .line 1797
    .end local v13    # "listener":Landroid/media/RemoteDisplay$Listener;
    :cond_3b2
    const/16 v20, 0x780

    const/16 v19, 0x438

    goto/16 :goto_319

    .line 1812
    :catch_3b8
    move-exception v10

    .line 1813
    .local v10, "e":Lorg/json/JSONException;
    const-string v2, "WifiDisplayController"

    invoke-virtual {v10}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_368

    .line 1956
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v13    # "listener":Landroid/media/RemoteDisplay$Listener;
    :cond_3c3
    move-object/from16 v0, p0

    iget-boolean v2, v0, mWifiDisplayCertMode:Z

    if-eqz v2, :cond_3dd

    const/16 v18, 0x78

    .line 1959
    .local v18, "rtspTimeout":I
    :goto_3cb
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, mRtspTimeout:Ljava/lang/Runnable;

    move/from16 v0, v18

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b5

    .line 1956
    .end local v18    # "rtspTimeout":I
    :cond_3dd
    const/16 v18, 0x1e

    goto :goto_3cb
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1368
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1369
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_4b

    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1371
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1375
    iget-object v1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_4b

    iget-object v1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1377
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 1380
    :cond_4b
    return-void
.end method

.method private updateScanState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1155
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScanState() mScanRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mScanRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDiscoverPeersInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mDiscoverPeersInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScanRequestedInConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mScanRequestedInConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-boolean v0, p0, mScanRequested:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_61

    .line 1159
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    if-nez v0, :cond_60

    .line 1160
    const-string v0, "WifiDisplayController"

    const-string v1, "Starting Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput-boolean v4, p0, mDiscoverPeersInProgress:Z

    .line 1162
    invoke-direct {p0}, handleScanStarted()V

    .line 1163
    invoke-direct {p0}, tryDiscoverPeers()V

    .line 1201
    :cond_60
    :goto_60
    return-void

    .line 1166
    :cond_61
    iget-boolean v0, p0, mScanRequested:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p0, mScanRequestedInConnected:Z

    if-eqz v0, :cond_83

    .line 1167
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    if-nez v0, :cond_80

    .line 1168
    const-string v0, "WifiDisplayController"

    const-string v1, "Starting Wifi display scan for changing device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iput-boolean v4, p0, mDiscoverPeersInProgress:Z

    .line 1170
    invoke-direct {p0}, handleScanStarted()V

    .line 1171
    invoke-direct {p0}, tryDiscoverPeers()V

    .line 1173
    :cond_80
    iput-boolean v3, p0, mScanRequestedInConnected:Z

    goto :goto_60

    .line 1176
    :cond_83
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_60

    .line 1178
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1181
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mFullScanTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1188
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v1, :cond_d1

    .line 1189
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDesiredDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_d1
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_db

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_60

    .line 1193
    :cond_db
    const-string v0, "WifiDisplayController"

    const-string v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iput-boolean v3, p0, mDiscoverPeersInProgress:Z

    .line 1195
    const/16 v0, 0x64b

    iput v0, p0, mRequestedScanChannel:I

    .line 1196
    invoke-direct {p0}, stopPeerDiscovery()V

    .line 1197
    invoke-direct {p0}, handleScanFinished()V

    goto/16 :goto_60
.end method

.method private updateSettings()V
    .registers 15

    .prologue
    .line 424
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 426
    .local v6, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v11

    .line 427
    .local v11, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    .line 430
    const-string v0, "WifiDisplayController"

    const-string/jumbo v2, "updateSettings(), WifiDisplayController don\'t care for CONN_STATE_HOMESYNC_SCREEN_MIRRORING case."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_27
    :goto_27
    return-void

    .line 436
    :cond_28
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 438
    .local v8, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 441
    .local v9, "turningWifiDisplayOn":Z
    const-string/jumbo v0, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e6

    const/4 v9, 0x1

    .line 448
    :goto_3a
    const-string/jumbo v0, "wifi_display_certification_on"

    const/4 v2, 0x0

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e9

    const/4 v0, 0x1

    :goto_45
    iput-boolean v0, p0, mWifiDisplayCertMode:Z

    .line 451
    const/4 v0, 0x4

    iput v0, p0, mWifiDisplayWpsConfig:I

    .line 452
    iget-boolean v0, p0, mWifiDisplayCertMode:Z

    if-eqz v0, :cond_58

    .line 453
    const-string/jumbo v0, "wifi_display_wps_config"

    const/4 v2, 0x4

    invoke-static {v8, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mWifiDisplayWpsConfig:I

    .line 459
    :cond_58
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSettings, turningWifiDisplayOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWifiP2pConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiP2pConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRemoteDisplayConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWifiP2pEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mWaitForAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWaitForAction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "getCPUPowerSavingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getCPUPowerSavingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "getPowerSavingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getPowerSavingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mZeroSettingsConcept = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mZeroSettingsConcept:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz v9, :cond_284

    .line 462
    invoke-direct {p0}, isSideSyncConnected()Z

    move-result v0

    if-nez v0, :cond_db

    invoke-direct {p0}, isSideSyncAppRunning()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 463
    :cond_db
    const/4 v0, 0x1

    iput-boolean v0, p0, mWaitForAction:Z

    .line 464
    const v0, 0x22085

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 441
    :cond_e6
    const/4 v9, 0x0

    goto/16 :goto_3a

    .line 448
    :cond_e9
    const/4 v0, 0x0

    goto/16 :goto_45

    .line 466
    :cond_ec
    iget-boolean v0, p0, mWifiP2pConnected:Z

    if-eqz v0, :cond_ff

    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    if-nez v0, :cond_ff

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, mWaitForAction:Z

    .line 468
    const v0, 0x22072

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 470
    :cond_ff
    iget-boolean v0, p0, mHDMIConnected:Z

    if-eqz v0, :cond_10b

    .line 471
    const v0, 0x22074

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 473
    :cond_10b
    iget-boolean v0, p0, mWaitForAction:Z

    if-nez v0, :cond_133

    invoke-direct {p0}, getCPUPowerSavingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11d

    invoke-direct {p0}, getPowerSavingMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_128

    :cond_11d
    iget-boolean v0, p0, mZeroSettingsConcept:Z

    if-eqz v0, :cond_133

    invoke-direct {p0}, getPowerSavingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_133

    .line 474
    :cond_128
    const/4 v0, 0x1

    iput-boolean v0, p0, mWaitForAction:Z

    .line 475
    const v0, 0x22088

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 477
    :cond_133
    invoke-direct {p0}, isHotspotOn()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, mWaitForAction:Z

    .line 479
    const v0, 0x22075

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 481
    :cond_144
    invoke-direct {p0}, isWifiIbssEnabled()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, mWaitForAction:Z

    .line 483
    const v0, 0x22090

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 485
    :cond_155
    iget-boolean v0, p0, mLimitedContentsEnabled:Z

    if-eqz v0, :cond_18c

    .line 486
    iget-object v0, p0, mLimitedContentsType:Ljava/lang/String;

    if-nez v0, :cond_166

    .line 487
    const-string v0, "WifiDisplayController"

    const-string v2, "UHD : UHD extra data is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 491
    :cond_166
    iget-object v0, p0, mLimitedContentsType:Ljava/lang/String;

    const-string/jumbo v2, "recording"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 492
    const v0, 0x22087

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 493
    :cond_179
    iget-object v0, p0, mLimitedContentsType:Ljava/lang/String;

    const-string/jumbo v2, "playback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 494
    const v0, 0x22086

    invoke-direct {p0, v0}, requestPopup(I)V

    goto/16 :goto_27

    .line 498
    :cond_18c
    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-nez v0, :cond_272

    .line 499
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_279

    .line 500
    iput-boolean v9, p0, mWifiDisplayOnSetting:Z

    .line 502
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 503
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "true"

    aput-object v2, v4, v0

    .line 504
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "isWifiEnabled"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 507
    .local v12, "wifiEnabledCr":Landroid/database/Cursor;
    if-eqz v12, :cond_243

    .line 509
    :try_start_1b6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 510
    const-string/jumbo v0, "isWifiEnabled"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 511
    const-string v0, "WifiDisplayController"

    const-string/jumbo v2, "wifi restriction is on"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v13, Landroid/content/Intent;

    const-string v0, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v13, "wifiToastIntent":Landroid/content/Intent;
    const-string/jumbo v0, "info_type"

    const/4 v2, 0x2

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1f5
    .catchall {:try_start_1b6 .. :try_end_1f5} :catchall_23e

    .line 522
    .end local v13    # "wifiToastIntent":Landroid/content/Intent;
    :goto_1f5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 530
    :goto_1f8
    const/4 v10, 0x0

    .line 532
    .local v10, "userId":I
    :try_start_1f9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    .line 534
    iget-object v0, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_256

    iget-object v0, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_256

    .line 535
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_21d} :catch_21f

    goto/16 :goto_27

    .line 539
    :catch_21f
    move-exception v7

    .line 540
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "WifiDisplayController"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 517
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "userId":I
    :cond_22b
    :try_start_22b
    const-string v0, "WifiDisplayController"

    const-string/jumbo v2, "wifi restriction is off"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, mWifiP2pPrevState:Z

    .line 519
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    :try_end_23d
    .catchall {:try_start_22b .. :try_end_23d} :catchall_23e

    goto :goto_1f5

    .line 522
    :catchall_23e
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 525
    :cond_243
    const-string v0, "WifiDisplayController"

    const-string/jumbo v2, "wifi restriction is off"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, mWifiP2pPrevState:Z

    .line 527
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_1f8

    .line 536
    .restart local v10    # "userId":I
    :cond_256
    :try_start_256
    iget-object v0, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v10}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 537
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_270} :catch_21f

    goto/16 :goto_27

    .line 545
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "userId":I
    .end local v12    # "wifiEnabledCr":Landroid/database/Cursor;
    :cond_272
    iget-boolean v0, p0, mMirroringSwitching:Z

    if-nez v0, :cond_280

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, mWifiP2pPrevState:Z

    .line 571
    :cond_279
    :goto_279
    iput-boolean v9, p0, mWifiDisplayOnSetting:Z

    .line 575
    invoke-direct {p0}, updateWfdEnableState()V

    goto/16 :goto_27

    .line 548
    :cond_280
    const/4 v0, 0x0

    iput-boolean v0, p0, mMirroringSwitching:Z

    goto :goto_279

    .line 551
    :cond_284
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    if-eqz v0, :cond_28c

    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-nez v0, :cond_27

    .line 559
    :cond_28c
    const/4 v0, 0x0

    iput-boolean v0, p0, mWaitForAction:Z

    .line 562
    const-string v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSettings, mWifiP2pPrevState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiP2pPrevState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRestartTriggered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mRestartTriggered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isWifiConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-eqz v0, :cond_279

    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_279

    iget-boolean v0, p0, mWifiP2pPrevState:Z

    if-nez v0, :cond_279

    iget-boolean v0, p0, mRestartTriggered:Z

    if-nez v0, :cond_279

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_279

    iget-boolean v0, p0, mMirroringSwitching:Z

    if-nez v0, :cond_279

    .line 567
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_279
.end method

.method private updateWfdEnableState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1056
    iget-boolean v1, p0, mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, mWifiP2pEnabled:Z

    if-eqz v1, :cond_3c

    .line 1058
    iget-boolean v1, p0, mWfdEnabled:Z

    if-nez v1, :cond_3b

    iget-boolean v1, p0, mWfdEnabling:Z

    if-nez v1, :cond_3b

    .line 1059
    iput-boolean v2, p0, mWfdEnabling:Z

    .line 1061
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 1062
    .local v0, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 1063
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 1064
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 1067
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtection(Z)V

    .line 1069
    const/16 v1, 0x1c44

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 1070
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 1071
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1132
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_3b
    :goto_3b
    return-void

    .line 1096
    :cond_3c
    iget-boolean v1, p0, mWfdEnabled:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, mWfdEnabling:Z

    if-eqz v1, :cond_58

    .line 1097
    :cond_44
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 1098
    .restart local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 1099
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1117
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_58
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1118
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mFullScanTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    iput-boolean v4, p0, mWfdEnabling:Z

    .line 1122
    iput-boolean v4, p0, mWfdEnabled:Z

    .line 1123
    invoke-direct {p0}, reportFeatureState()V

    .line 1124
    invoke-direct {p0}, updateScanState()V

    .line 1127
    iget v1, p0, mConnectState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3b

    .line 1130
    invoke-direct {p0}, disconnect()V

    goto :goto_3b
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/high16 v7, 0x4000000

    const/4 v6, 0x1

    .line 2790
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastWfdState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2792
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2794
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2795
    if-nez p1, :cond_3d

    iget-boolean v3, p0, mDisconnectByUser:Z

    if-eqz v3, :cond_3d

    .line 2796
    const-string v3, "WifiDisplayController"

    const-string v4, "by_user : true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    const-string v3, "by_user"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2803
    :cond_3d
    const-string/jumbo v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2804
    .local v2, "platform":Ljava/lang/String;
    const-string/jumbo v3, "exynos4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2805
    const-string v3, "count"

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2808
    :cond_54
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2811
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastWfdSessionInfo << to AllShare FrameWork !!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "IP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mRemoteIP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2813
    .local v1, "mAllShareCastState":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2814
    if-ne p1, v6, :cond_a1

    .line 2815
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2817
    iget-object v3, p0, mRemoteIP:Ljava/lang/String;

    if-eqz v3, :cond_9b

    .line 2818
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_IPADDR"

    iget-object v4, p0, mRemoteIP:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2824
    :cond_9b
    :goto_9b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2826
    return-void

    .line 2822
    :cond_a1
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9b
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScanRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mScanRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_244
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 702
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_244

    .line 704
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_26b
    return-void
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-object v3, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 969
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 970
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_27
    const/4 v2, 0x1

    .line 974
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_28
    return v2
.end method

.method public isDongleRenameAvailable()Z
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_b

    .line 979
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->isDongleRenameAvailable()Z

    move-result v0

    .line 981
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isKDDIServiceConnected()Z
    .registers 2

    .prologue
    .line 987
    iget-boolean v0, p0, mKDDIServiceConnected:Z

    return v0
.end method

.method public isWifiConnected(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 880
    if-nez p1, :cond_c

    .line 881
    :try_start_3
    const-string v4, "WifiDisplayController"

    const-string/jumbo v5, "isWifiConnected context is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :goto_b
    return v3

    .line 885
    :cond_c
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 886
    .local v2, "manager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 887
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_20

    .line 888
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    goto :goto_b

    .line 890
    :cond_20
    const-string v4, "WifiDisplayController"

    const-string v5, "NetworkInfo is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_b

    .line 893
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    :catch_28
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "WifiDisplayController"

    const-string/jumbo v5, "nullpointerexception is occred"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 645
    const-string v0, "WifiDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, isRunningHomeSync:Z

    .line 648
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 652
    const-string v0, "WifiDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, isRunningHomeSync:Z

    .line 655
    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_22

    .line 1010
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameDongle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->setDeviceName(Ljava/lang/String;)V

    .line 1013
    :cond_22
    return-void
.end method

.method public requestClearConnectedDisplayInfo()V
    .registers 2

    .prologue
    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 964
    return-void
.end method

.method public requestConnect(ILjava/lang/String;)V
    .registers 6
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 750
    iput p1, p0, mConnectState:I

    .line 751
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 752
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 753
    const/4 v2, 0x0

    iput-boolean v2, p0, mPinRequired:Z

    .line 754
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_8

    .line 758
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_23
    return-void
.end method

.method public requestConnect(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 762
    iput p1, p0, mConnectState:I

    .line 764
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 765
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 766
    iput-boolean p3, p0, mRequestPendingSetup:Z

    .line 767
    const/4 v2, 0x0

    iput-boolean v2, p0, mPinRequired:Z

    .line 768
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_8

    .line 772
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_25
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 735
    const/4 v2, -0x1

    iput v2, p0, mConnectState:I

    .line 737
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 738
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 740
    const/4 v2, 0x0

    iput-boolean v2, p0, mPinRequired:Z

    .line 742
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_9

    .line 745
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_24
    return-void
.end method

.method public requestConnectWithPin(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2758
    const/4 v2, -0x1

    iput v2, p0, mConnectState:I

    .line 2759
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2760
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2761
    const/4 v2, 0x1

    iput-boolean v2, p0, mPinRequired:Z

    .line 2762
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_9

    .line 2766
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_24
    return-void
.end method

.method public requestDisableWiFiP2P()V
    .registers 4

    .prologue
    .line 661
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "disabling WiFi P2P"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_15

    .line 664
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "mWifiP2pManager is null!! check!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_14
    :goto_14
    return-void

    .line 669
    :cond_15
    invoke-direct {p0}, isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 670
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_14
.end method

.method public requestDisconnect()V
    .registers 2

    .prologue
    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, mDisconnectByUser:Z

    .line 1045
    invoke-direct {p0}, disconnect()V

    .line 1046
    return-void
.end method

.method public requestDisconnectForMirroringSwitching()V
    .registers 2

    .prologue
    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, mMirroringSwitching:Z

    .line 1051
    invoke-direct {p0}, disconnect()V

    .line 1053
    return-void
.end method

.method public requestPause()V
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_d

    .line 1026
    const/4 v0, 0x0

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 1028
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 1030
    :cond_d
    return-void
.end method

.method public requestResume()V
    .registers 2

    .prologue
    .line 1033
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_d

    .line 1035
    const/4 v0, 0x1

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 1037
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 1039
    :cond_d
    return-void
.end method

.method public requestSaveConnectedDisplayInfo()V
    .registers 4

    .prologue
    .line 776
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 821
    return-void
.end method

.method public requestStartScan()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 710
    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-nez v0, :cond_10

    .line 711
    iput-boolean v1, p0, mScanRequested:Z

    .line 712
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "mWifiP2pEnabled = false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_f
    :goto_f
    return-void

    .line 718
    :cond_10
    iget-boolean v0, p0, mScanRequested:Z

    if-nez v0, :cond_f

    .line 719
    iput-boolean v1, p0, mScanRequested:Z

    .line 720
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    if-eqz v0, :cond_1c

    .line 721
    iput-boolean v1, p0, mScanRequestedInConnected:Z

    .line 722
    :cond_1c
    invoke-direct {p0}, updateScanState()V

    goto :goto_f
.end method

.method public requestStartSettings()V
    .registers 6

    .prologue
    .line 619
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.CAST_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10020000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    const-string v2, "cause"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const/4 v2, 0x0

    iput-boolean v2, p0, mRestartTriggered:Z

    .line 623
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 628
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1a
    return-void

    .line 624
    :catch_1b
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intent call exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public requestStopScan()V
    .registers 2

    .prologue
    .line 727
    iget-boolean v0, p0, mScanRequested:Z

    if-eqz v0, :cond_a

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, mScanRequested:Z

    .line 729
    invoke-direct {p0}, updateScanState()V

    .line 731
    :cond_a
    return-void
.end method

.method public restartWifiDisplay()V
    .registers 3

    .prologue
    .line 2782
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "restartWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    const/4 v0, 0x1

    iput-boolean v0, p0, mRestartTriggered:Z

    .line 2784
    invoke-direct {p0}, disconnect()V

    .line 2786
    return-void
.end method

.method public setScanningChannel(I)V
    .registers 5
    .param p1, "requestedChannel"    # I

    .prologue
    .line 1017
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanningChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iput p1, p0, mRequestedScanChannel:I

    .line 1020
    return-void
.end method

.method public syncRemoteDisplayStatus(IZ)V
    .registers 6
    .param p1, "connectMode"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 2770
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRemoteDisplayStatus connectMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaitForAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mWaitForAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    iput p1, p0, mConnectState:I

    .line 2772
    iput-boolean p2, p0, mRemoteDisplayConnected:Z

    .line 2773
    iget-boolean v0, p0, mWaitForAction:Z

    if-eqz v0, :cond_3d

    .line 2774
    const/4 v0, 0x0

    iput-boolean v0, p0, mWaitForAction:Z

    .line 2775
    invoke-direct {p0}, updateSettings()V

    .line 2778
    :cond_3d
    return-void
.end method
