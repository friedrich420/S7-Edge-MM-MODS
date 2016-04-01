.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;
    }
.end annotation


# static fields
.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_LEASE_TIME:Ljava/lang/String; = "60"

.field private static final DHCP_DEFAULT_MAX_CLIENT:Ljava/lang/String; = "150"

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DNS_DEFAULTDUAL_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULTDUAL_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DNS_DEFAULTDUAL_SERVER3:Ljava/lang/String; = "2001:4860:4860::8888"

.field private static final DNS_DEFAULTDUAL_SERVER4:Ljava/lang/String; = "2001:4860:4860::8844"

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field public static final EXTRA_TETHERED_IFACE:Ljava/lang/String; = "tetheredClientIface"

.field public static final EXTRA_UPSTREAM_IFACE:Ljava/lang/String; = "tetheringUpstreamIface"

.field public static final EXTRA_UPSTREAM_INFO_DEFAULT:I = -0x1

.field public static final EXTRA_UPSTREAM_IP_TYPE:Ljava/lang/String; = "tetheringUpstreamIpType"

.field public static final EXTRA_UPSTREAM_UPDATE_TYPE:Ljava/lang/String; = "tetheringUpstreamUpdateType"

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MAXAP_NOTI_ID:I = 0x10408b0

.field private static MAX_CLIENTS:I = 0x0

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final STRING_MTP_ADB:Ljava/lang/String; = "mtp,adb"

.field private static final STRING_NCM:Ljava/lang/String; = "ncm"

.field private static final STRING_RNDIS_DIAG_MODEM:Ljava/lang/String; = "rndis,acm,diag"

.field private static final STRING_RNDIS_DM_MODEM:Ljava/lang/String; = "rndis,acm,dm"

.field private static final STRING_RNDIS_MODEM_ADB:Ljava/lang/String; = "rndis,acm,adb"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field public static final UPSTREAM_IFACE_CHANGED_ACTION:Ljava/lang/String; = "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field public static final WIFIAP_HIGH_TX_POWER_MODE:I = 0x1

.field public static final WIFIAP_LOW_TX_POWER_MODE:I = 0x0

.field private static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

.field private static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field public static final WIFIAP_STAND_BY_MODE_START:Ljava/lang/String; = "android.net.wifi.wifiap_stand_by_mode_start"

.field public static final WIFIAP_TX_POWER_MODE_CHANGED:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_changed"

.field public static final WIFIAP_TX_POWER_MODE_VALUE:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_value"

.field static final WIFI_AP_ON_ICON:[I

.field private static bExpireAlarm:Z = false

.field private static bStartAlarm:Z = false

.field private static clients:I = 0x0

.field private static defaultTimeoutValue:I = 0x0

.field private static final lowBatteryThreshold:I = 0xf

.field private static mBcmInterface:Ljava/lang/String;

.field private static mDhcpKnoxCustomRange:[Ljava/lang/String;

.field private static mIsPlugged:Z

.field private static mIsTetherActive:Z

.field private static mLastClients:I

.field private static mRVFMode:I

.field private static mTetheringPreState:I

.field private static mTetheringState:I

.field private static mWifiInterface:[Ljava/lang/String;


# instance fields
.field private add_client_event:Z

.field private bluetoothTethered:Z

.field private cstateDisable:Landroid/os/DVFSHelper;

.field private isWifiTetheredOnly:Z

.field private knoxUri:Landroid/net/Uri;

.field private locale_changed_event:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigNetworkTypeCapability:Ljava/lang/String;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCpaDnsSet:Z

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDefaultDualDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootComplete:Z

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLastNotificationId:I

.field private mLooper:Landroid/os/Looper;

.field private mLowBatteryNotification:Landroid/app/Notification;

.field private mMaxApNotification:Landroid/app/Notification;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNcmEnabled:Z

.field private mNcmTetherRequested:Z

.field private mPreferredUpstreamMobileApn:I

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPublicSync:Ljava/lang/Object;

.field private mRetryLimit:I

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mTetheredVendorNotification:Landroid/app/Notification;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherRequested:Z

.field private ncmTethered:Z

.field private supportedCPUCoreTable:[I

.field private wifiTethered:Z

.field private wifiVendorTethered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, MOBILE_TYPE:Ljava/lang/Integer;

    .line 223
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, HIPRI_TYPE:Ljava/lang/Integer;

    .line 224
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, DUN_TYPE:Ljava/lang/Integer;

    .line 249
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.42.254"

    aput-object v1, v0, v4

    const-string v1, "192.168.43.2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v6

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "192.168.49.2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "192.168.49.254"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "192.168.60.2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "192.168.60.254"

    aput-object v2, v0, v1

    sput-object v0, DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 258
    const-string/jumbo v0, "swlan0"

    sput-object v0, mBcmInterface:Ljava/lang/String;

    .line 315
    sput-boolean v3, mIsPlugged:Z

    .line 316
    sput v3, clients:I

    .line 317
    sput v3, mLastClients:I

    .line 318
    sput v3, mRVFMode:I

    .line 329
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, MAX_CLIENTS:I

    .line 342
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "192.168.102.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.102.254"

    aput-object v1, v0, v4

    sput-object v0, mDhcpKnoxCustomRange:[Ljava/lang/String;

    .line 349
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_c8

    sput-object v0, WIFI_AP_ON_ICON:[I

    .line 364
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 379
    sput-boolean v3, bExpireAlarm:Z

    .line 380
    sput-boolean v3, bStartAlarm:Z

    .line 381
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigMobileApDefaultTimeOut"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, defaultTimeoutValue:I

    .line 383
    sput-boolean v3, mIsTetherActive:Z

    .line 384
    sput v3, mTetheringState:I

    .line 385
    sput v3, mTetheringPreState:I

    return-void

    .line 349
    :array_c8
    .array-data 4
        0x1080795
        0x1080796
        0x1080797
        0x1080798
        0x1080799
        0x108079a
        0x108079b
        0x108079c
        0x108079d
        0x108079e
        0x108079f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 388
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 174
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 228
    const/4 v2, -0x1

    iput v2, p0, mPreferredUpstreamMobileApn:I

    .line 283
    iput v5, p0, mLastNotificationId:I

    .line 302
    iput-boolean v5, p0, ncmTethered:Z

    .line 305
    iput-object v6, p0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 306
    iput-object v6, p0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 307
    iput-object v6, p0, cstateDisable:Landroid/os/DVFSHelper;

    .line 311
    iput-boolean v5, p0, mCpaDnsSet:Z

    .line 320
    iput-boolean v5, p0, add_client_event:Z

    .line 321
    iput-boolean v5, p0, locale_changed_event:Z

    .line 322
    iput-boolean v5, p0, wifiTethered:Z

    .line 323
    iput-boolean v5, p0, isWifiTetheredOnly:Z

    .line 324
    iput-boolean v5, p0, wifiVendorTethered:Z

    .line 325
    iput-boolean v5, p0, bluetoothTethered:Z

    .line 326
    iput-object v6, p0, mLowBatteryNotification:Landroid/app/Notification;

    .line 328
    iput-object v6, p0, mMaxApNotification:Landroid/app/Notification;

    .line 337
    iput-object v6, p0, knoxUri:Landroid/net/Uri;

    .line 341
    iput-object v6, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 346
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 483
    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v2, p0, mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 389
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 390
    iput-object p2, p0, mNMService:Landroid/os/INetworkManagementService;

    .line 391
    iput-object p3, p0, mStatsService:Landroid/net/INetworkStatsService;

    .line 392
    iput-object p4, p0, mConnService:Landroid/net/IConnectivityManager;

    .line 393
    iput-object p5, p0, mLooper:Landroid/os/Looper;

    .line 395
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mPublicSync:Ljava/lang/Object;

    .line 397
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mIfaces:Ljava/util/HashMap;

    .line 400
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, mLooper:Landroid/os/Looper;

    .line 401
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v3, "TetherMaster"

    iget-object v4, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 402
    iget-object v2, p0, mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 404
    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v2, p0, v6}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v2, p0, mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v2, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v2, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mDhcpRange:[Ljava/lang/String;

    .line 433
    iget-object v2, p0, mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_f5

    iget-object v2, p0, mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v7, :cond_100

    .line 434
    :cond_f5
    sget-object v2, DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v2, p0, mDhcpRange:[Ljava/lang/String;

    .line 435
    const-string v2, "Tethering"

    const-string v3, "Setting DHCP To default Range"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_100
    invoke-virtual {p0}, updateConfiguration()V

    .line 442
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, mDefaultDnsServers:[Ljava/lang/String;

    .line 443
    iget-object v2, p0, mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v5

    .line 444
    iget-object v2, p0, mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v7

    .line 446
    new-array v2, v7, [Ljava/lang/String;

    sput-object v2, mWifiInterface:[Ljava/lang/String;

    .line 447
    sget-object v2, mWifiInterface:[Ljava/lang/String;

    sget-object v3, mBcmInterface:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 450
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, mDefaultDualDnsServers:[Ljava/lang/String;

    .line 451
    iget-object v2, p0, mDefaultDualDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v5

    .line 452
    iget-object v2, p0, mDefaultDualDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v7

    .line 453
    iget-object v2, p0, mDefaultDualDnsServers:[Ljava/lang/String;

    const-string v3, "2001:4860:4860::8888"

    aput-object v3, v2, v8

    .line 454
    iget-object v2, p0, mDefaultDualDnsServers:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "2001:4860:4860::8844"

    aput-object v4, v2, v3

    .line 459
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v2

    iput-object v2, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 463
    const-string v2, "TEL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 464
    iput v7, p0, mRetryLimit:I

    .line 470
    :cond_155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 471
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_163

    .line 472
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 475
    :cond_163
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, wifiTethered:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, locale_changed_event:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget v0, p0, mLastNotificationId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, showTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, wifiVendorTethered:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, showTetheredVendorNotification(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, bluetoothTethered:Z

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .prologue
    .line 167
    sget v0, mRVFMode:I

    return v0
.end method

.method static synthetic access$1900()I
    .registers 1

    .prologue
    .line 167
    sget v0, clients:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 167
    sput p0, clients:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 167
    sput p0, mLastClients:I

    return p0
.end method

.method static synthetic access$2102(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, add_client_event:Z

    return p1
.end method

.method static synthetic access$2200()I
    .registers 1

    .prologue
    .line 167
    sget v0, MAX_CLIENTS:I

    return v0
.end method

.method static synthetic access$2300()I
    .registers 1

    .prologue
    .line 167
    sget v0, defaultTimeoutValue:I

    return v0
.end method

.method static synthetic access$2400()Z
    .registers 1

    .prologue
    .line 167
    sget-boolean v0, bExpireAlarm:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 167
    sput-boolean p0, bExpireAlarm:Z

    return p0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 167
    sget-boolean v0, bStartAlarm:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 167
    sput-boolean p0, bStartAlarm:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    invoke-direct {p0}, showLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    invoke-direct {p0}, clearLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .registers 1

    .prologue
    .line 167
    sget-boolean v0, mIsPlugged:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 167
    sput-boolean p0, mIsPlugged:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, mIsBootComplete:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, mIsBootComplete:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/connectivity/Tethering;Landroid/app/enterprise/knoxcustom/SystemManager;)Landroid/app/enterprise/knoxcustom/SystemManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/app/enterprise/knoxcustom/SystemManager;

    .prologue
    .line 167
    iput-object p1, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    invoke-direct {p0}, isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, blockInternetSharingByActiveSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mConfigNetworkTypeCapability:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    invoke-direct {p0}, sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    invoke-direct {p0}, showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/connectivity/Tethering;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget v0, p0, mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    invoke-direct {p0}, getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, mNcmEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, mNcmEnabled:Z

    return p1
.end method

.method static synthetic access$7300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 167
    sget-object v0, mDhcpKnoxCustomRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, mCpaDnsSet:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-boolean v0, p0, mNcmTetherRequested:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, mNcmTetherRequested:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/connectivity/Tethering;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget v0, p0, mRetryLimit:I

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 167
    iget-object v0, p0, mDefaultDualDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, tetherNcm(Z)V

    return-void
.end method

.method private blockInternetSharingByActiveSync(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v2, p0, mIfaces:Ljava/util/HashMap;

    monitor-enter v2

    .line 650
    :try_start_3
    iget-object v1, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 651
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_2d

    .line 652
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActiveSync] Tried to Untether an unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    monitor-exit v2

    .line 657
    :goto_2c
    return-void

    .line 655
    :cond_2d
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 656
    monitor-exit v2

    goto :goto_2c

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private clearLowBatteryNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1326
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1328
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1d

    iget-object v1, p0, mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1d

    .line 1329
    iget-object v1, p0, mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1330
    iput-object v3, p0, mLowBatteryNotification:Landroid/app/Notification;

    .line 1332
    :cond_1d
    return-void
.end method

.method private clearTetheredNotification()V
    .registers 5

    .prologue
    .line 1279
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1281
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1c

    iget v1, p0, mLastNotificationId:I

    if-eqz v1, :cond_1c

    .line 1282
    const/4 v1, 0x0

    iget v2, p0, mLastNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1284
    const/4 v1, 0x0

    iput v1, p0, mLastNotificationId:I

    .line 1286
    :cond_1c
    return-void
.end method

.method private clearTetheredVendorNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1269
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1271
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1d

    iget-object v1, p0, mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1d

    .line 1272
    iget-object v1, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1274
    iput-object v3, p0, mTetheredVendorNotification:Landroid/app/Notification;

    .line 1276
    :cond_1d
    return-void
.end method

.method private configureUsbIface(Z)Z
    .registers 19
    .param p1, "enabled"    # Z

    .prologue
    .line 1825
    const-string v14, "Tethering"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "configureUsbIface("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const/4 v14, 0x0

    new-array v7, v14, [Ljava/lang/String;

    .line 1829
    .local v7, "ifaces":[Ljava/lang/String;
    const/16 v2, 0x14b

    .line 1830
    .local v2, "addressType":I
    const/4 v13, 0x0

    .line 1832
    .local v13, "tempAddr":Ljava/lang/String;
    :try_start_26
    move-object/from16 v0, p0

    iget-object v14, v0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v14}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_a9

    move-result-object v7

    .line 1837
    move-object v3, v7

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_31
    if-ge v5, v10, :cond_d2

    aget-object v6, v3, v5

    .line 1838
    .local v6, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, isUsb(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a6

    .line 1839
    const/4 v8, 0x0

    .line 1841
    .local v8, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v14, v0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v8

    .line 1842
    const-string v11, "00:00:00:00:00:00"

    .line 1844
    .local v11, "mHwAddr":Ljava/lang/String;
    if-eqz v8, :cond_a6

    invoke-virtual {v8}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a6

    .line 1846
    const-string v12, "192.168.42.129"

    .line 1847
    .local v12, "nearIfaceAddr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1848
    .local v9, "knoxCustomUsbNetState":Z
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v14, :cond_79

    .line 1850
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v14}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v14

    if-eqz v14, :cond_79

    .line 1851
    const-string v14, "Tethering"

    const-string v15, "Set USB Net Source Address"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v9, 0x1

    .line 1853
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    const/16 v15, 0x14b

    invoke-virtual {v14, v15}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v12

    .line 1856
    :cond_79
    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1858
    .local v1, "addr":Ljava/net/InetAddress;
    new-instance v14, Landroid/net/LinkAddress;

    const/16 v15, 0x18

    invoke-direct {v14, v1, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v14}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1859
    if-eqz p1, :cond_b3

    .line 1860
    invoke-virtual {v8}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1864
    :goto_8c
    const-string/jumbo v14, "running"

    invoke-virtual {v8, v14}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1866
    if-eqz v9, :cond_9f

    .line 1868
    const-string/jumbo v14, "multicast"

    invoke-virtual {v8, v14}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1869
    const-string v14, "broadcast"

    invoke-virtual {v8, v14}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1872
    :cond_9f
    move-object/from16 v0, p0

    iget-object v14, v0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v14, v6, v8}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_a6} :catch_b7

    .line 1837
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v8    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v9    # "knoxCustomUsbNetState":Z
    .end local v11    # "mHwAddr":Ljava/lang/String;
    .end local v12    # "nearIfaceAddr":Ljava/lang/String;
    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1833
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "iface":Ljava/lang/String;
    .end local v10    # "len$":I
    :catch_a9
    move-exception v4

    .line 1834
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "Tethering"

    const-string v15, "Error listing Interfaces"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1835
    const/4 v14, 0x0

    .line 1881
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_b2
    return v14

    .line 1862
    .restart local v1    # "addr":Ljava/net/InetAddress;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "iface":Ljava/lang/String;
    .restart local v8    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v9    # "knoxCustomUsbNetState":Z
    .restart local v10    # "len$":I
    .restart local v11    # "mHwAddr":Ljava/lang/String;
    .restart local v12    # "nearIfaceAddr":Ljava/lang/String;
    :cond_b3
    :try_start_b3
    invoke-virtual {v8}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_8c

    .line 1874
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v9    # "knoxCustomUsbNetState":Z
    .end local v11    # "mHwAddr":Ljava/lang/String;
    .end local v12    # "nearIfaceAddr":Ljava/lang/String;
    :catch_b7
    move-exception v4

    .line 1875
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v14, "Tethering"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error configuring interface "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    const/4 v14, 0x0

    goto :goto_b2

    .line 1881
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "iface":Ljava/lang/String;
    .end local v8    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_d2
    const/4 v14, 0x1

    goto :goto_b2
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getRvfMode()I
    .registers 7

    .prologue
    .line 1383
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1384
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1385
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1386
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1387
    .local v0, "mRvfMode":I
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRvfMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return v0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .registers 6

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 662
    .local v1, "userId":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 663
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current userid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_23} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_23} :catch_4b

    .line 669
    :goto_23
    const-string/jumbo v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 671
    :try_start_30
    iget-object v2, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_58

    .line 672
    const-string v2, "Tethering"

    const-string v3, "[ActiveSync] internet sharing is blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_54

    .line 673
    const/4 v2, 0x1

    .line 679
    :goto_41
    return v2

    .line 664
    :catch_42
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Tethering"

    const-string v3, "Failed getting userId using ActivityManagerNative"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_4b
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Tethering"

    const-string v3, "Failed getting userId using ActivityManagerNative"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 675
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_54
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_58
    const-string v2, "Tethering"

    const-string v3, "[ActiveSync] internet sharing is NOT blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, 0x0

    goto :goto_41
.end method

.method private isLightTheme()Z
    .registers 3

    .prologue
    .line 690
    const-string/jumbo v0, "white"

    const-string/jumbo v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v5, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 576
    :try_start_3
    iget-object v0, p0, mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 577
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    .line 579
    .end local v3    # "regex":Ljava/lang/String;
    :goto_13
    return v4

    .line 576
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 579
    .end local v3    # "regex":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    .line 580
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public static isWifiOnly()Z
    .registers 2

    .prologue
    .line 3997
    const-string/jumbo v0, "wifi-only"

    const-string/jumbo v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyTetheringActiveToRIL(Z)V
    .registers 11
    .param p1, "tetherActive"    # Z

    .prologue
    .line 2327
    sget-boolean v6, mIsTetherActive:Z

    if-ne v6, p1, :cond_5

    .line 2358
    :cond_4
    :goto_4
    return-void

    .line 2330
    :cond_5
    sput-boolean p1, mIsTetherActive:Z

    .line 2331
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2332
    .local v4, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_1d

    .line 2333
    const-string v6, "Tethering"

    const-string/jumbo v7, "notifyTetheringActiveToRIL skip send Tether Active to RIL- phone service is not ready"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2336
    :cond_1d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2337
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2338
    .local v1, "dos":Ljava/io/DataOutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2340
    .local v5, "respBos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x9

    :try_start_2e
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2341
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2342
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2343
    if-eqz p1, :cond_78

    const/4 v6, 0x1

    :goto_3d
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2344
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    .line 2345
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send Tether Active to RIL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_64} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_64} :catch_95

    .line 2352
    :goto_64
    if-eqz v1, :cond_69

    :try_start_66
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 2353
    :cond_69
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6e} :catch_6f

    goto :goto_4

    .line 2354
    :catch_6f
    move-exception v3

    .line 2355
    .local v3, "ex":Ljava/io/IOException;
    const-string v6, "Tethering"

    const-string v7, "close fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2343
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_78
    const/4 v6, 0x0

    goto :goto_3d

    .line 2346
    :catch_7a
    move-exception v2

    .line 2347
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception occured during send Tether Active to RIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 2348
    .end local v2    # "e":Ljava/io/IOException;
    :catch_95
    move-exception v2

    .line 2349
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception occured during send Tether Active to RIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method public static readOMCSalesCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3982
    const-string v0, ""

    .line 3984
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3985
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    if-nez v0, :cond_2b

    .line 3986
    :cond_13
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3987
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    if-nez v0, :cond_2b

    .line 3988
    :cond_24
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 3992
    :cond_2b
    :goto_2b
    return-object v0

    .line 3991
    :catch_2c
    move-exception v1

    goto :goto_2b
.end method

.method public static readSalesCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3970
    const-string v0, ""

    .line 3972
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3973
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 3974
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v0

    .line 3977
    :cond_16
    :goto_16
    return-object v0

    .line 3976
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 24

    .prologue
    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 843
    .local v11, "cr":Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "enabled"

    const-string v3, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v11, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1053
    :cond_21
    :goto_21
    return-void

    .line 847
    :cond_22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v9, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v8, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v12, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, wifiTethered:Z

    .line 852
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, wifiVendorTethered:Z

    .line 853
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, ncmTethered:Z

    .line 854
    const/16 v21, 0x0

    .line 855
    .local v21, "usbTethered":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, bluetoothTethered:Z

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 858
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v2, v0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 859
    .local v16, "ifaces":Ljava/util/Set;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 860
    .local v15, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 861
    .local v18, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v18, :cond_58

    .line 862
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 863
    check-cast v15, Ljava/lang/String;

    .end local v15    # "iface":Ljava/lang/Object;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 891
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "ifaces":Ljava/util/Set;
    .end local v18    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_7a
    move-exception v2

    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_4c .. :try_end_7c} :catchall_7a

    throw v2

    .line 864
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "iface":Ljava/lang/Object;
    .restart local v16    # "ifaces":Ljava/util/Set;
    .restart local v18    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7d
    :try_start_7d
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 865
    check-cast v15, Ljava/lang/String;

    .end local v15    # "iface":Ljava/lang/Object;
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 866
    .restart local v15    # "iface":Ljava/lang/Object;
    :cond_89
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 867
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, isUsb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 868
    const/16 v21, 0x1

    .line 870
    const-string/jumbo v4, "ncm0"

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 871
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, ncmTethered:Z

    .line 887
    :cond_af
    :goto_af
    check-cast v15, Ljava/lang/String;

    .end local v15    # "iface":Ljava/lang/Object;
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 874
    .restart local v15    # "iface":Ljava/lang/Object;
    :cond_b5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, ncmTethered:Z

    goto :goto_af

    .line 877
    :cond_bb
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, isWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 878
    const-string v2, "VZW"

    sget-object v4, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    const-string v2, "SPRINT"

    sget-object v4, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 879
    :cond_db
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, wifiVendorTethered:Z

    .line 883
    :goto_e0
    invoke-direct/range {p0 .. p0}, getRvfMode()I

    move-result v2

    sput v2, mRVFMode:I

    goto :goto_af

    .line 881
    :cond_e7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, wifiTethered:Z

    goto :goto_e0

    .line 884
    :cond_ed
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, isBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 885
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, bluetoothTethered:Z

    goto :goto_af

    .line 891
    .end local v15    # "iface":Ljava/lang/Object;
    .end local v18    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_ff
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_7d .. :try_end_100} :catchall_7a

    .line 892
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v10, "broadcast":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 895
    const-string v2, "availableArray"

    invoke-virtual {v10, v2, v9}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 897
    const-string v2, "activeArray"

    invoke-virtual {v10, v2, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 898
    const-string/jumbo v2, "erroredArray"

    invoke-virtual {v10, v2, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 902
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTetherStateChangedBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_333

    const/4 v2, 0x1

    :goto_165
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, notifyTetheringActiveToRIL(Z)V

    .line 911
    move-object/from16 v0, p0

    iget-boolean v2, v0, wifiVendorTethered:Z

    if-eqz v2, :cond_34a

    sget v2, mRVFMode:I

    if-nez v2, :cond_34a

    .line 912
    const-string v2, "VZW"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_336

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/StatusBarManager;

    .line 914
    .local v19, "statusBar":Landroid/app/StatusBarManager;
    const v2, 0x10807bf

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredVendorNotification(I)V

    .line 915
    sget-object v2, WIFI_AP_ON_ICON:[I

    sget v3, clients:I

    aget v14, v2, v3

    .line 916
    .local v14, "iconId":I
    const-string/jumbo v2, "wifi_ap"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 917
    const-string/jumbo v2, "wifi_ap"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 935
    .end local v14    # "iconId":I
    .end local v19    # "statusBar":Landroid/app/StatusBarManager;
    :cond_1ac
    :goto_1ac
    move-object/from16 v0, p0

    iget-boolean v2, v0, wifiTethered:Z

    if-nez v2, :cond_1e2

    move-object/from16 v0, p0

    iget-boolean v2, v0, wifiVendorTethered:Z

    if-nez v2, :cond_1e2

    .line 936
    const/4 v2, 0x0

    sput v2, clients:I

    .line 937
    const/4 v2, 0x0

    sput v2, mLastClients:I

    .line 938
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d2

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 940
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v2, v0, mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v2, :cond_1e2

    .line 941
    const-string v2, "Tethering"

    const-string v3, "clearLowBatteryNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct/range {p0 .. p0}, clearLowBatteryNotification()V

    .line 946
    :cond_1e2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, isWifiTetheredOnly:Z

    .line 947
    if-eqz v21, :cond_3a9

    .line 948
    move-object/from16 v0, p0

    iget-boolean v2, v0, wifiTethered:Z

    if-nez v2, :cond_1f5

    move-object/from16 v0, p0

    iget-boolean v2, v0, bluetoothTethered:Z

    if-eqz v2, :cond_381

    .line 949
    :cond_1f5
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_209

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_377

    .line 951
    :cond_209
    const v2, 0x10807bb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    .line 1000
    :goto_211
    if-eqz v21, :cond_476

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_26f

    .line 1002
    new-instance v2, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string v4, "UsbTethering"

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, supportedCPUCoreTable:[I

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, supportedCPUCoreTable:[I

    if-eqz v2, :cond_26f

    .line 1005
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbTethering supportedCPUCoreTable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, supportedCPUCoreTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v3, "CORE_NUM"

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 1011
    :cond_26f
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_311

    .line 1012
    new-instance v2, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v20

    .line 1016
    .local v20, "supportedCPUFreqTable":[I
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I

    move-result v17

    .line 1017
    .local v17, "properFreq":I
    const v2, 0x118c30

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1019
    .local v22, "valueFreq":I
    if-eqz v20, :cond_46f

    .line 1020
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxFreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "properFreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "valueFreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    move-object/from16 v0, p0

    iget-object v4, v0, mCpuBooster:Landroid/os/DVFSHelper;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 1033
    .end local v17    # "properFreq":I
    .end local v20    # "supportedCPUFreqTable":[I
    .end local v22    # "valueFreq":I
    :cond_311
    :goto_311
    move-object/from16 v0, p0

    iget-object v2, v0, cstateDisable:Landroid/os/DVFSHelper;

    if-nez v2, :cond_21

    .line 1034
    new-instance v2, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string v4, "UsbTethering"

    const/16 v5, 0x16

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, cstateDisable:Landroid/os/DVFSHelper;

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, cstateDisable:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    goto/16 :goto_21

    .line 908
    :cond_333
    const/4 v2, 0x0

    goto/16 :goto_165

    .line 918
    :cond_336
    const-string v2, "SPRINT"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 919
    const v2, 0x10807be

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredVendorNotification(I)V

    goto/16 :goto_1ac

    .line 922
    :cond_34a
    const-string v2, "VZW"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_372

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/StatusBarManager;

    .line 924
    .restart local v19    # "statusBar":Landroid/app/StatusBarManager;
    const-string/jumbo v2, "wifi_ap"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 925
    const-string/jumbo v2, "wifi_ap"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 927
    .end local v19    # "statusBar":Landroid/app/StatusBarManager;
    :cond_372
    invoke-direct/range {p0 .. p0}, clearTetheredVendorNotification()V

    goto/16 :goto_1ac

    .line 953
    :cond_377
    const v2, 0x10807ba

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 956
    :cond_381
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_395

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39f

    .line 958
    :cond_395
    const v2, 0x10807bb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 960
    :cond_39f
    const v2, 0x10807bc

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 963
    :cond_3a9
    move-object/from16 v0, p0

    iget-boolean v2, v0, wifiTethered:Z

    if-eqz v2, :cond_40c

    .line 964
    move-object/from16 v0, p0

    iget-boolean v2, v0, bluetoothTethered:Z

    if-nez v2, :cond_3b7

    if-eqz v21, :cond_3df

    .line 965
    :cond_3b7
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3cb

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d5

    .line 967
    :cond_3cb
    const v2, 0x10807bb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 969
    :cond_3d5
    const v2, 0x10807ba

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 972
    :cond_3df
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f3

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3fd

    .line 974
    :cond_3f3
    const v2, 0x10807bb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 976
    :cond_3fd
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, isWifiTetheredOnly:Z

    .line 977
    const v2, 0x10807bd

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 980
    :cond_40c
    move-object/from16 v0, p0

    iget-boolean v2, v0, bluetoothTethered:Z

    if-eqz v2, :cond_46a

    .line 981
    move-object/from16 v0, p0

    iget-boolean v2, v0, wifiTethered:Z

    if-nez v2, :cond_41a

    if-eqz v21, :cond_442

    .line 982
    :cond_41a
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42e

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_438

    .line 984
    :cond_42e
    const v2, 0x10807bb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 986
    :cond_438
    const v2, 0x10807ba

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 989
    :cond_442
    const-string v2, "TMO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_456

    const-string v2, "NEWCO"

    sget-object v3, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_460

    .line 991
    :cond_456
    const v2, 0x10807bb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 993
    :cond_460
    const v2, 0x10807b9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, showTetheredNotification(I)V

    goto/16 :goto_211

    .line 997
    :cond_46a
    invoke-direct/range {p0 .. p0}, clearTetheredNotification()V

    goto/16 :goto_211

    .line 1029
    .restart local v17    # "properFreq":I
    .restart local v20    # "supportedCPUFreqTable":[I
    .restart local v22    # "valueFreq":I
    :cond_46f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    goto/16 :goto_311

    .line 1039
    .end local v17    # "properFreq":I
    .end local v20    # "supportedCPUFreqTable":[I
    .end local v22    # "valueFreq":I
    :cond_476
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_488

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 1041
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 1043
    :cond_488
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_49a

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 1045
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 1047
    :cond_49a
    move-object/from16 v0, p0

    iget-object v2, v0, cstateDisable:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_21

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, cstateDisable:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 1049
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, cstateDisable:Landroid/os/DVFSHelper;

    goto/16 :goto_21
.end method

.method private sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .registers 9
    .param p1, "upstreamIface"    # Ljava/lang/String;
    .param p2, "tetheredIface"    # Ljava/lang/String;
    .param p3, "ip_type"    # I
    .param p4, "update_type"    # Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .prologue
    .line 1058
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpstreamIfaceChangeBroadcast upstreamIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tetheredIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IP Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " update_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tetheringUpstreamIface"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string/jumbo v1, "tetheredClientIface"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const-string/jumbo v1, "tetheringUpstreamIpType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    const-string/jumbo v1, "tetheringUpstreamUpdateType"

    invoke-virtual {p4}, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1068
    return-void
.end method

.method private sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 1413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1415
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1416
    return-void
.end method

.method private setWifiApTxPowerMode(I)I
    .registers 10
    .param p1, "newValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 1391
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1392
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfigTxPower(I)Z

    .line 1394
    iget-boolean v5, p0, mIsBootComplete:Z

    if-eqz v5, :cond_24

    .line 1395
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.wifiap_tx_power_mode_changed"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "android.net.wifi.wifiap_tx_power_mode_value"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1397
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1399
    .end local v2    # "i":Landroid/content/Intent;
    :cond_24
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1400
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "wifi_ap_tx_power_changed_by_service"

    if-nez p1, :cond_5c

    move v5, v6

    :goto_30
    invoke-static {v1, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1401
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_5b

    invoke-direct {p0}, getRvfMode()I

    move-result v5

    if-nez v5, :cond_5b

    .line 1402
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1403
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0xc3

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1405
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "txPower"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1407
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    .line 1409
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5b
    return v6

    .line 1400
    :cond_5c
    const/4 v5, 0x1

    goto :goto_30
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 683
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104084f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 685
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {p0}, isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_2f

    const v2, 0x103012b

    :goto_24
    invoke-direct {v0, v3, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 686
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 687
    return-void

    .line 685
    .end local v0    # "context":Landroid/content/Context;
    :cond_2f
    const v2, 0x1030128

    goto :goto_24
.end method

.method private showLowBatteryNotification()V
    .registers 14

    .prologue
    .line 1289
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1291
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    if-nez v9, :cond_e

    .line 1323
    :goto_d
    return-void

    .line 1295
    :cond_e
    const v6, 0x108008a

    .line 1296
    .local v6, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1297
    .local v11, "r":Landroid/content/res/Resources;
    const-string v12, ""

    .line 1298
    .local v12, "title":Ljava/lang/CharSequence;
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1299
    .local v7, "mDeviceType":Ljava/lang/String;
    if-eqz v7, :cond_82

    const-string v0, "biscotto"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1300
    const-string v12, "Battery is below 15%."

    .line 1304
    :goto_2a
    const v0, 0x10408af

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1306
    .local v8, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1307
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1309
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1312
    .local v10, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    if-nez v0, :cond_5e

    .line 1313
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    .line 1314
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1317
    :cond_5e
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    iput v6, v0, Landroid/app/Notification;->icon:I

    .line 1318
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1319
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    iput-object v12, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1320
    iget-object v0, p0, mLowBatteryNotification:Landroid/app/Notification;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v12, v8, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1322
    const/4 v0, 0x0

    iget-object v1, p0, mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, mLowBatteryNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_d

    .line 1302
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    :cond_82
    const v0, 0x10408ae

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_2a
.end method

.method private showTetheredNotification(I)V
    .registers 13
    .param p1, "icon"    # I

    .prologue
    .line 1152
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 1154
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_e

    .line 1266
    :cond_d
    :goto_d
    return-void

    .line 1157
    :cond_e
    const-string v0, "ATT"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1160
    :cond_1e
    invoke-direct {p0}, getRvfMode()I

    move-result v0

    if-gtz v0, :cond_d

    .line 1163
    iget-boolean v0, p0, ncmTethered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 1164
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ncmTethered is :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, ncmTethered:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", so it is not showing noti"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1167
    :cond_4b
    iget v0, p0, mLastNotificationId:I

    if-eqz v0, :cond_69

    .line 1168
    iget v0, p0, mLastNotificationId:I

    if-ne v0, p1, :cond_5b

    iget-boolean v0, p0, add_client_event:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, locale_changed_event:Z

    if-eqz v0, :cond_d

    .line 1175
    :cond_5b
    const/4 v0, 0x0

    iput-boolean v0, p0, add_client_event:Z

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, locale_changed_event:Z

    .line 1177
    const/4 v0, 0x0

    iget v1, p0, mLastNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1181
    :cond_69
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 1182
    .local v9, "r":Landroid/content/res/Resources;
    sget v0, clients:I

    if-lez v0, :cond_140

    .line 1183
    sget v0, clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11c

    .line 1184
    const v0, 0x10408ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1192
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_7d
    const-string v0, "VZW"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "SPRINT"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1193
    :cond_91
    const v0, 0x10408a9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1196
    :cond_98
    const v0, 0x1040456

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1198
    .local v6, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1200
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "SBM"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 1201
    const-string/jumbo v0, "jp.softbank.mb.tether"

    const-string/jumbo v1, "jp.softbank.mb.tether.TetherBootCheck"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    :goto_b7
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1211
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1249
    .local v8, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_f9

    .line 1250
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1251
    iget-object v0, p0, mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1258
    :cond_f9
    iget-object v0, p0, mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1262
    iput p1, p0, mLastNotificationId:I

    .line 1264
    const/4 v0, 0x0

    iget v1, p0, mLastNotificationId:I

    iget-object v3, p0, mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    .line 1186
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "message":Ljava/lang/CharSequence;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_11c
    const v0, 0x10408ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_7d

    .line 1189
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_140
    const v0, 0x1040455

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_7d

    .line 1203
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v6    # "message":Ljava/lang/CharSequence;
    :cond_149
    iget-boolean v0, p0, isWifiTetheredOnly:Z

    if-eqz v0, :cond_156

    .line 1204
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_b7

    .line 1206
    :cond_156
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_b7
.end method

.method private showTetheredVendorNotification(I)V
    .registers 13
    .param p1, "icon"    # I

    .prologue
    .line 1070
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 1072
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_e

    .line 1150
    :cond_d
    :goto_d
    return-void

    .line 1076
    :cond_e
    invoke-direct {p0}, getRvfMode()I

    move-result v0

    if-gtz v0, :cond_d

    .line 1079
    const-string v0, "TMO"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "NEWCO"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1081
    :cond_28
    const p1, 0x10807bb

    .line 1084
    :cond_2b
    iget v0, p0, mLastNotificationId:I

    if-eqz v0, :cond_4c

    .line 1085
    iget v0, p0, mLastNotificationId:I

    if-ne v0, p1, :cond_3b

    iget-boolean v0, p0, add_client_event:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, locale_changed_event:Z

    if-eqz v0, :cond_d

    .line 1088
    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, add_client_event:Z

    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, locale_changed_event:Z

    .line 1090
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v0, :cond_4c

    .line 1091
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1094
    :cond_4c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 1096
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x1040456

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1098
    .local v6, "message":Ljava/lang/CharSequence;
    const-string v0, "SPRINT"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    sget v0, clients:I

    if-lez v0, :cond_10c

    .line 1099
    sget v0, clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e8

    .line 1100
    const v0, 0x10408ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1108
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_71
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    if-nez v0, :cond_82

    .line 1109
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    .line 1110
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1114
    :cond_82
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1115
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1117
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1120
    .local v8, "pi":Landroid/app/PendingIntent;
    const-string v0, "VZW"

    sget-object v1, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1121
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 1122
    sget v0, clients:I

    if-lez v0, :cond_138

    .line 1123
    sget v0, clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_115

    .line 1124
    const v0, 0x10408ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1143
    :cond_be
    :goto_be
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1144
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1145
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1146
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1147
    iget-object v0, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1149
    const/4 v0, 0x0

    iget-object v1, p0, mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, mTetheredVendorNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    .line 1102
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_e8
    const v0, 0x10408ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_71

    .line 1105
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_10c
    const v0, 0x10408aa

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_71

    .line 1126
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    :cond_115
    const v0, 0x10408ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_be

    .line 1129
    :cond_138
    const v0, 0x10408aa

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_be

    .line 1131
    :cond_141
    const v0, 0x10807be

    if-ne p1, v0, :cond_be

    .line 1132
    sget v0, clients:I

    if-lez v0, :cond_17c

    .line 1133
    sget v0, clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_158

    .line 1134
    const v0, 0x10408ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_be

    .line 1136
    :cond_158
    const v0, 0x10408ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_be

    .line 1139
    :cond_17c
    const v0, 0x10408ab

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_be
.end method

.method private tetherNcm(Z)V
    .registers 16
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1899
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tetherNcm "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    new-array v10, v2, [Ljava/lang/String;

    .line 1903
    .local v10, "ifaces":[Ljava/lang/String;
    :try_start_1c
    iget-object v0, p0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_3b

    move-result-object v10

    .line 1913
    move-object v6, v10

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_25
    if-ge v8, v11, :cond_6f

    aget-object v9, v6, v8

    .line 1914
    .local v9, "iface":Ljava/lang/String;
    const-string/jumbo v0, "ncm0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1915
    if-eqz p1, :cond_67

    invoke-virtual {p0, v9}, tether(Ljava/lang/String;)I

    move-result v12

    .line 1916
    .local v12, "result":I
    :goto_38
    if-nez v12, :cond_6c

    .line 1922
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "iface":Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v12    # "result":I
    :goto_3a
    return-void

    .line 1904
    :catch_3b
    move-exception v7

    .line 1905
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "Tethering"

    const-string v1, "Error listing Interfaces"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v4, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ifaces(ncm) listing is errored : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 1915
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "iface":Ljava/lang/String;
    .restart local v11    # "len$":I
    :cond_67
    invoke-virtual {p0, v9}, untether(Ljava/lang/String;)I

    move-result v12

    goto :goto_38

    .line 1913
    :cond_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 1921
    .end local v9    # "iface":Ljava/lang/String;
    :cond_6f
    const-string v0, "Tethering"

    const-string/jumbo v1, "unable start or stop Ncm tethering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method private tetherUsb(Z)V
    .registers 18
    .param p1, "enable"    # Z

    .prologue
    .line 1790
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tetherUsb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v1, 0x0

    new-array v11, v1, [Ljava/lang/String;

    .line 1794
    .local v11, "ifaces":[Ljava/lang/String;
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v1, v0, mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_57

    move-result-object v11

    .line 1805
    const-string/jumbo v14, "sys.usb.tethering"

    .line 1806
    .local v14, "usbSysctlKey":Ljava/lang/String;
    const-string/jumbo v1, "sys.usb.tethering"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    if-eqz p1, :cond_3d

    .line 1809
    const-string/jumbo v1, "sys.usb.tethering"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    :cond_3d
    move-object v7, v11

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_40
    if-ge v9, v12, :cond_8e

    aget-object v10, v7, v9

    .line 1813
    .local v10, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1814
    if-eqz p1, :cond_84

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, tether(Ljava/lang/String;)I

    move-result v13

    .line 1815
    .local v13, "result":I
    :goto_54
    if-nez v13, :cond_8b

    .line 1821
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "iface":Ljava/lang/String;
    .end local v12    # "len$":I
    .end local v13    # "result":I
    .end local v14    # "usbSysctlKey":Ljava/lang/String;
    :goto_56
    return-void

    .line 1795
    :catch_57
    move-exception v8

    .line 1796
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "Tethering"

    const-string v2, "Error listing Interfaces"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1798
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-class v5, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ifaces(usb) listing is errored : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 1814
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "iface":Ljava/lang/String;
    .restart local v12    # "len$":I
    .restart local v14    # "usbSysctlKey":Ljava/lang/String;
    :cond_84
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, untether(Ljava/lang/String;)I

    move-result v13

    goto :goto_54

    .line 1812
    :cond_8b
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    .line 1820
    .end local v10    # "iface":Ljava/lang/String;
    :cond_8e
    const-string v1, "Tethering"

    const-string/jumbo v2, "unable start or stop USB tethering"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method


# virtual methods
.method public checkDunRequired()V
    .registers 7

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x4

    .line 2189
    iget-boolean v4, p0, mIsBootComplete:Z

    if-eqz v4, :cond_3c

    .line 2190
    invoke-virtual {p0}, setOemDunRequired()V

    .line 2196
    const/4 v1, 0x2

    .line 2197
    .local v1, "secureSetting":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2198
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1b

    .line 2199
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    .line 2201
    :cond_1b
    iget-object v4, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2203
    const/4 v5, 0x2

    if-eq v1, v5, :cond_af

    .line 2204
    const/4 v5, 0x1

    if-ne v1, v5, :cond_25

    move v0, v3

    .line 2207
    .local v0, "requiredApn":I
    :cond_25
    if-ne v0, v3, :cond_76

    .line 2208
    :goto_27
    :try_start_27
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2209
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_27

    .line 2238
    .end local v0    # "requiredApn":I
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_39

    throw v3

    .line 2192
    .end local v1    # "secureSetting":I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3c
    const-string v3, "Tethering"

    const-string v4, "Boot not complete yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :goto_43
    return-void

    .line 2211
    .restart local v0    # "requiredApn":I
    .restart local v1    # "secureSetting":I
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_44
    :goto_44
    :try_start_44
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2212
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_44

    .line 2214
    :cond_56
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 2215
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2229
    :cond_67
    :goto_67
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 2230
    const/4 v3, 0x4

    iput v3, p0, mPreferredUpstreamMobileApn:I

    .line 2238
    .end local v0    # "requiredApn":I
    :goto_74
    monitor-exit v4

    goto :goto_43

    .line 2218
    .restart local v0    # "requiredApn":I
    :cond_76
    :goto_76
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 2219
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_76

    .line 2221
    :cond_88
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 2222
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2224
    :cond_99
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 2225
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 2232
    :cond_ab
    const/4 v3, -0x1

    iput v3, p0, mPreferredUpstreamMobileApn:I

    goto :goto_74

    .line 2236
    .end local v0    # "requiredApn":I
    :cond_af
    const/4 v3, 0x5

    iput v3, p0, mPreferredUpstreamMobileApn:I
    :try_end_b2
    .catchall {:try_start_44 .. :try_end_b2} :catchall_39

    goto :goto_74
.end method

.method clearMaxApNotification()V
    .registers 4

    .prologue
    .line 1375
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1377
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1a

    iget-object v1, p0, mMaxApNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1a

    .line 1378
    const v1, 0x10408b0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1379
    const/4 v1, 0x0

    iput-object v1, p0, mMaxApNotification:Landroid/app/Notification;

    .line 1381
    :cond_1a
    return-void
.end method

.method createMaxApNotification()V
    .registers 15

    .prologue
    const v13, 0x10408b0

    const/4 v12, 0x0

    .line 1335
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1338
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const v3, 0x108008a

    .line 1339
    .local v3, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1340
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1341
    .local v7, "title":Ljava/lang/String;
    const v10, 0x10408b1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "body":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1344
    .local v8, "when":J
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v4, "notificationIntent":Landroid/content/Intent;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v12, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1347
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1348
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1355
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1364
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    iput-object v10, p0, mMaxApNotification:Landroid/app/Notification;

    .line 1371
    iget-object v10, p0, mMaxApNotification:Landroid/app/Notification;

    invoke-virtual {v5, v13, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1372
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3940
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3941
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 3943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    :goto_39
    return-void

    .line 3949
    :cond_3a
    const-string v4, "Tethering:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3951
    const-string/jumbo v4, "mUpstreamIfaceTypes:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3952
    iget-object v5, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 3953
    :try_start_4b
    iget-object v4, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3954
    .local v1, "netType":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_51

    .line 3964
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netType":Ljava/lang/Integer;
    :catchall_7c
    move-exception v4

    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_4b .. :try_end_7e} :catchall_7c

    throw v4

    .line 3956
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_7f
    :try_start_7f
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3958
    const-string v4, "Tether state:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3960
    iget-object v4, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3961
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_94

    .line 3963
    .end local v2    # "o":Ljava/lang/Object;
    :cond_a2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3964
    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_7f .. :try_end_a6} :catchall_7c

    .line 3965
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_39
.end method

.method public getCountTetheredIfaces()I
    .registers 8

    .prologue
    .line 2302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 2304
    :try_start_8
    iget-object v5, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2305
    .local v2, "keys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2306
    .local v1, "key":Ljava/lang/Object;
    iget-object v5, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2307
    .local v4, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2308
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2311
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "keys":Ljava/util/Set;
    .end local v4    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v5

    monitor-exit v6
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v5

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 2312
    invoke-direct {p0}, getRvfMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_42

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_41
    return v5

    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_41
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 2283
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2285
    :try_start_8
    iget-object v7, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2286
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2287
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2288
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2289
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2292
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 2293
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 2294
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 2295
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 2294
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 2297
    :cond_4c
    return-object v5
.end method

.method public getKnoxValue(Landroid/net/Uri;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "findapi"    # Ljava/lang/String;
    .param p3, "address"    # I

    .prologue
    const/4 v2, 0x0

    .line 4018
    const/4 v7, 0x0

    .line 4019
    .local v7, "result":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4020
    .local v4, "stringAddress":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4021
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_29

    .line 4023
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4024
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    move-result-object v7

    .line 4026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4029
    :cond_29
    return-object v7

    .line 4026
    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "findapi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4001
    const/4 v7, 0x0

    .line 4002
    .local v7, "ret_value":Z
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4004
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2a

    .line 4006
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4007
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_2b

    move-result v0

    if-eqz v0, :cond_27

    .line 4008
    const/4 v7, 0x1

    .line 4011
    :cond_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4014
    :cond_2a
    return v7

    .line 4011
    :catchall_2b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 826
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 827
    :try_start_4
    iget-object v2, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 828
    if-nez v1, :cond_31

    .line 829
    const-string v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v2, 0x1

    monitor-exit v3

    .line 833
    :goto_30
    return v2

    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v3

    goto :goto_30

    .line 834
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1894
    iget-object v0, p0, mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 2261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2262
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2263
    :try_start_8
    iget-object v7, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2264
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2265
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2266
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2267
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 2271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 2272
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 2273
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 2272
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 2275
    :cond_4c
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1886
    iget-object v0, p0, mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1890
    iget-object v0, p0, mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2279
    iget-object v0, p0, mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 2243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2244
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2245
    :try_start_8
    iget-object v7, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2246
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2247
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2248
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2249
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2252
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 2253
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 2254
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 2255
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 2254
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 2257
    :cond_4c
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .registers 6

    .prologue
    .line 1998
    iget-object v4, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1999
    :try_start_3
    invoke-virtual {p0}, updateConfiguration()V

    .line 2000
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 2001
    .local v2, "values":[I
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2002
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 2003
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 2002
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2005
    :cond_2c
    monitor-exit v4

    .line 2006
    return-object v2

    .line 2005
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .registers 3

    .prologue
    .line 2322
    iget-object v0, p0, mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2323
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 602
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interfaceAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 605
    .local v2, "usb":Z
    iget-object v4, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 606
    :try_start_1e
    invoke-virtual {p0, p1}, isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 607
    const/4 v0, 0x1

    .line 609
    :cond_25
    invoke-direct {p0, p1}, isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 610
    const/4 v0, 0x1

    .line 611
    const/4 v2, 0x1

    .line 613
    :cond_2d
    invoke-virtual {p0, p1}, isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 614
    const/4 v0, 0x1

    .line 616
    :cond_34
    if-nez v0, :cond_50

    .line 617
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    monitor-exit v4

    .line 630
    :goto_4f
    return-void

    .line 621
    :cond_50
    iget-object v3, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 622
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_7d

    .line 623
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") reported as added, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    monitor-exit v4

    goto :goto_4f

    .line 629
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_7a
    move-exception v3

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_1e .. :try_end_7c} :catchall_7a

    throw v3

    .line 626
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7d
    :try_start_7d
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 627
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 629
    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_7a

    goto :goto_4f
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 570
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceLinkStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0, p1, p2}, interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 572
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 633
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interfaceRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v2, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 635
    :try_start_1c
    iget-object v1, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 636
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_46

    .line 638
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v2

    .line 645
    :goto_45
    return-void

    .line 642
    :cond_46
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 643
    iget-object v1, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    monitor-exit v2

    goto :goto_45

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_51
    move-exception v1

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_51

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 535
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interfaceStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 538
    .local v2, "usb":Z
    iget-object v4, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 539
    :try_start_28
    invoke-virtual {p0, p1}, isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 540
    const/4 v0, 0x1

    .line 547
    :cond_2f
    :goto_2f
    if-nez v0, :cond_44

    monitor-exit v4

    .line 567
    :goto_32
    return-void

    .line 541
    :cond_33
    invoke-direct {p0, p1}, isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 542
    const/4 v0, 0x1

    .line 543
    const/4 v2, 0x1

    goto :goto_2f

    .line 544
    :cond_3c
    invoke-virtual {p0, p1}, isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 545
    const/4 v0, 0x1

    goto :goto_2f

    .line 549
    :cond_44
    iget-object v3, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 550
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_64

    .line 551
    if-nez v1, :cond_5f

    .line 552
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 553
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 566
    :cond_5f
    :goto_5f
    monitor-exit v4

    goto :goto_32

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_61
    move-exception v3

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_28 .. :try_end_63} :catchall_61

    throw v3

    .line 557
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_64
    :try_start_64
    invoke-direct {p0, p1}, isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 560
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ignore interface down for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 561
    :cond_84
    if-eqz v1, :cond_5f

    .line 562
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 563
    iget-object v3, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_64 .. :try_end_8f} :catchall_61

    goto :goto_5f
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v5, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 594
    :try_start_3
    iget-object v0, p0, mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 595
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    .line 597
    .end local v3    # "regex":Ljava/lang/String;
    :goto_13
    return v4

    .line 594
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 597
    .end local v3    # "regex":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    .line 598
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public isWifi(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v5, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 585
    :try_start_3
    iget-object v0, p0, mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 586
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    .line 588
    .end local v3    # "regex":Ljava/lang/String;
    :goto_13
    return v4

    .line 585
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 588
    .end local v3    # "regex":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    .line 589
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public makeDualServerStrings(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3927
    .local p1, "addrs1":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .local p2, "addrs2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v4, v5, [Ljava/lang/String;

    .line 3928
    .local v4, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3929
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 3930
    .local v0, "addr":Ljava/net/InetAddress;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 3931
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_10

    .line 3932
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_26
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 3933
    .restart local v0    # "addr":Ljava/net/InetAddress;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 3934
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2a

    .line 3935
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_40
    return-object v4
.end method

.method public setNcmTethering(Z)I
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1925
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNcmTethering("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1928
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1929
    if-eqz p1, :cond_47

    .line 1930
    :try_start_30
    iget-boolean v1, p0, mNcmEnabled:Z

    if-eqz v1, :cond_3a

    .line 1931
    const/4 v1, 0x1

    invoke-direct {p0, v1}, tetherNcm(Z)V

    .line 1943
    :goto_38
    monitor-exit v2

    .line 1944
    return v4

    .line 1933
    :cond_3a
    const/4 v1, 0x1

    iput-boolean v1, p0, mNcmTetherRequested:Z

    .line 1934
    const-string/jumbo v1, "ncm"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_38

    .line 1943
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_44

    throw v1

    .line 1937
    :cond_47
    const/4 v1, 0x0

    :try_start_48
    invoke-direct {p0, v1}, tetherNcm(Z)V

    .line 1938
    iget-boolean v1, p0, mNcmEnabled:Z

    if-eqz v1, :cond_53

    .line 1939
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1941
    :cond_53
    const/4 v1, 0x0

    iput-boolean v1, p0, mNcmTetherRequested:Z
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_44

    goto :goto_38
.end method

.method public setOemDunRequired()V
    .registers 34

    .prologue
    .line 2011
    const-string v26, ""

    .line 2013
    .local v26, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    .line 2014
    .local v31, "tm":Landroid/telephony/TelephonyManager;
    if-nez v31, :cond_19

    .line 2015
    const-string v2, "Tethering"

    const-string v3, "No telephony manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_18
    :goto_18
    return-void

    .line 2019
    :cond_19
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v30

    .line 2020
    .local v30, "subID":I
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v26

    .line 2021
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2022
    const-string v2, "Tethering"

    const-string v3, "No numeric data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2026
    :cond_33
    const-string v2, "CTC"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2029
    :cond_4e
    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2030
    .local v17, "cardType":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string/jumbo v3, "gsm.sim.cdmaoperator.numeric"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2031
    .local v18, "cdmaOperator":Ljava/lang/String;
    const-string v2, "3"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string v2, "4"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_7f
    const-string v2, "46003"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2032
    move-object/from16 v26, v18

    .line 2036
    .end local v17    # "cardType":Ljava/lang/String;
    .end local v18    # "cdmaOperator":Ljava/lang/String;
    :cond_8b
    const/16 v21, 0x0

    .line 2037
    .local v21, "cursor":Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 2038
    .local v25, "isDunRequired":Z
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2041
    .local v5, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_f0

    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "CAN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 2042
    const-string/jumbo v2, "gsm.sim.operator.gid"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2043
    .local v27, "simSpcode":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 2044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mvno_type=\"gid\" and mvno_match_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2048
    .end local v27    # "simSpcode":Ljava/lang/String;
    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2050
    if-eqz v21, :cond_1d7

    .line 2052
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 2055
    :cond_109
    const-string/jumbo v2, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2056
    .local v32, "types":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13d

    const-string/jumbo v2, "dun"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13d

    const-string/jumbo v2, "default"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 2057
    const-string v2, "Tethering"

    const-string v3, "Dun type is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const/16 v25, 0x1

    .line 2061
    :cond_13d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34d

    .line 2063
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2064
    .local v14, "_id":Ljava/lang/String;
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2065
    .local v15, "_protocol":Ljava/lang/String;
    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2066
    .local v16, "_roam_protocol":Ljava/lang/String;
    const-string v2, "carrier_enabled"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2067
    .local v13, "_carrier_enabled":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19c

    const-string v2, "3"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19c

    const-string v2, "4"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19c

    const-string v2, "5"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34d

    :cond_19c
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ae

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ae

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34d

    .line 2069
    :cond_1ae
    const-string v2, "Tethering"

    const-string v3, "KDI db cr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2071
    const-string v2, "content://telephony/carriers/restore"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2072
    .local v12, "DEFAULTAPN_URI":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f0 .. :try_end_1d7} :catch_355
    .catchall {:try_start_f0 .. :try_end_1d7} :catchall_377

    .line 2086
    .end local v12    # "DEFAULTAPN_URI":Landroid/net/Uri;
    .end local v13    # "_carrier_enabled":Ljava/lang/String;
    .end local v14    # "_id":Ljava/lang/String;
    .end local v15    # "_protocol":Ljava/lang/String;
    .end local v16    # "_roam_protocol":Ljava/lang/String;
    .end local v32    # "types":Ljava/lang/String;
    :cond_1d7
    :goto_1d7
    if-eqz v21, :cond_1dc

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2090
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_22c

    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "SPR-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 2091
    const-string v2, "310120"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22a

    const-string v2, "310000"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22a

    const-string v2, "311870"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22a

    const-string v2, "311490"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22a

    const-string v2, "312530"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22a

    const-string v2, "316010"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 2093
    :cond_22a
    const/16 v25, 0x1

    .line 2097
    :cond_22c
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_240

    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "KDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_240

    .line 2098
    const/16 v25, 0x1

    .line 2101
    :cond_240
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_252

    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "LRA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_270

    :cond_252
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_264

    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "USC-ACG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_270

    :cond_264
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "USC-USX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_308

    .line 2107
    :cond_270
    new-instance v9, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2108
    .local v9, "selectionPST":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_37e

    move-object/from16 v0, p0

    iget-object v2, v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "LRA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37e

    .line 2109
    const-string/jumbo v9, "numeric = \"311480\""

    .line 2113
    :goto_28c
    :try_start_28c
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2114
    new-instance v22, Ljava/lang/String;

    const-string v2, " "

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v22, "defaultApn":Ljava/lang/String;
    new-instance v23, Ljava/lang/String;

    const-string v2, " "

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v23, "dunApn":Ljava/lang/String;
    if-eqz v21, :cond_303

    .line 2117
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_303

    .line 2119
    :cond_2b7
    const-string/jumbo v2, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2120
    .restart local v32    # "types":Ljava/lang/String;
    const-string v2, "apn"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2121
    .local v20, "currentapn":Ljava/lang/String;
    const-string/jumbo v2, "default"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 2122
    move-object/from16 v22, v20

    .line 2124
    :cond_2e1
    const-string/jumbo v2, "dun"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2ee

    .line 2125
    move-object/from16 v23, v20

    .line 2127
    :cond_2ee
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2b7

    .line 2128
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39c

    .line 2129
    const-string v2, "Tethering"

    const-string v3, "LRA|ACG - dun has same apn as default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_301
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28c .. :try_end_301} :catch_3a7
    .catchall {:try_start_28c .. :try_end_301} :catchall_3c9

    .line 2130
    const/16 v25, 0x0

    .line 2143
    .end local v20    # "currentapn":Ljava/lang/String;
    .end local v32    # "types":Ljava/lang/String;
    :cond_303
    :goto_303
    if-eqz v21, :cond_308

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2161
    .end local v9    # "selectionPST":Ljava/lang/String;
    .end local v22    # "defaultApn":Ljava/lang/String;
    .end local v23    # "dunApn":Ljava/lang/String;
    :cond_308
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32c

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kddi_cpa_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3d0

    const/16 v19, 0x1

    .line 2164
    .local v19, "cpaEnabled":Z
    :goto_328
    if-eqz v19, :cond_32c

    const/16 v25, 0x0

    .line 2172
    .end local v19    # "cpaEnabled":Z
    :cond_32c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2174
    .local v28, "origIdentity":J
    if-eqz v25, :cond_3d4

    .line 2175
    :try_start_332
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_dun_required"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2176
    const-string v2, "Tethering"

    const-string v3, "Set dun requiered as 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_348
    .catchall {:try_start_332 .. :try_end_348} :catchall_3e5

    .line 2182
    :goto_348
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_18

    .line 2077
    .end local v28    # "origIdentity":J
    .restart local v32    # "types":Ljava/lang/String;
    :cond_34d
    :try_start_34d
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_350
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34d .. :try_end_350} :catch_355
    .catchall {:try_start_34d .. :try_end_350} :catchall_377

    move-result v2

    if-nez v2, :cond_109

    goto/16 :goto_1d7

    .line 2081
    .end local v32    # "types":Ljava/lang/String;
    :catch_355
    move-exception v24

    .line 2082
    .local v24, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_356
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught to query databases : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_370
    .catchall {:try_start_356 .. :try_end_370} :catchall_377

    .line 2086
    if-eqz v21, :cond_18

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    .end local v24    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_377
    move-exception v2

    if-eqz v21, :cond_37d

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_37d
    throw v2

    .line 2111
    .restart local v9    # "selectionPST":Ljava/lang/String;
    :cond_37e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_28c

    .line 2132
    .restart local v20    # "currentapn":Ljava/lang/String;
    .restart local v22    # "defaultApn":Ljava/lang/String;
    .restart local v23    # "dunApn":Ljava/lang/String;
    .restart local v32    # "types":Ljava/lang/String;
    :cond_39c
    :try_start_39c
    const-string v2, "Tethering"

    const-string v3, "LRA|ACG - dun has different apn from default - dunRequired"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39c .. :try_end_3a3} :catch_3a7
    .catchall {:try_start_39c .. :try_end_3a3} :catchall_3c9

    .line 2133
    const/16 v25, 0x1

    goto/16 :goto_303

    .line 2138
    .end local v20    # "currentapn":Ljava/lang/String;
    .end local v22    # "defaultApn":Ljava/lang/String;
    .end local v23    # "dunApn":Ljava/lang/String;
    .end local v32    # "types":Ljava/lang/String;
    :catch_3a7
    move-exception v24

    .line 2139
    .restart local v24    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3a8
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught to query databases : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c2
    .catchall {:try_start_3a8 .. :try_end_3c2} :catchall_3c9

    .line 2143
    if-eqz v21, :cond_18

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    .end local v24    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_3c9
    move-exception v2

    if-eqz v21, :cond_3cf

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_3cf
    throw v2

    .line 2163
    .end local v9    # "selectionPST":Ljava/lang/String;
    :cond_3d0
    const/16 v19, 0x0

    goto/16 :goto_328

    .line 2178
    .restart local v28    # "origIdentity":J
    :cond_3d4
    :try_start_3d4
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_dun_required"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3e3
    .catchall {:try_start_3d4 .. :try_end_3e3} :catchall_3e5

    goto/16 :goto_348

    .line 2182
    :catchall_3e5
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUsbTethering(Z)I
    .registers 10
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1949
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbTethering("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1952
    .local v1, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v3, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1954
    :try_start_2e
    iget-object v2, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v2, :cond_5b

    .line 1955
    iget-object v2, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1956
    const-string v2, "Tethering"

    const-string v4, "Set USB Net Destination Address"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    sget-object v2, mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    const/16 v6, 0x14c

    invoke-virtual {v5, v6}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1959
    sget-object v2, mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    const/16 v6, 0x14c

    invoke-virtual {v5, v6}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1963
    :cond_5b
    if-eqz p1, :cond_97

    .line 1964
    iget-boolean v2, p0, mRndisEnabled:Z

    if-eqz v2, :cond_67

    .line 1965
    const/4 v2, 0x1

    invoke-direct {p0, v2}, tetherUsb(Z)V

    .line 1992
    :goto_65
    monitor-exit v3

    .line 1993
    return v7

    .line 1967
    :cond_67
    const/4 v2, 0x1

    iput-boolean v2, p0, mUsbTetherRequested:Z

    .line 1969
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1970
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "enabled"

    const-string v4, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1971
    const-string v2, "Tethering"

    const-string v4, "[Tethering always mode] call tetherUsb()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const-string/jumbo v2, "rndis,acm,dm"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_65

    .line 1992
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_8d
    move-exception v2

    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_2e .. :try_end_8f} :catchall_8d

    throw v2

    .line 1982
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_90
    :try_start_90
    const-string/jumbo v2, "rndis"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_65

    .line 1986
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_97
    const/4 v2, 0x0

    invoke-direct {p0, v2}, tetherUsb(Z)V

    .line 1987
    iget-boolean v2, p0, mRndisEnabled:Z

    if-eqz v2, :cond_a3

    .line 1988
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1990
    :cond_a3
    const/4 v2, 0x0

    iput-boolean v2, p0, mUsbTetherRequested:Z
    :try_end_a6
    .catchall {:try_start_90 .. :try_end_a6} :catchall_8d

    goto :goto_65
.end method

.method public tether(Ljava/lang/String;)I
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 695
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v13, 0x0

    .line 697
    .local v13, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 698
    :try_start_1c
    iget-object v1, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v13, v0

    .line 699
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_93

    .line 701
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 702
    .local v2, "uri":Landroid/net/Uri;
    const/4 v11, 0x1

    .line 703
    .local v11, "isBluetoothTetheringEnabled":Z
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "isBluetoothTetheringEnabled"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 705
    .local v9, "cr":Landroid/database/Cursor;
    if-eqz v9, :cond_5b

    .line 706
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 707
    const-string/jumbo v1, "isBluetoothTetheringEnabled"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v11, 0x1

    .line 709
    :goto_58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 713
    :cond_5b
    invoke-direct {p0}, isInternetSharingBlockedByActiveSync()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 714
    const-string v1, "Tethering"

    const-string v3, "[ActiveSync] tether() Internet sharing has banned due to security policy."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 717
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is banned due to SECURITY POLICY"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 721
    const/16 v1, 0x14

    .line 788
    :goto_92
    return v1

    .line 699
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v9    # "cr":Landroid/database/Cursor;
    .end local v11    # "isBluetoothTetheringEnabled":Z
    :catchall_93
    move-exception v1

    :try_start_94
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v1

    .line 707
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v9    # "cr":Landroid/database/Cursor;
    .restart local v11    # "isBluetoothTetheringEnabled":Z
    :cond_96
    const/4 v11, 0x0

    goto :goto_58

    .line 726
    :cond_98
    const/4 v12, 0x1

    .line 727
    .local v12, "isUSBTetheringEnabled":Z
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, knoxUri:Landroid/net/Uri;

    .line 728
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, knoxUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string/jumbo v6, "isUsbTetheringEnabled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 729
    .local v10, "cr_usb":Landroid/database/Cursor;
    if-eqz v10, :cond_d0

    .line 730
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 731
    const-string/jumbo v1, "isUsbTetheringEnabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104

    const/4 v12, 0x1

    .line 732
    :goto_cd
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_d0
    invoke-direct {p0, p1}, isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_106

    if-nez v12, :cond_106

    .line 736
    const-string v1, "Tethering"

    const-string v3, "Tethering USB is not allowed (MDM)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is not allowed (MDM)"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v1, 0x2

    goto :goto_92

    .line 731
    :cond_104
    const/4 v12, 0x0

    goto :goto_cd

    .line 743
    :cond_106
    invoke-virtual {p0, p1}, isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13b

    if-nez v11, :cond_13b

    .line 744
    const-string v1, "Tethering"

    const-string v3, "Tethering Bluetooth is not allowed (MDM)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is not allowed (MDM)"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v1, 0x2

    goto/16 :goto_92

    .line 754
    :cond_13b
    if-nez v13, :cond_181

    .line 755
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is an unknown iface for tethering"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 761
    const/4 v1, 0x1

    goto/16 :goto_92

    .line 763
    :cond_181
    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1d1

    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v1

    if-nez v1, :cond_1d1

    .line 764
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is an unavailable iface for tethering"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v1, 0x4

    goto/16 :goto_92

    .line 782
    :cond_1d1
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 784
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " is tethered"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x0

    goto/16 :goto_92
.end method

.method public untether(Ljava/lang/String;)I
    .registers 14
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 792
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Untethering "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v10, 0x0

    .line 794
    .local v10, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v5, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 795
    :try_start_20
    iget-object v4, p0, mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v10, v0

    .line 796
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_6d

    .line 797
    if-nez v10, :cond_70

    .line 798
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to Untether an unknown iface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-class v5, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is an unknown iface for untethering"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v2, v11

    .line 821
    :goto_6c
    return v2

    .line 796
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1

    .line 806
    :cond_70
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 807
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to Untethered an errored iface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-class v5, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is an unavailable iface for untethering"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 815
    :cond_b5
    invoke-virtual {v10, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 817
    const/4 v4, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-class v1, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " is untethered"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v5, v2

    move v6, v11

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 821
    goto :goto_6c
.end method

.method updateConfiguration()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 494
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "tetherableUsbRegexs":[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    .line 500
    .local v5, "tetherableBluetoothRegexs":[Ljava/lang/String;
    const-string/jumbo v9, "persist.fst.rate.upgrade.en"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v12, :cond_63

    .line 501
    new-array v7, v12, [Ljava/lang/String;

    const-string v9, "bond0"

    aput-object v9, v7, v11

    .line 507
    .local v7, "tetherableWifiRegexs":[Ljava/lang/String;
    :goto_20
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_BT_DisableNAP"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3f

    invoke-static {}, isWifiOnly()Z

    move-result v9

    if-nez v9, :cond_3f

    .line 508
    const-string v9, "Tethering"

    const-string v10, "NAP Supported and not Wifi Model"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-array v5, v12, [Ljava/lang/String;

    .end local v5    # "tetherableBluetoothRegexs":[Ljava/lang/String;
    const-string v9, "bt-pan"

    aput-object v9, v5, v11

    .line 512
    .restart local v5    # "tetherableBluetoothRegexs":[Ljava/lang/String;
    :cond_3f
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 514
    .local v3, "ifaceTypes":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v8, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_54
    if-ge v2, v4, :cond_71

    aget v1, v0, v2

    .line 516
    .local v1, "i":I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 503
    .end local v0    # "arr$":[I
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "ifaceTypes":[I
    .end local v4    # "len$":I
    .end local v7    # "tetherableWifiRegexs":[Ljava/lang/String;
    .end local v8    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_63
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "tetherableWifiRegexs":[Ljava/lang/String;
    goto :goto_20

    .line 519
    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "ifaceTypes":[I
    .restart local v4    # "len$":I
    .restart local v8    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_71
    iget-object v10, p0, mPublicSync:Ljava/lang/Object;

    monitor-enter v10

    .line 520
    :try_start_74
    iput-object v6, p0, mTetherableUsbRegexs:[Ljava/lang/String;

    .line 524
    sget-object v9, mWifiInterface:[Ljava/lang/String;

    iput-object v9, p0, mTetherableWifiRegexs:[Ljava/lang/String;

    .line 526
    iput-object v5, p0, mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 527
    iput-object v8, p0, mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 528
    monitor-exit v10
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_83

    .line 531
    invoke-virtual {p0}, checkDunRequired()V

    .line 532
    return-void

    .line 528
    :catchall_83
    move-exception v9

    :try_start_84
    monitor-exit v10
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v9
.end method
