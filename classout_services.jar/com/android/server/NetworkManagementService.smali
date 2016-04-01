.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final MODE_ALLOW_ALL:I = 0x3

.field private static final NETD_SOCKET_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field public static final SUPPORTMOBILEAP5G:Z

.field public static final SUPPORTMOBILEAPWPSPBC:Z

.field public static final SUPPORTMOBILEAPWPSPIN:Z

.field private static final SamsungHotspotVSIE:I = 0x80

.field private static final SamsungOUI:Ljava/lang/String; = "001632"

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private mCscMaxClient:I

.field private final mDaemonHandler:Landroid/os/Handler;

.field private final mFgHandler:Landroid/os/Handler;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private volatile mFirewallEnabled:Z

.field private mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private mMobileActivityFromRadio:Z

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQuotaLock:Ljava/lang/Object;

.field private mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mThread:Ljava/lang/Thread;

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidRejectOnQuota:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 170
    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DBG:Z

    .line 182
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, SUPPORTMOBILEAPWPSPBC:Z

    .line 184
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, SUPPORTMOBILEAPWPSPIN:Z

    .line 186
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 188
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupport5G:Z

    sput-boolean v0, SUPPORTMOBILEAP5G:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 334
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 262
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 264
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mObservers:Landroid/os/RemoteCallbackList;

    .line 267
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 269
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mQuotaLock:Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mActiveQuotas:Ljava/util/HashMap;

    .line 275
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mActiveAlerts:Ljava/util/HashMap;

    .line 278
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 281
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 284
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 290
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 296
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 299
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mIdleTimerLock:Ljava/lang/Object;

    .line 315
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mActiveIdleTimers:Ljava/util/HashMap;

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, mMobileActivityFromRadio:Z

    .line 322
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mLastPowerStateFromRadio:I

    .line 323
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mLastPowerStateFromWifi:I

    .line 325
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 335
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mFgHandler:Landroid/os/Handler;

    .line 344
    const/4 v6, 0x0

    .line 346
    .local v6, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string v4, "NetdConnector"

    const/16 v5, 0xa0

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    iput-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 349
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, mThread:Ljava/lang/Thread;

    .line 351
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mDaemonHandler:Landroid/os/Handler;

    .line 353
    new-instance v0, Lcom/android/server/NetworkManagementService$1;

    const v1, 0x7fffffff

    iget-object v2, p0, mDaemonHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;ILandroid/os/Looper;)V

    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 363
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 364
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_df

    .line 365
    iget-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x2000

    invoke-virtual {v8, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 370
    :cond_df
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mCscMaxClient:I

    .line 373
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 374
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 167
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, notifyInterfaceMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/RouteInfo;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 167
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;IIJZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Z

    .prologue
    .line 167
    invoke-direct/range {p0 .. p5}, notifyInterfaceClassActivity(IIJZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 167
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 167
    iput-object p1, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 167
    invoke-direct {p0}, prepareNativeDaemon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 167
    iget-object v0, p0, mFgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 389
    const-string/jumbo v0, "netd"

    invoke-static {p0, v0}, create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v1, Lcom/android/server/NetworkManagementService;

    invoke-direct {v1, p0, p1}, <init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 380
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "NetworkManagement"

    const-string v3, "Creating NetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_12
    iget-object v2, v1, mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 382
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_22

    const-string v2, "NetworkManagement"

    const-string v3, "Awaiting socket connection"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_22
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 384
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_30

    const-string v2, "NetworkManagement"

    const-string v3, "Connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_30
    return-object v1
.end method

.method private static enforceSystemUid()V
    .registers 3

    .prologue
    .line 3077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3078
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 3079
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3081
    :cond_10
    return-void
.end method

.method private static enforceSystemUid(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3085
    if-nez p0, :cond_5

    .line 3086
    invoke-static {}, enforceSystemUid()V

    .line 3089
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_27

    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3094
    .local v0, "uid":I
    :goto_1b
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2c

    .line 3095
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3092
    .end local v0    # "uid":I
    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .restart local v0    # "uid":I
    goto :goto_1b

    .line 3097
    :cond_2c
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1685
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1686
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1687
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1688
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1690
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_27
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 398
    monitor-enter p0

    .line 399
    :try_start_1
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 400
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    .line 404
    :goto_8
    return-object v0

    .line 402
    :cond_9
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 404
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    goto :goto_8

    .line 405
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .registers 5
    .param p1, "chain"    # I
    .param p2, "rule"    # I

    .prologue
    .line 2941
    invoke-direct {p0, p1}, getFirewallType(I)I

    move-result v1

    if-nez v1, :cond_10

    .line 2942
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 2943
    const-string v0, "allow"

    .line 2954
    .local v0, "ruleName":Ljava/lang/String;
    :goto_b
    return-object v0

    .line 2945
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v0, "deny"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_b

    .line 2948
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_10
    const/4 v1, 0x2

    if-ne p2, v1, :cond_17

    .line 2949
    const-string/jumbo v0, "deny"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_b

    .line 2951
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_17
    const-string v0, "allow"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_b
.end method

.method private getFirewallType(I)I
    .registers 5
    .param p1, "chain"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2859
    packed-switch p1, :pswitch_data_10

    .line 2865
    invoke-virtual {p0}, isFirewallEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_b
    :pswitch_b
    return v0

    :pswitch_c
    move v0, v1

    .line 2861
    goto :goto_b

    :cond_e
    move v0, v1

    .line 2865
    goto :goto_b

    .line 2859
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getInterfaceGlobalAddresses(Ljava/net/NetworkInterface;)Ljava/util/List;
    .registers 9
    .param p1, "intf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1716
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    .line 1719
    .local v0, "allAddr":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1720
    .local v2, "ia":Ljava/net/InterfaceAddress;
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SITELOCAL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LINKLOCAL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1723
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1726
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_75
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2160
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 2166
    :pswitch_7
    const-string/jumbo v0, "open"

    :goto_a
    return-object v0

    .line 2162
    :pswitch_b
    const-string/jumbo v0, "wpa-psk"

    goto :goto_a

    .line 2164
    :pswitch_f
    const-string/jumbo v0, "wpa2-psk"

    goto :goto_a

    .line 2160
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method private getUidFirewallRules(I)Landroid/util/SparseIntArray;
    .registers 5
    .param p1, "chain"    # I

    .prologue
    .line 2958
    packed-switch p1, :pswitch_data_26

    .line 2966
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2960
    :pswitch_1c
    iget-object v0, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2964
    :goto_1e
    return-object v0

    .line 2962
    :pswitch_1f
    iget-object v0, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    goto :goto_1e

    .line 2964
    :pswitch_22
    iget-object v0, p0, mUidFirewallRules:Landroid/util/SparseIntArray;

    goto :goto_1e

    .line 2958
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private modifyEpdg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "mobileInterface"    # Ljava/lang/String;
    .param p3, "tunnelingInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1730
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "epdg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1732
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 1733
    .local v2, "mobileNetworkInterface":Ljava/net/NetworkInterface;
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 1735
    .local v3, "tunnelingNetworkInterface":Ljava/net/NetworkInterface;
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modifyEpdg epdg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    if-nez v2, :cond_6d

    .line 1737
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mobileNetworkInterface is null, passed mobileNetworkInterface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const-string v4, "NetworkManagement"

    const-string/jumbo v5, "not calling netd to add related routes"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :goto_6c
    return-void

    .line 1739
    :cond_6d
    if-nez v3, :cond_90

    .line 1740
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tunnelingNetworkInterface is null, passed tunnelingNetworkInterface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const-string v4, "NetworkManagement"

    const-string v5, "Not calling netd to add related routes"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 1744
    :cond_90
    :try_start_90
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modifyEpdg sending cmd:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_ae
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_90 .. :try_end_ae} :catch_af

    goto :goto_6c

    .line 1746
    :catch_af
    move-exception v1

    .line 1747
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "add"    # Z
    .param p2, "fromIface"    # Ljava/lang/String;
    .param p3, "toIface"    # Ljava/lang/String;

    .prologue
    .line 1694
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "ipfwd"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_1e

    const-string v2, "add"

    :goto_d
    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 v2, 0x2

    aput-object p3, v4, v2

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1696
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :try_start_18
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_1d} :catch_22

    .line 1700
    return-void

    .line 1694
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1e
    const-string/jumbo v2, "remove"

    goto :goto_d

    .line 1697
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_22
    move-exception v1

    .line 1698
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 3308
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 3314
    return-void

    .line 3311
    :catch_24
    move-exception v0

    .line 3312
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1814
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v8, "nat"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-direct {v1, v8, v9}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1819
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const/4 v6, 0x0

    .line 1821
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    :try_start_15
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_18
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_18} :catch_26

    move-result-object v6

    .line 1828
    :goto_19
    if-nez v6, :cond_50

    .line 1829
    const-string v8, "0"

    invoke-virtual {v1, v8}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1844
    :cond_20
    :try_start_20
    iget-object v8, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_25} :catch_a2

    .line 1848
    return-void

    .line 1822
    :catch_26
    move-exception v7

    .line 1823
    .local v7, "se":Ljava/net/SocketException;
    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "modifyNat, cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",got Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v6, 0x0

    goto :goto_19

    .line 1833
    .end local v7    # "se":Ljava/net/SocketException;
    :cond_50
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1835
    .local v5, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1836
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1837
    .local v4, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v9

    invoke-static {v8, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1839
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_67

    .line 1845
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_a2
    move-exception v2

    .line 1846
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8
.end method

.method private modifyPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "targetInterface"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 3628
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "interface"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3629
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 3631
    .local v3, "targetNetworkInterface":Ljava/net/NetworkInterface;
    if-eqz v3, :cond_40

    .line 3633
    :try_start_17
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 3634
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3636
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modifyPrivatePacket cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_40} :catch_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_17 .. :try_end_40} :catch_46

    .line 3644
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_40
    :goto_40
    return-void

    .line 3638
    :catch_41
    move-exception v1

    .line 3639
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_40

    .line 3640
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_46
    move-exception v1

    .line 3641
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1323
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1328
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1329
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1331
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    .line 1346
    :cond_39
    :goto_39
    :try_start_39
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_3e} :catch_5f

    .line 1350
    return-void

    .line 1333
    :sswitch_3f
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1334
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_39

    .line 1338
    :sswitch_51
    const-string/jumbo v2, "unreachable"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_39

    .line 1341
    :sswitch_58
    const-string/jumbo v2, "throw"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_39

    .line 1347
    :catch_5f
    move-exception v1

    .line 1348
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1331
    nop

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_3f
        0x7 -> :sswitch_51
        0x9 -> :sswitch_58
    .end sparse-switch
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 751
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 753
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 755
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 753
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 761
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 763
    return-void

    .line 761
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 757
    :catch_24
    move-exception v2

    goto :goto_14

    .line 756
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 733
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 735
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 737
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 735
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 743
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 745
    return-void

    .line 743
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 739
    :catch_24
    move-exception v2

    goto :goto_14

    .line 738
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 463
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 465
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 463
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 471
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 473
    return-void

    .line 471
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 467
    :catch_24
    move-exception v2

    goto :goto_14

    .line 466
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceClassActivity(IIJZ)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "fromRadio"    # Z

    .prologue
    const/4 v1, 0x1

    .line 521
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    .line 522
    .local v2, "isMobile":Z
    if-eqz v2, :cond_1c

    .line 523
    if-nez p5, :cond_5a

    .line 524
    iget-boolean v5, p0, mMobileActivityFromRadio:Z

    if-eqz v5, :cond_f

    .line 528
    iget p2, p0, mLastPowerStateFromRadio:I

    .line 533
    :cond_f
    :goto_f
    iget v5, p0, mLastPowerStateFromRadio:I

    if-eq v5, p2, :cond_1c

    .line 534
    iput p2, p0, mLastPowerStateFromRadio:I

    .line 536
    :try_start_15
    invoke-direct {p0}, getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_8f

    .line 542
    :cond_1c
    :goto_1c
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 543
    iget v5, p0, mLastPowerStateFromWifi:I

    if-eq v5, p2, :cond_2f

    .line 544
    iput p2, p0, mLastPowerStateFromWifi:I

    .line 546
    :try_start_28
    invoke-direct {p0}, getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJ)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_8d

    .line 552
    :cond_2f
    :goto_2f
    sget v5, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p2, v5, :cond_37

    sget v5, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p2, v5, :cond_5d

    .line 555
    .local v1, "isActive":Z
    :cond_37
    :goto_37
    if-eqz v2, :cond_3f

    if-nez p5, :cond_3f

    iget-boolean v5, p0, mMobileActivityFromRadio:Z

    if-nez v5, :cond_64

    .line 560
    :cond_3f
    iget-object v5, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 562
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    if-ge v0, v3, :cond_5f

    .line 564
    :try_start_48
    iget-object v5, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkManagementEventObserver;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_57} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_57} :catch_89
    .catchall {:try_start_48 .. :try_end_57} :catchall_7f

    .line 562
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 531
    .end local v0    # "i":I
    .end local v1    # "isActive":Z
    .end local v3    # "length":I
    :cond_5a
    iput-boolean v1, p0, mMobileActivityFromRadio:Z

    goto :goto_f

    .line 552
    :cond_5d
    const/4 v1, 0x0

    goto :goto_37

    .line 571
    .restart local v0    # "i":I
    .restart local v1    # "isActive":Z
    .restart local v3    # "length":I
    :cond_5f
    iget-object v5, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 575
    .end local v0    # "i":I
    .end local v3    # "length":I
    :cond_64
    const/4 v4, 0x0

    .line 576
    .local v4, "report":Z
    iget-object v6, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 577
    :try_start_68
    iget-object v5, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 580
    const/4 v1, 0x1

    .line 582
    :cond_71
    iget-boolean v5, p0, mNetworkActive:Z

    if-eq v5, v1, :cond_78

    .line 583
    iput-boolean v1, p0, mNetworkActive:Z

    .line 584
    move v4, v1

    .line 586
    :cond_78
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_86

    .line 587
    if-eqz v4, :cond_7e

    .line 588
    invoke-direct {p0}, reportNetworkActive()V

    .line 590
    :cond_7e
    return-void

    .line 571
    .end local v4    # "report":Z
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :catchall_7f
    move-exception v5

    iget-object v6, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5

    .line 586
    .end local v0    # "i":I
    .end local v3    # "length":I
    .restart local v4    # "report":Z
    :catchall_86
    move-exception v5

    :try_start_87
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v5

    .line 567
    .end local v4    # "report":Z
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :catch_89
    move-exception v5

    goto :goto_57

    .line 566
    :catch_8b
    move-exception v5

    goto :goto_57

    .line 547
    .end local v0    # "i":I
    .end local v1    # "isActive":Z
    .end local v3    # "length":I
    :catch_8d
    move-exception v5

    goto :goto_2f

    .line 537
    :catch_8f
    move-exception v5

    goto :goto_1c
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 769
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 771
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 773
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 771
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 780
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 782
    return-void

    .line 780
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 776
    :catch_24
    move-exception v2

    goto :goto_14

    .line 775
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 443
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 445
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 447
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 445
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 453
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 455
    return-void

    .line 453
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 449
    :catch_24
    move-exception v2

    goto :goto_14

    .line 448
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 597
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 599
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceMessageRecevied(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 597
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 604
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 605
    return-void

    .line 601
    :catch_1d
    move-exception v2

    goto :goto_14

    .line 600
    :catch_1f
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 481
    iget-object v2, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v2, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 486
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 488
    :try_start_13
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_2e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_27

    .line 486
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 494
    :cond_21
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 496
    return-void

    .line 494
    :catchall_27
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 490
    :catch_2e
    move-exception v2

    goto :goto_1e

    .line 489
    :catch_30
    move-exception v2

    goto :goto_1e
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 424
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 426
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 428
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 426
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 434
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 436
    return-void

    .line 434
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 430
    :catch_24
    move-exception v2

    goto :goto_14

    .line 429
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 504
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 506
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 504
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 512
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    return-void

    .line 512
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 508
    :catch_24
    move-exception v2

    goto :goto_14

    .line 507
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 788
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 790
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_2e

    .line 792
    :try_start_9
    const-string/jumbo v2, "updated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 793
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p2}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 790
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 795
    :cond_20
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p2}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2b} :catch_3b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    goto :goto_1d

    .line 797
    :catch_2c
    move-exception v2

    goto :goto_1d

    .line 802
    :cond_2e
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 804
    return-void

    .line 802
    :catchall_34
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 798
    :catch_3b
    move-exception v2

    goto :goto_1d
.end method

.method private prepareNativeDaemon()V
    .registers 21

    .prologue
    .line 612
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, mBandwidthControlEnabled:Z

    .line 615
    new-instance v15, Ljava/io/File;

    const-string v16, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v8

    .line 616
    .local v8, "hasKernelSupport":Z
    if-eqz v8, :cond_f3

    .line 617
    const-string v15, "NetworkManagement"

    const-string/jumbo v16, "enabling bandwidth control"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v15, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v16, "bandwidth"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "enable"

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 620
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, mBandwidthControlEnabled:Z
    :try_end_37
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_37} :catch_e6

    .line 628
    :goto_37
    const-string/jumbo v16, "net.qtaguid_enabled"

    move-object/from16 v0, p0

    iget-boolean v15, v0, mBandwidthControlEnabled:Z

    if-eqz v15, :cond_fd

    const-string v15, "1"

    :goto_42
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-boolean v15, v0, mBandwidthControlEnabled:Z

    if-eqz v15, :cond_54

    .line 632
    :try_start_4d
    invoke-direct/range {p0 .. p0}, getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_54} :catch_37a

    .line 638
    :cond_54
    :goto_54
    :try_start_54
    move-object/from16 v0, p0

    iget-object v15, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v16, "strict"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "enable"

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 639
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, mStrictEnabled:Z
    :try_end_72
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_54 .. :try_end_72} :catch_101

    .line 645
    :goto_72
    move-object/from16 v0, p0

    iget-object v0, v0, mQuotaLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 646
    :try_start_79
    move-object/from16 v0, p0

    iget-object v15, v0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 647
    .local v12, "size":I
    if-lez v12, :cond_10d

    .line 648
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active quota rules"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object/from16 v0, p0

    iget-object v5, v0, mActiveQuotas:Ljava/util/HashMap;

    .line 650
    .local v5, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mActiveQuotas:Ljava/util/HashMap;

    .line 651
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_bf
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 652
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_bf

    .line 726
    .end local v5    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "size":I
    :catchall_e3
    move-exception v15

    monitor-exit v17
    :try_end_e5
    .catchall {:try_start_79 .. :try_end_e5} :catchall_e3

    throw v15

    .line 621
    :catch_e6
    move-exception v6

    .line 622
    .local v6, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v15, "NetworkManagement"

    const-string/jumbo v16, "problem enabling bandwidth controls"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 625
    .end local v6    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_f3
    const-string v15, "NetworkManagement"

    const-string/jumbo v16, "not enabling bandwidth control"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 628
    :cond_fd
    const-string v15, "0"

    goto/16 :goto_42

    .line 640
    :catch_101
    move-exception v6

    .line 641
    .restart local v6    # "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v15, "NetworkManagement"

    const-string v16, "Failed strict enable"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_72

    .line 656
    .end local v6    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v12    # "size":I
    :cond_10d
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v15, v0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 657
    if-lez v12, :cond_177

    .line 658
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active alert rules"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, mActiveAlerts:Ljava/util/HashMap;

    .line 660
    .local v4, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mActiveAlerts:Ljava/util/HashMap;

    .line 661
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_153
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_177

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 662
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_153

    .line 666
    .end local v4    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_177
    move-object/from16 v0, p0

    iget-object v15, v0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 667
    if-lez v12, :cond_1cf

    .line 668
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active UID rules"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p0

    iget-object v14, v0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 670
    .local v14, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v15, Landroid/util/SparseBooleanArray;

    invoke-direct {v15}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 671
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1b7
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v9, v15, :cond_1cf

    .line 672
    invoke-virtual {v14, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v14, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, setUidNetworkRules(IZ)V

    .line 671
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b7

    .line 676
    .end local v9    # "i":I
    .end local v14    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v15, v0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 677
    if-lez v12, :cond_227

    .line 678
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active UID cleartext policies"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p0

    iget-object v11, v0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 680
    .local v11, "local":Landroid/util/SparseIntArray;
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 681
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_20f
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v9, v15, :cond_227

    .line 682
    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, setUidCleartextNetworkPolicy(II)V

    .line 681
    add-int/lit8 v9, v9, 0x1

    goto :goto_20f

    .line 686
    .end local v9    # "i":I
    .end local v11    # "local":Landroid/util/SparseIntArray;
    :cond_227
    move-object/from16 v0, p0

    iget-boolean v15, v0, mFirewallEnabled:Z

    if-nez v15, :cond_233

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_294

    :cond_233
    const/4 v15, 0x1

    :goto_234
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, setFirewallEnabled(Z)V

    .line 688
    move-object/from16 v0, p0

    iget-object v15, v0, mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 689
    if-lez v12, :cond_296

    .line 690
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active firewall UID rules"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v13, v0, mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 692
    .local v13, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 693
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_279
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v9, v15, :cond_296

    .line 694
    const/4 v15, 0x0

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, setFirewallUidRuleInternal(III)V

    .line 693
    add-int/lit8 v9, v9, 0x1

    goto :goto_279

    .line 686
    .end local v9    # "i":I
    .end local v13    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_294
    const/4 v15, 0x0

    goto :goto_234

    .line 699
    :cond_296
    move-object/from16 v0, p0

    iget-object v15, v0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 700
    if-lez v12, :cond_2f1

    .line 701
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active firewall standby UID rules"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 703
    .restart local v13    # "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 704
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2d6
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v9, v15, :cond_2f1

    .line 705
    const/4 v15, 0x2

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, setFirewallUidRuleInternal(III)V

    .line 704
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d6

    .line 709
    .end local v9    # "i":I
    .end local v13    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v15, v0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_307

    .line 710
    const/4 v15, 0x2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, setFirewallChainEnabled(IZ)V

    .line 713
    :cond_307
    move-object/from16 v0, p0

    iget-object v15, v0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 714
    if-lez v12, :cond_362

    .line 715
    const-string v15, "NetworkManagement"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Pushing "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " active firewall dozable UID rules"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 717
    .restart local v13    # "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 718
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_347
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v9, v15, :cond_362

    .line 719
    const/4 v15, 0x1

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, setFirewallUidRuleInternal(III)V

    .line 718
    add-int/lit8 v9, v9, 0x1

    goto :goto_347

    .line 723
    .end local v9    # "i":I
    .end local v13    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_362
    move-object/from16 v0, p0

    iget-object v15, v0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_378

    .line 724
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, setFirewallChainEnabled(IZ)V

    .line 726
    :cond_378
    monitor-exit v17
    :try_end_379
    .catchall {:try_start_10d .. :try_end_379} :catchall_e3

    .line 727
    return-void

    .line 633
    .end local v12    # "size":I
    :catch_37a
    move-exception v15

    goto/16 :goto_54
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    const/4 v1, 0x0

    .line 1354
    .local v1, "fstream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_4a
    .catchall {:try_start_6 .. :try_end_b} :catchall_3c

    .line 1358
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1359
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1364
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1365
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_2a
    .catchall {:try_start_b .. :try_end_29} :catchall_47

    goto :goto_1a

    .line 1367
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v6

    move-object v1, v2

    .line 1370
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    :goto_2c
    if-eqz v1, :cond_31

    .line 1372
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_43

    .line 1377
    :cond_31
    :goto_31
    return-object v4

    .line 1370
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_32
    if-eqz v2, :cond_4c

    .line 1372
    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    move-object v1, v2

    .line 1373
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :catch_39
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .line 1370
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_3c
    move-exception v6

    :goto_3d
    if-eqz v1, :cond_42

    .line 1372
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_45

    .line 1373
    :cond_42
    :goto_42
    throw v6

    :catch_43
    move-exception v6

    goto :goto_31

    :catch_45
    move-exception v7

    goto :goto_42

    .line 1370
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :catchall_47
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3d

    .line 1367
    :catch_4a
    move-exception v6

    goto :goto_2c

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4c
    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31
.end method

.method private reportNetworkActive()V
    .registers 5

    .prologue
    .line 3155
    iget-object v2, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 3157
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3159
    :try_start_9
    iget-object v2, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkActivityListener;

    invoke-interface {v2}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 3157
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3165
    :cond_17
    iget-object v2, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3167
    return-void

    .line 3165
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 3161
    :catch_24
    move-exception v2

    goto :goto_14

    .line 3160
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private setFirewallUidRuleInternal(III)V
    .registers 15
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 2905
    iget-object v6, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2906
    :try_start_3
    invoke-direct {p0, p1}, getUidFirewallRules(I)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 2908
    .local v4, "uidFirewallRules":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2909
    .local v2, "oldUidFirewallRule":I
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_3d

    .line 2910
    const-string v5, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "oldRule = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newRule="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    :cond_3d
    if-ne v2, p3, :cond_4c

    .line 2914
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4a

    const-string v5, "NetworkManagement"

    const-string v7, "!!!!! Skipping change"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_4a
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_83

    .line 2937
    :goto_4b
    return-void

    .line 2920
    :cond_4c
    :try_start_4c
    invoke-direct {p0, p1, p3}, getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v3

    .line 2921
    .local v3, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v1

    .line 2923
    .local v1, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_86

    .line 2924
    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2929
    :goto_59
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 2930
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "firewall"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "set_uid_rule"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0, p1}, getFirewallChainName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_81
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_81} :catch_8a
    .catchall {:try_start_4c .. :try_end_81} :catchall_83

    .line 2936
    :cond_81
    :try_start_81
    monitor-exit v6

    goto :goto_4b

    .end local v1    # "oldRuleName":Ljava/lang/String;
    .end local v2    # "oldUidFirewallRule":I
    .end local v3    # "ruleName":Ljava/lang/String;
    .end local v4    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :catchall_83
    move-exception v5

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_83

    throw v5

    .line 2926
    .restart local v1    # "oldRuleName":Ljava/lang/String;
    .restart local v2    # "oldUidFirewallRule":I
    .restart local v3    # "ruleName":Ljava/lang/String;
    .restart local v4    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :cond_86
    :try_start_86
    invoke-virtual {v4, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_89
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    goto :goto_59

    .line 2933
    .end local v1    # "oldRuleName":Ljava/lang/String;
    .end local v3    # "ruleName":Ljava/lang/String;
    :catch_8a
    move-exception v0

    .line 2934
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_8b
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_83
.end method


# virtual methods
.method public addChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3878
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addchain chain : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    invoke-static {}, enforceSystemUid()V

    .line 3882
    :try_start_34
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "chain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_4f} :catch_50

    .line 3886
    return-void

    .line 3883
    :catch_50
    move-exception v0

    .line 3884
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V
    .registers 12
    .param p1, "ranges"    # [Landroid/net/UidRange;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    .line 3660
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3661
    const/16 v5, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    .line 3662
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "users"

    aput-object v6, v2, v5

    .line 3663
    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v2, v5

    .line 3664
    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 3665
    const/4 v5, 0x3

    aput-object p2, v2, v5

    .line 3666
    const/4 v0, 0x4

    .line 3668
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, p1

    if-ge v4, v5, :cond_4f

    .line 3669
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 3670
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_39

    array-length v5, v2

    if-ne v1, v5, :cond_50

    .line 3672
    :cond_39
    :try_start_39
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "enterprise"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_45} :catch_49

    .line 3676
    const/4 v0, 0x4

    .line 3668
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 3673
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_49
    move-exception v3

    .line 3674
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 3680
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4f
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_50
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_46
.end method

.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    .prologue
    .line 2266
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_14

    const-string v2, "NetworkManagement"

    const-string v3, "Adding idletimer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_14
    iget-object v3, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2271
    :try_start_17
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2272
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_29

    .line 2274
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 2275
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_69

    .line 2298
    :goto_28
    return-void

    .line 2279
    :cond_29
    :try_start_29
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "add"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_29 .. :try_end_4a} :catch_6c
    .catchall {:try_start_29 .. :try_end_4a} :catchall_69

    .line 2284
    :try_start_4a
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2288
    const/4 v2, 0x0

    iput-boolean v2, p0, mNetworkActive:Z

    .line 2290
    :cond_5d
    iget-object v2, p0, mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$2;

    invoke-direct {v4, p0, p3}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2297
    monitor-exit v3

    goto :goto_28

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_69
    move-exception v2

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_69

    throw v2

    .line 2281
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_6c
    move-exception v0

    .line 2282
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_6d
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_69
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3470
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string v2, "add"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 3473
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3474
    const-string v2, "add"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, v1}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_c

    .line 3477
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_27
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 3299
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    return-void
.end method

.method public addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;

    .prologue
    .line 4001
    const-string v1, "NetworkManagement"

    const-string v2, "addIpAcceptRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    invoke-static {}, enforceSystemUid()V

    .line 4004
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accept"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_28} :catch_29

    .line 4008
    return-void

    .line 4005
    :catch_29
    move-exception v0

    .line 4006
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .prologue
    .line 3318
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "network"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "legacy"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3323
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 3324
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3326
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 3327
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3331
    :cond_75
    :try_start_75
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 3335
    return-void

    .line 3332
    :catch_7b
    move-exception v1

    .line 3333
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public addMptcpLink(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3858
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addmptcplink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-static {}, enforceSystemUid()V

    .line 3861
    :try_start_1b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "link"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_34} :catch_35

    .line 3865
    return-void

    .line 3862
    :catch_35
    move-exception v0

    .line 3863
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1314
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1315
    return-void
.end method

.method public addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "metric"    # I
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3583
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagement"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 3587
    const-string v5, "NetworkManagement"

    const-string/jumbo v6, "route cmd failed - iface is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    :goto_19
    return v4

    .line 3591
    :cond_1a
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "route"

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "add"

    aput-object v8, v7, v4

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3592
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 3593
    const-string/jumbo v6, "def"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3598
    :goto_34
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 3599
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_97

    .line 3600
    const-string/jumbo v6, "v4"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3605
    :goto_42
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3606
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3608
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 3609
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3612
    :cond_61
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3615
    :try_start_68
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_6d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_68 .. :try_end_6d} :catch_9e

    move-result-object v3

    .line 3621
    .local v3, "rsp":Lcom/android/server/NativeDaemonEvent;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_8e

    .line 3622
    const-string v4, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add metric route response is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    move v4, v5

    .line 3624
    goto :goto_19

    .line 3595
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v3    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :cond_90
    const-string/jumbo v6, "dst"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_34

    .line 3602
    .restart local v2    # "gateway":Ljava/net/InetAddress;
    :cond_97
    const-string/jumbo v6, "v6"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_42

    .line 3616
    :catch_9e
    move-exception v1

    .line 3617
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "NetworkManagement"

    const-string/jumbo v6, "route cmd failed: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19
.end method

.method public addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 3900
    const-string v1, "NetworkManagement"

    const-string v2, "addSocksRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    invoke-static {}, enforceSystemUid()V

    .line 3903
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_30} :catch_31

    .line 3907
    return-void

    .line 3904
    :catch_31
    move-exception v0

    .line 3905
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3940
    const-string v1, "NetworkManagement"

    const-string v2, "addSocksSkipRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    invoke-static {}, enforceSystemUid()V

    .line 3943
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "skip"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_29} :catch_2a

    .line 3947
    return-void

    .line 3944
    :catch_2a
    move-exception v0

    .line 3945
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3960
    const-string v1, "NetworkManagement"

    const-string v2, "addSocksSkipRuleProto"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " iptype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    invoke-static {}, enforceSystemUid()V

    .line 3964
    :try_start_22
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "skip"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_4b} :catch_4c

    .line 3968
    return-void

    .line 3965
    :catch_4c
    move-exception v0

    .line 3966
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 4071
    const-string v1, "NetworkManagement"

    const-string v2, "addSourcePortAcceptRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    invoke-static {}, enforceSystemUid()V

    .line 4074
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "sport"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_2d} :catch_2e

    .line 4078
    return-void

    .line 4075
    :catch_2e
    move-exception v0

    .line 4076
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addSourceRoute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .prologue
    .line 4051
    const-string v1, "NetworkManagement"

    const-string v2, "addSourceRoute"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    invoke-static {}, enforceSystemUid()V

    .line 4054
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_26} :catch_27

    .line 4058
    return-void

    .line 4055
    :catch_27
    move-exception v0

    .line 4056
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3920
    const-string v1, "NetworkManagement"

    const-string v2, "addSocksRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    invoke-static {}, enforceSystemUid()V

    .line 3923
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_3b} :catch_3c

    .line 3927
    return-void

    .line 3924
    :catch_3c
    move-exception v0

    .line 3925
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 3981
    const-string v1, "NetworkManagement"

    const-string v2, "addUidToChain"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    invoke-static {}, enforceSystemUid()V

    .line 3984
    :try_start_a
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_2d} :catch_2e

    .line 3988
    return-void

    .line 3985
    :catch_2e
    move-exception v0

    .line 3986
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addUpstreamV6Interface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUpstreamInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :try_start_27
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add_upstream"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1155
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_45} :catch_46

    .line 1159
    return-void

    .line 1156
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_46
    move-exception v1

    .line 1157
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Cannot add upstream interface"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 2660
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2662
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "users"

    aput-object v6, v2, v5

    .line 2663
    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v2, v5

    .line 2664
    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2665
    const/4 v0, 0x3

    .line 2667
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    array-length v5, p2

    if-ge v4, v5, :cond_4c

    .line 2668
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2669
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_36

    array-length v5, v2

    if-ne v1, v5, :cond_4d

    .line 2671
    :cond_36
    :try_start_36
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_42} :catch_46

    .line 2675
    const/4 v0, 0x3

    .line 2667
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2672
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_46
    move-exception v3

    .line 2673
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2678
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4c
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4d
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_43
.end method

.method public allowProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 3448
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "protect"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "allow"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_26} :catch_27

    .line 3455
    return-void

    .line 3452
    :catch_27
    move-exception v0

    .line 3453
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public appendInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3487
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 3488
    .local v1, "route":Landroid/net/RouteInfo;
    const-string v2, "append"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, v1}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_4

    .line 3490
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_19
    return-void
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    .prologue
    .line 1884
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "pppd"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "attach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_48} :catch_49

    .line 1894
    return-void

    .line 1891
    :catch_49
    move-exception v0

    .line 1892
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public blockEnterpriseUidRanges([Landroid/net/UidRange;)V
    .registers 10
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 3708
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3709
    const/16 v5, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    .line 3710
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "blockusers"

    aput-object v6, v2, v5

    .line 3711
    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v2, v5

    .line 3712
    const/4 v0, 0x2

    .line 3714
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, p1

    if-ge v4, v5, :cond_44

    .line 3715
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 3716
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2e

    array-length v5, v2

    if-ne v1, v5, :cond_45

    .line 3718
    :cond_2e
    :try_start_2e
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "enterprise"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_3a} :catch_3e

    .line 3722
    const/4 v0, 0x2

    .line 3714
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 3719
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_3e
    move-exception v3

    .line 3720
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 3726
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_44
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_45
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_3b
.end method

.method public buildFirewall()V
    .registers 7

    .prologue
    .line 2985
    invoke-static {}, enforceSystemUid()V

    .line 2987
    :try_start_3
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "firewall"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "build_firewall"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_13
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_13} :catch_14

    .line 2991
    return-void

    .line 2988
    :catch_14
    move-exception v0

    .line 2989
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearAllFirewallPolicy()V
    .registers 7

    .prologue
    .line 3005
    invoke-static {}, enforceSystemUid()V

    .line 3007
    :try_start_3
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "firewall"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clear_all_firewall_policy"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_13
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_13} :catch_14

    .line 3011
    return-void

    .line 3008
    :catch_14
    move-exception v0

    .line 3009
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearDefaultNetId()V
    .registers 7

    .prologue
    .line 3374
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "default"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "clear"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 3381
    return-void

    .line 3378
    :catch_20
    move-exception v0

    .line 3379
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1273
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearaddrs"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 1279
    return-void

    .line 1276
    :catch_1d
    move-exception v0

    .line 1277
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearPermission([I)V
    .registers 10
    .param p1, "uids"    # [I

    .prologue
    .line 3425
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 3428
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "permission"

    aput-object v6, v2, v5

    .line 3429
    const/4 v5, 0x1

    const-string/jumbo v6, "user"

    aput-object v6, v2, v5

    .line 3430
    const/4 v5, 0x2

    const-string v6, "clear"

    aput-object v6, v2, v5

    .line 3431
    const/4 v0, 0x3

    .line 3433
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, p1

    if-ge v4, v5, :cond_4b

    .line 3434
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 3435
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_35

    array-length v5, v2

    if-ne v1, v5, :cond_4c

    .line 3437
    :cond_35
    :try_start_35
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_41} :catch_45

    .line 3441
    const/4 v0, 0x3

    .line 3433
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 3438
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_45
    move-exception v3

    .line 3439
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 3444
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4b
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4c
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_42
.end method

.method public controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "targetInterface"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 3648
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    :try_start_9
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlPrivatePacket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    invoke-direct {p0, p3, p1, p2}, modifyPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_38} :catch_39

    .line 3655
    return-void

    .line 3652
    :catch_39
    move-exception v0

    .line 3653
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createNetworkGuardChain()V
    .registers 7

    .prologue
    .line 3754
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "networkguard"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "create"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 3761
    return-void

    .line 3758
    :catch_1b
    move-exception v0

    .line 3759
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createPhysicalNetwork(ILjava/lang/String;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 3261
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    if-eqz p2, :cond_27

    .line 3265
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "create"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3272
    :goto_26
    return-void

    .line 3267
    :cond_27
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "create"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_3f} :catch_40

    goto :goto_26

    .line 3269
    :catch_40
    move-exception v0

    .line 3270
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualNetwork(IZZ)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "hasDNS"    # Z
    .param p3, "secure"    # Z

    .prologue
    .line 3276
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "network"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "create"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string/jumbo v5, "vpn"

    aput-object v5, v4, v1

    const/4 v5, 0x3

    if-eqz p2, :cond_36

    const-string v1, "1"

    :goto_29
    aput-object v1, v4, v5

    const/4 v5, 0x4

    if-eqz p3, :cond_39

    const-string v1, "1"

    :goto_30
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3284
    return-void

    .line 3279
    :cond_36
    const-string v1, "0"

    goto :goto_29

    :cond_39
    const-string v1, "0"
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_3b} :catch_3c

    goto :goto_30

    .line 3281
    :catch_3c
    move-exception v0

    .line 3282
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;

    .prologue
    .line 4011
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "delIpAcceptRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    invoke-static {}, enforceSystemUid()V

    .line 4014
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accept"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "delete"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2a} :catch_2b

    .line 4018
    return-void

    .line 4015
    :catch_2b
    move-exception v0

    .line 4016
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 4081
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "delSourcePortAcceptRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    invoke-static {}, enforceSystemUid()V

    .line 4084
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "sport"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2f} :catch_30

    .line 4088
    return-void

    .line 4085
    :catch_30
    move-exception v0

    .line 4086
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public delSourceRoute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .prologue
    .line 4061
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "delSourceRoute"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    invoke-static {}, enforceSystemUid()V

    .line 4064
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_29

    .line 4068
    return-void

    .line 4065
    :catch_29
    move-exception v0

    .line 4066
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public delSrcRoute([BI)Z
    .registers 12
    .param p1, "ip"    # [B
    .param p2, "routeId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3548
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagement"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    :try_start_b
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_e} :catch_5d

    move-result-object v2

    .line 3559
    .local v2, "ipAddr":Ljava/net/InetAddress;
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "route"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "del"

    aput-object v8, v7, v5

    const-string/jumbo v8, "src"

    aput-object v8, v7, v4

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3561
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_68

    .line 3562
    const-string/jumbo v6, "v4"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3567
    :goto_2e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3570
    :try_start_35
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_3a} :catch_6f

    move-result-object v3

    .line 3575
    .local v3, "rsp":Lcom/android/server/NativeDaemonEvent;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_5c

    .line 3576
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "del src route response is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "ipAddr":Ljava/net/InetAddress;
    .end local v3    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :cond_5c
    :goto_5c
    return v4

    .line 3554
    :catch_5d
    move-exception v1

    .line 3555
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v4, "NetworkManagement"

    const-string/jumbo v6, "route cmd failed due to invalid src ip"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 3556
    goto :goto_5c

    .line 3564
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v2    # "ipAddr":Ljava/net/InetAddress;
    :cond_68
    const-string/jumbo v6, "v6"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_2e

    .line 3571
    :catch_6f
    move-exception v1

    .line 3572
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "NetworkManagement"

    const-string/jumbo v6, "route cmd failed: "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 3573
    goto :goto_5c
.end method

.method public deleteNetworkGuardChain()V
    .registers 7

    .prologue
    .line 3765
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3768
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "networkguard"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "delete"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 3772
    return-void

    .line 3769
    :catch_1b
    move-exception v0

    .line 3770
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public deleteNetworkGuardWhiteListRule()V
    .registers 7

    .prologue
    .line 3799
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "networkguard"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "delete_whitelist_rule"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 3806
    return-void

    .line 3803
    :catch_1b
    move-exception v0

    .line 3804
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public denyProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 3459
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "protect"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "deny"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_27
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_27} :catch_28

    .line 3466
    return-void

    .line 3463
    :catch_28
    move-exception v0

    .line 3464
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .registers 8
    .param p1, "tty"    # Ljava/lang/String;

    .prologue
    .line 1898
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "pppd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "detach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 1904
    return-void

    .line 1901
    :catch_1e
    move-exception v0

    .line 1902
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mobileInterface"    # Ljava/lang/String;
    .param p2, "tunnelingInterface"    # Ljava/lang/String;

    .prologue
    .line 1765
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :try_start_9
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableEpdg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const-string/jumbo v1, "disable"

    invoke-direct {p0, v1, p1, p2}, modifyEpdg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_32} :catch_33

    .line 1772
    return-void

    .line 1769
    :catch_33
    move-exception v0

    .line 1770
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1293
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "disable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 1299
    return-void

    .line 1296
    :catch_24
    move-exception v0

    .line 1297
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableMptcp()V
    .registers 7

    .prologue
    .line 4041
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "disableMptcp"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    invoke-static {}, enforceSystemUid()V

    .line 4044
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "mode"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "disable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_22} :catch_23

    .line 4048
    return-void

    .line 4045
    :catch_23
    move-exception v0

    .line 4046
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1862
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    :try_start_9
    const-string/jumbo v1, "disable"

    invoke-direct {p0, v1, p1, p2}, modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1868
    return-void

    .line 1865
    :catch_10
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableNetworkGuard()V
    .registers 7

    .prologue
    .line 3788
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3791
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "networkguard"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "disable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 3795
    return-void

    .line 3792
    :catch_1b
    move-exception v0

    .line 3793
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3179
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    const-string v5, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3183
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3185
    const-string v5, "Bandwidth control enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mBandwidthControlEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3186
    const-string/jumbo v5, "mMobileActivityFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mMobileActivityFromRadio:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 3187
    const-string v5, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, mLastPowerStateFromRadio:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3188
    const-string/jumbo v5, "mNetworkActive="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mNetworkActive:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3190
    iget-object v6, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3191
    :try_start_43
    const-string v5, "Active quota ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    const-string v5, "Active alert ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_86

    .line 3195
    iget-object v6, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    monitor-enter v6

    .line 3196
    :try_start_63
    const-string v5, "UID reject on quota ifaces: ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3197
    iget-object v5, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 3198
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6f
    if-ge v1, v4, :cond_89

    .line 3199
    iget-object v5, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3200
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_83

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_63 .. :try_end_83} :catchall_c3

    .line 3198
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 3193
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_86
    move-exception v5

    :try_start_87
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v5

    .line 3202
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_89
    :try_start_89
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_c3

    .line 3205
    iget-object v6, p0, mUidFirewallRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 3206
    :try_start_92
    const-string v5, "UID firewall rule: ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    iget-object v5, p0, mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 3208
    const/4 v1, 0x0

    :goto_9e
    if-ge v1, v4, :cond_c6

    .line 3209
    iget-object v5, p0, mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3210
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3211
    iget-object v5, p0, mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3212
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_c0

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_92 .. :try_end_c0} :catchall_11d

    .line 3208
    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 3203
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_c3
    move-exception v5

    :try_start_c4
    monitor-exit v6
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v5

    .line 3214
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_c6
    :try_start_c6
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    monitor-exit v6
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_11d

    .line 3217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID firewall standby chain enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    iget-object v6, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 3220
    :try_start_ec
    const-string v5, "UID firewall standby rule: ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3221
    iget-object v5, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 3222
    const/4 v1, 0x0

    :goto_f8
    if-ge v1, v4, :cond_120

    .line 3223
    iget-object v5, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3224
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3225
    iget-object v5, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3226
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_11a

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_ec .. :try_end_11a} :catchall_177

    .line 3222
    :cond_11a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f8

    .line 3215
    :catchall_11d
    move-exception v5

    :try_start_11e
    monitor-exit v6
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v5

    .line 3228
    :cond_120
    :try_start_120
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    monitor-exit v6
    :try_end_126
    .catchall {:try_start_120 .. :try_end_126} :catchall_177

    .line 3231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID firewall dozable chain enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    iget-object v6, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 3234
    :try_start_146
    const-string v5, "UID firewall dozable rule: ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3235
    iget-object v5, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 3236
    const/4 v1, 0x0

    :goto_152
    if-ge v1, v4, :cond_17a

    .line 3237
    iget-object v5, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3238
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3239
    iget-object v5, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3240
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_174

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_146 .. :try_end_174} :catchall_1d9

    .line 3236
    :cond_174
    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    .line 3229
    :catchall_177
    move-exception v5

    :try_start_178
    monitor-exit v6
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    throw v5

    .line 3242
    :cond_17a
    :try_start_17a
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    monitor-exit v6
    :try_end_180
    .catchall {:try_start_17a .. :try_end_180} :catchall_1d9

    .line 3245
    iget-object v6, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3246
    :try_start_183
    const-string v5, "Idle timers:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    iget-object v5, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_192
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3248
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 3250
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string v5, "    timeout="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3251
    const-string v5, " type="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3252
    const-string v5, " networkCount="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_192

    .line 3254
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_1d6
    move-exception v5

    monitor-exit v6
    :try_end_1d8
    .catchall {:try_start_183 .. :try_end_1d8} :catchall_1d6

    throw v5

    .line 3243
    :catchall_1d9
    move-exception v5

    :try_start_1da
    monitor-exit v6
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    throw v5

    .line 3254
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1dc
    :try_start_1dc
    monitor-exit v6
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_1d6

    .line 3256
    const-string v5, "Firewall enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mFirewallEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3257
    return-void
.end method

.method public enableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mobileInterface"    # Ljava/lang/String;
    .param p2, "tunnelingInterface"    # Ljava/lang/String;

    .prologue
    .line 1754
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    :try_start_9
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableEpdg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const-string/jumbo v1, "enable"

    invoke-direct {p0, v1, p1, p2}, modifyEpdg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_32} :catch_33

    .line 1761
    return-void

    .line 1758
    :catch_33
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1283
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "enable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 1289
    return-void

    .line 1286
    :catch_24
    move-exception v0

    .line 1287
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableMptcp(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4031
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "enableMptcp"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    invoke-static {}, enforceSystemUid()V

    .line 4034
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "mode"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "enable"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 4038
    return-void

    .line 4035
    :catch_26
    move-exception v0

    .line 4036
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1852
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    :try_start_9
    const-string/jumbo v1, "enable"

    invoke-direct {p0, v1, p1, p2}, modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1858
    return-void

    .line 1855
    :catch_10
    move-exception v0

    .line 1856
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableNetworkGuard(Z)V
    .registers 9
    .param p1, "isBlack"    # Z

    .prologue
    .line 3776
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    if-eqz p1, :cond_23

    const-string/jumbo v1, "true"

    .line 3780
    .local v1, "rule":Ljava/lang/String;
    :goto_e
    :try_start_e
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "networkguard"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "enable"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_22} :catch_27

    .line 3784
    return-void

    .line 3777
    .end local v1    # "rule":Ljava/lang/String;
    :cond_23
    const-string/jumbo v1, "false"

    goto :goto_e

    .line 3781
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 3782
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public flushNetworkDnsCache(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2704
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "flushnet"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2710
    return-void

    .line 2707
    :catch_22
    move-exception v0

    .line 2708
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getAccessPointNumConnectedSta()I
    .registers 8

    .prologue
    .line 1907
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    :try_start_12
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "get_sta_num"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_23} :catch_32

    move-result-object v1

    .line 1919
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1921
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1915
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_32
    move-exception v0

    .line 1916
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getAccessPointStaList()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1947
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :try_start_12
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "get_sta_list"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_23} :catch_2e

    move-result-object v1

    .line 1959
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1961
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1955
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2e
    move-exception v0

    .line 1956
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1662
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dns"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_26} :catch_28

    move-result-object v1

    return-object v1

    .line 1666
    :catch_28
    move-exception v0

    .line 1667
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getFirewallChainName(I)Ljava/lang/String;
    .registers 5
    .param p1, "chain"    # I

    .prologue
    .line 2971
    packed-switch p1, :pswitch_data_28

    .line 2979
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2973
    :pswitch_1c
    const-string/jumbo v0, "standby"

    .line 2977
    :goto_1f
    return-object v0

    .line 2975
    :pswitch_20
    const-string/jumbo v0, "dozable"

    goto :goto_1f

    .line 2977
    :pswitch_24
    const-string/jumbo v0, "none"

    goto :goto_1f

    .line 2971
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1178
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v11, "NetworkManagement"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :try_start_9
    iget-object v9, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v10, "interface"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "getcfg"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_7c

    move-result-object v3

    .line 1187
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1190
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_2c
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1195
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_2c .. :try_end_3a} :catch_62

    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 1199
    .local v7, "prefixLength":I
    :try_start_3c
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_43} :catch_82
    .catch Ljava/util/NoSuchElementException; {:try_start_3c .. :try_end_43} :catch_62

    move-result-object v0

    .line 1205
    :goto_44
    :try_start_44
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4b} :catch_8b
    .catch Ljava/util/NoSuchElementException; {:try_start_44 .. :try_end_4b} :catch_62

    move-result v7

    .line 1210
    :goto_4c
    :try_start_4c
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1211
    :goto_54
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 1212
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/util/NoSuchElementException; {:try_start_4c .. :try_end_61} :catch_62

    goto :goto_54

    .line 1214
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_62
    move-exception v6

    .line 1215
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid response from daemon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1183
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_7c
    move-exception v2

    .line 1184
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 1200
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_82
    move-exception v4

    .line 1201
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_83
    const-string v9, "NetworkManagement"

    const-string v10, "Failed to parse ipaddr"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 1206
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_8b
    move-exception v5

    .line 1207
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "NetworkManagement"

    const-string v10, "Failed to parse prefixLength"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catch Ljava/util/NoSuchElementException; {:try_start_83 .. :try_end_93} :catch_62

    goto :goto_4c

    .line 1217
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_94
    return-object v1
.end method

.method public getIpForwardingEnabled()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1518
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "ipfwd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_2c

    move-result-object v1

    .line 1528
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1529
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1523
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2c
    move-exception v0

    .line 1524
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 2351
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    .line 2354
    :catch_14
    move-exception v0

    .line 2355
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 2331
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 2334
    :catch_10
    move-exception v0

    .line 2335
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 2341
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 2344
    :catch_10
    move-exception v0

    .line 2345
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 19

    .prologue
    .line 2565
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string v14, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v15, "NetworkManagement"

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    new-instance v11, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v13, 0x1

    invoke-direct {v11, v14, v15, v13}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2569
    .local v11, "stats":Landroid/net/NetworkStats;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v13, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v14, "bandwidth"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "gettetherstats"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 2571
    .local v6, "events":[Lcom/android/server/NativeDaemonEvent;
    move-object v2, v6

    .local v2, "arr$":[Lcom/android/server/NativeDaemonEvent;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2c
    if-ge v7, v10, :cond_c4

    aget-object v5, v2, v7

    .line 2572
    .local v5, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v13

    const/16 v14, 0x72

    if-eq v13, v14, :cond_3b

    .line 2571
    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 2575
    :cond_3b
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_15 .. :try_end_44} :catch_a3

    .line 2577
    .local v12, "tok":Ljava/util/StringTokenizer;
    :try_start_44
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 2578
    .local v8, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 2580
    .local v9, "ifaceOut":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2581
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v9, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 2582
    const/4 v13, -0x5

    iput v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2583
    const/4 v13, 0x0

    iput v13, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 2584
    const/4 v13, 0x0

    iput v13, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 2585
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2586
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 2587
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2588
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 2589
    invoke-virtual {v11, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_87
    .catch Ljava/util/NoSuchElementException; {:try_start_44 .. :try_end_87} :catch_88
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_87} :catch_a9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_44 .. :try_end_87} :catch_a3

    goto :goto_38

    .line 2590
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v8    # "ifaceIn":Ljava/lang/String;
    .end local v9    # "ifaceOut":Ljava/lang/String;
    :catch_88
    move-exception v3

    .line 2591
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_89
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "problem parsing tethering stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_a3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_89 .. :try_end_a3} :catch_a3

    .line 2596
    .end local v2    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    .end local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "tok":Ljava/util/StringTokenizer;
    :catch_a3
    move-exception v3

    .line 2597
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v13

    throw v13

    .line 2592
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v6    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "tok":Ljava/util/StringTokenizer;
    :catch_a9
    move-exception v3

    .line 2593
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_aa
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "problem parsing tethering stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_c4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_aa .. :try_end_c4} :catch_a3

    .line 2599
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v12    # "tok":Ljava/util/StringTokenizer;
    :cond_c4
    return-object v11
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 2555
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    .line 2558
    :catch_13
    move-exception v0

    .line 2559
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sPort"    # I
    .param p3, "dPort"    # I

    .prologue
    const/4 v10, 0x1

    .line 2715
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    :try_start_a
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "bandwidth"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "videocallstats"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "get"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_31} :catch_8c

    move-result-object v2

    .line 2724
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xdd

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2727
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2728
    .local v4, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2729
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2731
    new-instance v3, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v3, v6, v7, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2733
    .local v3, "stats":Landroid/net/NetworkStats;
    :try_start_4f
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2734
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    iput-object p1, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 2735
    const/16 v5, -0x64

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2736
    const/4 v5, 0x1

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 2737
    const/4 v5, 0x0

    iput v5, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 2738
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2739
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 2740
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2741
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 2742
    invoke-virtual {v3, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_8b} :catch_92

    .line 2743
    return-object v3

    .line 2720
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "stats":Landroid/net/NetworkStats;
    .end local v4    # "tok":Ljava/util/StringTokenizer;
    :catch_8c
    move-exception v0

    .line 2721
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2744
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    .restart local v4    # "tok":Ljava/util/StringTokenizer;
    :catch_92
    move-exception v0

    .line 2745
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "problem parsing video call stats for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
    .registers 24
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v21, "NetworkManagement"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v17, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    const-string v19, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_cb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1388
    .local v18, "s":Ljava/lang/String;
    const-string v19, "\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1390
    .local v5, "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    .line 1391
    const/16 v19, 0x0

    aget-object v11, v5, v19

    .line 1393
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1394
    const/16 v19, 0x1

    aget-object v2, v5, v19

    .line 1395
    .local v2, "dest":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v7, v5, v19

    .line 1396
    .local v7, "gate":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v6, v5, v19

    .line 1397
    .local v6, "flags":Ljava/lang/String;
    const/16 v19, 0x7

    aget-object v13, v5, v19

    .line 1400
    .local v13, "mask":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_5b
    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 1402
    .local v3, "destAddr":Ljava/net/InetAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v15

    .line 1405
    .local v15, "prefixLength":I
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1408
    .local v12, "linkAddress":Landroid/net/LinkAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 1411
    .local v9, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1412
    .local v16, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9f} :catch_a0

    goto :goto_20

    .line 1413
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v9    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_a0
    move-exception v4

    .line 1414
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1423
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v6    # "flags":Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v13    # "mask":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_cb
    const-string v19, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d9
    :goto_d9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_161

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1424
    .restart local v18    # "s":Ljava/lang/String;
    const-string v19, "\\s+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1425
    .restart local v5    # "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d9

    .line 1426
    const/16 v19, 0x9

    aget-object v19, v5, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1427
    .restart local v11    # "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d9

    .line 1428
    const/16 v19, 0x0

    aget-object v2, v5, v19

    .line 1429
    .restart local v2    # "dest":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v14, v5, v19

    .line 1430
    .local v14, "prefix":Ljava/lang/String;
    const/16 v19, 0x4

    aget-object v7, v5, v19

    .line 1434
    .restart local v7    # "gate":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_114
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 1438
    .restart local v15    # "prefixLength":I
    invoke-static {v2}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1439
    .restart local v3    # "destAddr":Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1441
    .restart local v12    # "linkAddress":Landroid/net/LinkAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 1443
    .local v8, "gateAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1444
    .restart local v16    # "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_135} :catch_136

    goto :goto_d9

    .line 1445
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v8    # "gateAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_136
    move-exception v4

    .line 1446
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 1452
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_161
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/RouteInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/RouteInfo;

    return-object v19
.end method

.method public getV6DnsForwarders()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1674
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dns6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_26} :catch_28

    move-result-object v1

    return-object v1

    .line 1678
    :catch_28
    move-exception v0

    .line 1679
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .prologue
    .line 2549
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    iget-boolean v0, p0, mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .registers 9
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3124
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "clatd"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_2e

    move-result-object v1

    .line 3133
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3134
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 3129
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2e
    move-exception v0

    .line 3130
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .prologue
    .line 2787
    invoke-static {}, enforceSystemUid()V

    .line 2788
    iget-boolean v0, p0, mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .prologue
    .line 3149
    iget-object v1, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 3150
    :try_start_3
    iget-boolean v0, p0, mNetworkActive:Z

    if-nez v0, :cond_f

    iget-object v0, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 3151
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isTetheringStarted()Z
    .registers 8

    .prologue
    .line 1572
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_2c

    move-result-object v1

    .line 1582
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1583
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1577
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2c
    move-exception v0

    .line 1578
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public joinMulticastGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "join"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;

    .prologue
    .line 1803
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "join_multicast"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 1810
    return-void

    .line 1807
    :catch_21
    move-exception v0

    .line 1808
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1137
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_22

    move-result-object v1

    return-object v1

    .line 1141
    :catch_22
    move-exception v0

    .line 1142
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1614
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_26} :catch_28

    move-result-object v1

    return-object v1

    .line 1619
    :catch_28
    move-exception v0

    .line 1620
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1872
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "list_ttys"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x71

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1c

    move-result-object v1

    return-object v1

    .line 1876
    :catch_1c
    move-exception v0

    .line 1877
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 3172
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 3173
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3175
    :cond_9
    return-void
.end method

.method public readWhiteList()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1978
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :try_start_13
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "read_whitelist"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_24} :catch_25

    .line 1989
    return v6

    .line 1985
    :catch_25
    move-exception v0

    .line 1986
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 3139
    iget-object v0, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3140
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 410
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 412
    return-void
.end method

.method public removeChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3889
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removechain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iptype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    invoke-static {}, enforceSystemUid()V

    .line 3893
    :try_start_35
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "chain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_51} :catch_52

    .line 3897
    return-void

    .line 3894
    :catch_52
    move-exception v0

    .line 3895
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V
    .registers 12
    .param p1, "ranges"    # [Landroid/net/UidRange;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    .line 3684
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    const/16 v5, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    .line 3686
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "users"

    aput-object v6, v2, v5

    .line 3687
    const/4 v5, 0x1

    const-string/jumbo v6, "remove"

    aput-object v6, v2, v5

    .line 3688
    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 3689
    const/4 v5, 0x3

    aput-object p2, v2, v5

    .line 3690
    const/4 v0, 0x4

    .line 3692
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v5, p1

    if-ge v4, v5, :cond_50

    .line 3693
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 3694
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_3a

    array-length v5, v2

    if-ne v1, v5, :cond_51

    .line 3696
    :cond_3a
    :try_start_3a
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "enterprise"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_46
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3a .. :try_end_46} :catch_4a

    .line 3700
    const/4 v0, 0x4

    .line 3692
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 3697
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_4a
    move-exception v3

    .line 3698
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 3704
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_50
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_51
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_47
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2302
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_14

    const-string v2, "NetworkManagement"

    const-string v3, "Removing idletimer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_14
    iget-object v3, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2307
    :try_start_17
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2308
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_29

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    if-lez v2, :cond_2b

    .line 2309
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_62

    .line 2327
    :goto_2a
    return-void

    .line 2313
    :cond_2b
    :try_start_2b
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "remove"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2b .. :try_end_51} :catch_65
    .catchall {:try_start_2b .. :try_end_51} :catchall_62

    .line 2318
    :try_start_51
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    iget-object v2, p0, mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/NetworkManagementService$3;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2326
    monitor-exit v3

    goto :goto_2a

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_62
    move-exception v2

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_62

    throw v2

    .line 2315
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_65
    move-exception v0

    .line 2316
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_66
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_62
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2438
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2458
    :goto_d
    return-void

    .line 2444
    :cond_e
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2445
    :try_start_11
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2447
    monitor-exit v2

    goto :goto_d

    .line 2457
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 2452
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "removeinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2453
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_36} :catch_38
    .catchall {:try_start_1e .. :try_end_36} :catchall_1b

    .line 2457
    :try_start_36
    monitor-exit v2

    goto :goto_d

    .line 2454
    :catch_38
    move-exception v0

    .line 2455
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_1b
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3481
    const-string/jumbo v0, "remove"

    const-string/jumbo v1, "local"

    invoke-direct {p0, v0, v1, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 3304
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2384
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2406
    :goto_d
    return-void

    .line 2390
    :cond_e
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2391
    :try_start_11
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2393
    monitor-exit v2

    goto :goto_d

    .line 2405
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 2396
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    .line 2401
    :try_start_28
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "removeiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_3b} :catch_3d
    .catchall {:try_start_28 .. :try_end_3b} :catchall_1b

    .line 2405
    :try_start_3b
    monitor-exit v2

    goto :goto_d

    .line 2402
    :catch_3d
    move-exception v0

    .line 2403
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_1b
.end method

.method public removeLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .prologue
    .line 3340
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    const-string v3, "NetworkManagement"

    const-string/jumbo v4, "removeLegacyRouteForNetId"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "network"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "legacy"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "remove"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3346
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 3347
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3349
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 3350
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3354
    :cond_7e
    :try_start_7e
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_83
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7e .. :try_end_83} :catch_84

    .line 3358
    return-void

    .line 3355
    :catch_84
    move-exception v1

    .line 3356
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public removeMptcpLink(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3868
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removemptcplink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    invoke-static {}, enforceSystemUid()V

    .line 3871
    :try_start_1c
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "link"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_36} :catch_37

    .line 3875
    return-void

    .line 3872
    :catch_37
    move-exception v0

    .line 3873
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeNetwork(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 3288
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "destroy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 3295
    return-void

    .line 3292
    :catch_22
    move-exception v0

    .line 3293
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1319
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1320
    return-void
.end method

.method public removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 3910
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "removeSocksRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    invoke-static {}, enforceSystemUid()V

    .line 3913
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_32} :catch_33

    .line 3917
    return-void

    .line 3914
    :catch_33
    move-exception v0

    .line 3915
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3950
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "removeSocksSkipRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    invoke-static {}, enforceSystemUid()V

    .line 3953
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "skip"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2b} :catch_2c

    .line 3957
    return-void

    .line 3954
    :catch_2c
    move-exception v0

    .line 3955
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3971
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "removeSocksSkipRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    invoke-static {}, enforceSystemUid()V

    .line 3974
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "skip"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_35} :catch_36

    .line 3978
    return-void

    .line 3975
    :catch_36
    move-exception v0

    .line 3976
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 3991
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "removeUidFromChain"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    invoke-static {}, enforceSystemUid()V

    .line 3994
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "delete"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2f} :catch_30

    .line 3998
    return-void

    .line 3995
    :catch_30
    move-exception v0

    .line 3996
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "ip_type"    # Ljava/lang/String;

    .prologue
    .line 3930
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "removeSocksRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    invoke-static {}, enforceSystemUid()V

    .line 3933
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_3d} :catch_3e

    .line 3937
    return-void

    .line 3934
    :catch_3e
    move-exception v0

    .line 3935
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeUpstreamV6Interface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeUpstreamInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_28
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove_upstream"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1170
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_47} :catch_48

    .line 1174
    return-void

    .line 1171
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_48
    move-exception v1

    .line 1172
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Cannot remove upstream interface"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 2682
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2684
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "users"

    aput-object v6, v2, v5

    .line 2685
    const/4 v5, 0x1

    const-string/jumbo v6, "remove"

    aput-object v6, v2, v5

    .line 2686
    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2687
    const/4 v0, 0x3

    .line 2689
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    array-length v5, p2

    if-ge v4, v5, :cond_4d

    .line 2690
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2691
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_37

    array-length v5, v2

    if-ne v1, v5, :cond_4e

    .line 2693
    :cond_37
    :try_start_37
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_37 .. :try_end_43} :catch_47

    .line 2697
    const/4 v0, 0x3

    .line 2689
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 2694
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_47
    move-exception v3

    .line 2695
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2700
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4d
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4e
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_44
.end method

.method public replaceDefaultRoute(Ljava/lang/String;[B)Z
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "gateway"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1476
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagement"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1481
    const-string v7, "NetworkManagement"

    const-string/jumbo v8, "route cmd failed - iface is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :goto_18
    return v6

    .line 1485
    :cond_19
    :try_start_19
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1c
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_1c} :catch_83

    move-result-object v2

    .line 1491
    .local v2, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "route replace def"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v0, "cmd":Ljava/lang/StringBuilder;
    instance-of v7, v2, Ljava/net/Inet4Address;

    if-eqz v7, :cond_8d

    .line 1494
    const-string v7, " v4 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    :goto_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :try_start_4b
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4b .. :try_end_54} :catch_93

    move-result-object v5

    .line 1507
    .local v5, "rsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_9e

    .line 1508
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1509
    .local v4, "line":Ljava/lang/String;
    const-string v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "replace default route response is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1486
    .end local v0    # "cmd":Ljava/lang/StringBuilder;
    .end local v2    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "rsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_83
    move-exception v1

    .line 1487
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v7, "NetworkManagement"

    const-string/jumbo v8, "route cmd failed - cannot determine INET family from null gw"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 1496
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Ljava/lang/StringBuilder;
    .restart local v2    # "gatewayAddr":Ljava/net/InetAddress;
    :cond_8d
    const-string v7, " v6 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1503
    :catch_93
    move-exception v1

    .line 1504
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "NetworkManagement"

    const-string/jumbo v8, "route cmd failed: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 1512
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v5    # "rsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9e
    const/4 v6, 0x1

    goto/16 :goto_18
.end method

.method public replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "ip"    # [B
    .param p3, "gateway"    # [B
    .param p4, "routeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3495
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagement"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 3500
    const-string v6, "NetworkManagement"

    const-string/jumbo v7, "route cmd failed - iface is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :goto_19
    return v5

    .line 3505
    :cond_1a
    :try_start_1a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1d} :catch_92

    move-result-object v3

    .line 3511
    .local v3, "ipAddr":Ljava/net/InetAddress;
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "route"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "replace"

    aput-object v9, v8, v5

    const-string/jumbo v9, "src"

    aput-object v9, v8, v6

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3513
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_9d

    .line 3514
    const-string/jumbo v7, "v4"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3518
    :goto_3d
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3519
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3520
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3523
    :try_start_4e
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 3525
    .local v2, "gatewayAddr":Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_5a

    instance-of v7, v2, Ljava/net/Inet4Address;

    if-nez v7, :cond_62

    :cond_5a
    instance-of v7, v3, Ljava/net/Inet6Address;

    if-eqz v7, :cond_69

    instance-of v7, v2, Ljava/net/Inet6Address;

    if-eqz v7, :cond_69

    .line 3528
    :cond_62
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_69
    .catch Ljava/net/UnknownHostException; {:try_start_4e .. :try_end_69} :catch_a4

    .line 3535
    .end local v2    # "gatewayAddr":Ljava/net/InetAddress;
    :cond_69
    :goto_69
    :try_start_69
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_6e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_69 .. :try_end_6e} :catch_ae

    move-result-object v4

    .line 3540
    .local v4, "rsp":Lcom/android/server/NativeDaemonEvent;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_90

    .line 3541
    const-string v5, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "replace src route response is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    move v5, v6

    .line 3543
    goto :goto_19

    .line 3506
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "ipAddr":Ljava/net/InetAddress;
    .end local v4    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :catch_92
    move-exception v1

    .line 3507
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v6, "NetworkManagement"

    const-string/jumbo v7, "route cmd failed because of unknown src ip"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 3516
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "ipAddr":Ljava/net/InetAddress;
    :cond_9d
    const-string/jumbo v7, "v6"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3d

    .line 3530
    :catch_a4
    move-exception v1

    .line 3531
    .restart local v1    # "e":Ljava/net/UnknownHostException;
    const-string v7, "NetworkManagement"

    const-string/jumbo v8, "route cmd did not obtain valid gw; adding route without gw"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 3536
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_ae
    move-exception v1

    .line 3537
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "NetworkManagement"

    const-string/jumbo v7, "route cmd failed: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 19
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 2196
    move-object/from16 v0, p0

    iget-object v10, v0, mContext:Landroid/content/Context;

    const-string v11, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v12, "NetworkManagement"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    if-nez p1, :cond_24

    .line 2199
    :try_start_d
    move-object/from16 v0, p0

    iget-object v10, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v11, "softap"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "set"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2262
    :goto_23
    return-void

    .line 2202
    :cond_24
    const-string v10, "VZW"

    sget-object v11, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1be

    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v10, :cond_3c

    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v11, 0x80

    if-ne v10, v11, :cond_1be

    .line 2204
    :cond_3c
    move-object/from16 v0, p0

    iget-object v10, v0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2205
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1b7

    .line 2206
    const/16 v10, 0xa

    move-object/from16 v0, p1

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2220
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_57
    :goto_57
    const-string v10, "NetworkManagement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "maxClient = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const-string v10, "NetworkManagement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wifiConfig.vendorIE = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-nez v10, :cond_1fc

    .line 2224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DD05001632"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x80

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2230
    .local v9, "vendorIE":Ljava/lang/String;
    :goto_b6
    const-string v10, "NetworkManagement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "vendorIE = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    sget-boolean v10, SUPPORTMOBILEAPWPSPBC:Z

    if-nez v10, :cond_d7

    sget-boolean v10, SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v10, :cond_231

    :cond_d7
    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_231

    const/4 v10, 0x1

    :goto_df
    move-object/from16 v0, p1

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 2232
    sget-boolean v10, SUPPORTMOBILEAPWPSPBC:Z

    if-nez v10, :cond_eb

    sget-boolean v10, SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v10, :cond_237

    .line 2233
    :cond_eb
    const-string/jumbo v3, "samsung"

    .line 2234
    .local v3, "manufacturer":Ljava/lang/String;
    const-string v4, "XXXXXX"

    .line 2235
    .local v4, "model_name":Ljava/lang/String;
    const-string v5, "XXXXXX"

    .line 2236
    .local v5, "model_number":Ljava/lang/String;
    const-string v7, "12343df"

    .line 2237
    .local v7, "serial_number":Ljava/lang/String;
    const-string v1, "XXXXXX"

    .line 2238
    .local v1, "device_name":Ljava/lang/String;
    const-string/jumbo v10, "ro.product.manufacturer"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2239
    const-string/jumbo v10, "ro.product.name"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2240
    const-string/jumbo v10, "ro.product.model"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2241
    const-string/jumbo v10, "ro.serialno"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2243
    move-object/from16 v0, p0

    iget-object v11, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v12, "softap"

    const/16 v10, 0x12

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v14, "set"

    aput-object v14, v13, v10

    const/4 v10, 0x1

    aput-object p2, v13, v10

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v14, v13, v10

    const/4 v10, 0x3

    invoke-static/range {p1 .. p1}, getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x4

    new-instance v14, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v14, v15}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v14, v13, v10

    const/4 v10, 0x5

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x6

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v14, 0x7

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_234

    const/4 v10, 0x1

    :goto_15e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v14

    const/16 v10, 0x8

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0x9

    aput-object v9, v13, v10

    const/16 v10, 0xa

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0xb

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0xc

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0xd

    aput-object v3, v13, v10

    const/16 v10, 0xe

    aput-object v4, v13, v10

    const/16 v10, 0xf

    aput-object v5, v13, v10

    const/16 v10, 0x10

    aput-object v7, v13, v10

    const/16 v10, 0x11

    aput-object v1, v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1af
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_1af} :catch_1b1

    goto/16 :goto_23

    .line 2259
    .end local v1    # "device_name":Ljava/lang/String;
    .end local v3    # "manufacturer":Ljava/lang/String;
    .end local v4    # "model_name":Ljava/lang/String;
    .end local v5    # "model_number":Ljava/lang/String;
    .end local v7    # "serial_number":Ljava/lang/String;
    .end local v9    # "vendorIE":Ljava/lang/String;
    :catch_1b1
    move-exception v2

    .line 2260
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v10

    throw v10

    .line 2208
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1b7
    const/4 v10, 0x5

    :try_start_1b8
    move-object/from16 v0, p1

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_57

    .line 2209
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1be
    const-string v10, "SPRINT"

    sget-object v11, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v10, :cond_1d6

    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v11, 0x80

    if-ne v10, v11, :cond_1f2

    .line 2211
    :cond_1d6
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_1e0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b8 .. :try_end_1e0} :catch_1b1

    move-result-object v6

    .line 2213
    .local v6, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_1e1
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_57

    .line 2214
    const/4 v10, 0x1

    move-object/from16 v0, p1

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_1ed
    .catch Landroid/os/RemoteException; {:try_start_1e1 .. :try_end_1ed} :catch_1ef
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e1 .. :try_end_1ed} :catch_1b1

    goto/16 :goto_57

    .line 2215
    :catch_1ef
    move-exception v10

    goto/16 :goto_57

    .line 2218
    .end local v6    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1f2
    :try_start_1f2
    move-object/from16 v0, p0

    iget v10, v0, mCscMaxClient:I

    move-object/from16 v0, p1

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_57

    .line 2225
    :cond_1fc
    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-lez v10, :cond_22d

    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v11, 0xff

    if-ge v10, v11, :cond_22d

    .line 2226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DD05001632"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_b6

    .line 2228
    .end local v9    # "vendorIE":Ljava/lang/String;
    :cond_22d
    const-string v9, ""

    .restart local v9    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_b6

    .line 2231
    :cond_231
    const/4 v10, 0x0

    goto/16 :goto_df

    .line 2243
    .restart local v1    # "device_name":Ljava/lang/String;
    .restart local v3    # "manufacturer":Ljava/lang/String;
    .restart local v4    # "model_name":Ljava/lang/String;
    .restart local v5    # "model_number":Ljava/lang/String;
    .restart local v7    # "serial_number":Ljava/lang/String;
    :cond_234
    const/4 v10, 0x0

    goto/16 :goto_15e

    .line 2248
    .end local v1    # "device_name":Ljava/lang/String;
    .end local v3    # "manufacturer":Ljava/lang/String;
    .end local v4    # "model_name":Ljava/lang/String;
    .end local v5    # "model_number":Ljava/lang/String;
    .end local v7    # "serial_number":Ljava/lang/String;
    :cond_237
    move-object/from16 v0, p0

    iget-object v11, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v12, "softap"

    const/16 v10, 0xd

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v14, "set"

    aput-object v14, v13, v10

    const/4 v10, 0x1

    aput-object p2, v13, v10

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v14, v13, v10

    const/4 v10, 0x3

    invoke-static/range {p1 .. p1}, getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x4

    new-instance v14, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v14, v15}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v14, v13, v10

    const/4 v10, 0x5

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x6

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v14, 0x7

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_2c2

    const/4 v10, 0x1

    :goto_283
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v14

    const/16 v10, 0x8

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0x9

    aput-object v9, v13, v10

    const/16 v10, 0xa

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0xb

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0xc

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f2 .. :try_end_2c0} :catch_1b1

    goto/16 :goto_23

    :cond_2c2
    const/4 v10, 0x0

    goto :goto_283
.end method

.method public setAccessPointDisassocSta(Ljava/lang/String;)I
    .registers 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1964
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :try_start_13
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "disassoc_sta"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_27
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_27} :catch_28

    .line 1975
    return v6

    .line 1971
    :catch_28
    move-exception v0

    .line 1972
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultInterfaceForDns(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2604
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setdefaultif"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 2610
    return-void

    .line 2607
    :catch_1e
    move-exception v0

    .line 2608
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultNetId(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 3363
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "default"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_27
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_27} :catch_28

    .line 3370
    return-void

    .line 3367
    :catch_28
    move-exception v0

    .line 3368
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "add"    # Z
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "outInterface"    # Ljava/lang/String;
    .param p4, "mark"    # I

    .prologue
    .line 4110
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setDestinationBasedMarkRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    invoke-static {}, enforceSystemUid()V

    .line 4113
    :try_start_b
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "mptcp"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "dmark"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz p1, :cond_31

    const-string v1, "add"

    :goto_1e
    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p2, v4, v1

    const/4 v1, 0x3

    aput-object p3, v4, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4117
    return-void

    .line 4113
    :cond_31
    const-string/jumbo v1, "delete"
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_1e

    .line 4114
    :catch_35
    move-exception v0

    .line 4115
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1626
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v10, "NetworkManagement"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    if-eqz p1, :cond_40

    iget v5, p1, Landroid/net/Network;->netId:I

    .line 1629
    .local v5, "netId":I
    :goto_e
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v8, "tether"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "dns"

    aput-object v10, v9, v7

    const/4 v7, 0x1

    const-string/jumbo v10, "set"

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-direct {v1, v8, v9}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1631
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2e
    if-ge v3, v4, :cond_42

    aget-object v6, v0, v3

    .line 1632
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1631
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "netId":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_40
    move v5, v7

    .line 1628
    goto :goto_e

    .line 1636
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "netId":I
    :cond_42
    :try_start_42
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_47} :catch_48

    .line 1640
    return-void

    .line 1637
    :catch_48
    move-exception v2

    .line 1638
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 2614
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagement"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "resolver"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "setifdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    if-nez p3, :cond_1f

    const-string p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_1f
    aput-object p3, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2619
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_27
    if-ge v4, v5, :cond_3f

    aget-object v6, v1, v4

    .line 2620
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2621
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 2622
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2619
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2627
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v6    # "s":Ljava/lang/String;
    :cond_3f
    :try_start_3f
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_44} :catch_45

    .line 2631
    return-void

    .line 2628
    :catch_45
    move-exception v3

    .line 2629
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 2635
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagement"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    array-length v7, p2

    if-lez v7, :cond_46

    .line 2639
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "resolver"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "setnetdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    if-nez p3, :cond_26

    const-string p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_26
    aput-object p3, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2641
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2e
    if-ge v4, v5, :cond_5d

    aget-object v6, v1, v4

    .line 2642
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2643
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_43

    .line 2644
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2641
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 2648
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local p3    # "domains":Ljava/lang/String;
    :cond_46
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "resolver"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "clearnetdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2652
    .end local p3    # "domains":Ljava/lang/String;
    .restart local v2    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_5d
    :try_start_5d
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_62
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5d .. :try_end_62} :catch_63

    .line 2656
    return-void

    .line 2653
    :catch_63
    move-exception v3

    .line 2654
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .prologue
    .line 1776
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    if-eqz p2, :cond_49

    const-string/jumbo v1, "true"

    .line 1779
    .local v1, "mode":Ljava/lang/String;
    :goto_e
    :try_start_e
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgInterfaceDropRule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "epdg"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_iface_drop_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_48} :catch_4d

    .line 1784
    return-void

    .line 1777
    .end local v1    # "mode":Ljava/lang/String;
    :cond_49
    const-string/jumbo v1, "false"

    goto :goto_e

    .line 1781
    .restart local v1    # "mode":Ljava/lang/String;
    :catch_4d
    move-exception v0

    .line 1782
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallChainEnabled(IZ)V
    .registers 11
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2829
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, enforceSystemUid(Landroid/content/Context;)V

    .line 2830
    iget-object v4, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2831
    :try_start_8
    iget-object v3, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-ne v3, p2, :cond_13

    .line 2834
    monitor-exit v4

    .line 2856
    :goto_12
    return-void

    .line 2836
    :cond_13
    iget-object v3, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2838
    if-eqz p2, :cond_42

    const-string/jumbo v2, "enable_chain"
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_3f

    .line 2841
    .local v2, "operation":Ljava/lang/String;
    :goto_1d
    packed-switch p1, :pswitch_data_60

    .line 2849
    :try_start_20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad child chain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_39} :catch_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_3f

    .line 2852
    :catch_39
    move-exception v1

    .line 2853
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3a
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 2855
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "operation":Ljava/lang/String;
    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw v3

    .line 2838
    :cond_42
    :try_start_42
    const-string/jumbo v2, "disable_chain"
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    goto :goto_1d

    .line 2843
    .restart local v2    # "operation":Ljava/lang/String;
    :pswitch_46
    :try_start_46
    const-string/jumbo v0, "standby"

    .line 2851
    .local v0, "chainName":Ljava/lang/String;
    :goto_49
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "firewall"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_46 .. :try_end_5a} :catch_39
    .catchall {:try_start_46 .. :try_end_5a} :catchall_3f

    .line 2855
    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_3f

    goto :goto_12

    .line 2846
    .end local v0    # "chainName":Ljava/lang/String;
    :pswitch_5c
    :try_start_5c
    const-string/jumbo v0, "dozable"
    :try_end_5f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5c .. :try_end_5f} :catch_39
    .catchall {:try_start_5c .. :try_end_5f} :catchall_3f

    .line 2847
    .restart local v0    # "chainName":Ljava/lang/String;
    goto :goto_49

    .line 2841
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_46
    .end packed-switch
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 2817
    invoke-static {}, enforceSystemUid()V

    .line 2818
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2819
    if-eqz p3, :cond_2b

    const-string v1, "allow"

    .line 2821
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_egress_dest_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_2a} :catch_2f

    .line 2825
    return-void

    .line 2819
    .end local v1    # "rule":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v1, "deny"

    goto :goto_c

    .line 2822
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_2f
    move-exception v0

    .line 2823
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2805
    invoke-static {}, enforceSystemUid()V

    .line 2806
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2807
    if-eqz p2, :cond_24

    const-string v1, "allow"

    .line 2809
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_egress_source_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_23} :catch_28

    .line 2813
    return-void

    .line 2807
    .end local v1    # "rule":Ljava/lang/String;
    :cond_24
    const-string/jumbo v1, "deny"

    goto :goto_c

    .line 2810
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 2811
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEnabled(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 2776
    invoke-static {}, enforceSystemUid()V

    .line 2778
    :try_start_3
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "enable"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz p1, :cond_1f

    const-string/jumbo v1, "whitelist"

    :goto_17
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2779
    iput-boolean p1, p0, mFirewallEnabled:Z

    .line 2783
    return-void

    .line 2778
    :cond_1f
    const-string v1, "blacklist"
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_21} :catch_22

    goto :goto_17

    .line 2780
    :catch_22
    move-exception v0

    .line 2781
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2793
    invoke-static {}, enforceSystemUid()V

    .line 2794
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2795
    if-eqz p2, :cond_24

    const-string v1, "allow"

    .line 2797
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_interface_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_23} :catch_28

    .line 2801
    return-void

    .line 2795
    .end local v1    # "rule":Ljava/lang/String;
    :cond_24
    const-string/jumbo v1, "deny"

    goto :goto_c

    .line 2798
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 2799
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallRuleMobileData(IZ)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    const/4 v10, 0x1

    .line 3038
    const/4 v2, 0x0

    .line 3039
    .local v2, "forceRun":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ChinaNalSecurity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v10, :cond_52

    .line 3042
    :try_start_14
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 3044
    .local v6, "pkgNames":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_25
    if-ge v3, v4, :cond_52

    aget-object v5, v0, v3

    .line 3045
    .local v5, "pkgName":Ljava/lang/String;
    const-string/jumbo v8, "packageinstaller"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 3047
    const-string v8, "NetworkManagement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is packaginstaller. pkgname = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4a} :catch_4e

    .line 3048
    const/4 v2, 0x1

    .line 3044
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 3051
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgNames":[Ljava/lang/String;
    :catch_4e
    move-exception v1

    .line 3052
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3056
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_52
    if-nez v2, :cond_57

    invoke-static {}, enforceSystemUid()V

    .line 3057
    :cond_57
    if-eqz p2, :cond_77

    const-string v7, "allow"

    .line 3059
    .local v7, "rule":Ljava/lang/String;
    :goto_5b
    :try_start_5b
    iget-object v8, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "firewall"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "set_uid_mobile_data_rule"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_76
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5b .. :try_end_76} :catch_7b

    .line 3063
    return-void

    .line 3057
    .end local v7    # "rule":Ljava/lang/String;
    :cond_77
    const-string/jumbo v7, "deny"

    goto :goto_5b

    .line 3060
    .restart local v7    # "rule":Ljava/lang/String;
    :catch_7b
    move-exception v1

    .line 3061
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8
.end method

.method public setFirewallRuleWifi(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 3067
    invoke-static {}, enforceSystemUid()V

    .line 3068
    if-eqz p2, :cond_23

    const-string v1, "allow"

    .line 3070
    .local v1, "rule":Ljava/lang/String;
    :goto_7
    :try_start_7
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_uid_wifi_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_22} :catch_27

    .line 3074
    return-void

    .line 3068
    .end local v1    # "rule":Ljava/lang/String;
    :cond_23
    const-string/jumbo v1, "deny"

    goto :goto_7

    .line 3071
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 3072
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRule(III)V
    .registers 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 2900
    invoke-static {}, enforceSystemUid()V

    .line 2901
    invoke-direct {p0, p1, p2, p3}, setFirewallUidRuleInternal(III)V

    .line 2902
    return-void
.end method

.method public setFirewallUidRuleMobileData(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 3015
    invoke-static {}, enforceSystemUid()V

    .line 3016
    if-eqz p2, :cond_23

    const-string v1, "allow"

    .line 3018
    .local v1, "rule":Ljava/lang/String;
    :goto_7
    :try_start_7
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_uid_mobile_data_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_22} :catch_27

    .line 3022
    return-void

    .line 3016
    .end local v1    # "rule":Ljava/lang/String;
    :cond_23
    const-string/jumbo v1, "deny"

    goto :goto_7

    .line 3019
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 3020
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRuleWifi(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 3026
    invoke-static {}, enforceSystemUid()V

    .line 3027
    if-eqz p2, :cond_23

    const-string v1, "allow"

    .line 3029
    .local v1, "rule":Ljava/lang/String;
    :goto_7
    :try_start_7
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_uid_wifi_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_22} :catch_27

    .line 3033
    return-void

    .line 3027
    .end local v1    # "rule":Ljava/lang/String;
    :cond_23
    const-string/jumbo v1, "deny"

    goto :goto_7

    .line 3030
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 3031
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRules(I[I[I)V
    .registers 12
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    .prologue
    .line 2871
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, enforceSystemUid(Landroid/content/Context;)V

    .line 2872
    iget-object v7, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2873
    :try_start_8
    invoke-direct {p0, p1}, getUidFirewallRules(I)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 2874
    .local v5, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 2876
    .local v1, "newRules":Landroid/util/SparseIntArray;
    array-length v6, p2

    add-int/lit8 v0, v6, -0x1

    .local v0, "index":I
    :goto_14
    if-ltz v0, :cond_23

    .line 2877
    aget v4, p2, v0

    .line 2878
    .local v4, "uid":I
    aget v2, p3, v0

    .line 2879
    .local v2, "rule":I
    invoke-virtual {p0, p1, v4, v2}, setFirewallUidRule(III)V

    .line 2880
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2876
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 2883
    .end local v2    # "rule":I
    .end local v4    # "uid":I
    :cond_23
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 2884
    .local v3, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_2e
    if-ltz v0, :cond_41

    .line 2885
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2886
    .restart local v4    # "uid":I
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3e

    .line 2887
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2884
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 2891
    .end local v4    # "uid":I
    :cond_41
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_47
    if-ltz v0, :cond_54

    .line 2892
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2893
    .restart local v4    # "uid":I
    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v6}, setFirewallUidRuleInternal(III)V

    .line 2891
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 2895
    .end local v4    # "uid":I
    :cond_54
    monitor-exit v7

    .line 2896
    return-void

    .line 2895
    .end local v0    # "index":I
    .end local v1    # "newRules":Landroid/util/SparseIntArray;
    .end local v3    # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v5    # "uidFirewallRules":Landroid/util/SparseIntArray;
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_56

    throw v6
.end method

.method public setGlobalAlert(J)V
    .registers 10
    .param p1, "alertBytes"    # J

    .prologue
    .line 2462
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2473
    :goto_d
    return-void

    .line 2469
    :cond_e
    :try_start_e
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setglobalalert"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_25} :catch_26

    goto :goto_d

    .line 2470
    :catch_26
    move-exception v0

    .line 2471
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .prologue
    .line 2410
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2434
    :goto_d
    return-void

    .line 2417
    :cond_e
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2418
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setting alert requires existing quota on iface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2421
    :cond_1f
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2422
    :try_start_22
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2423
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2433
    :catchall_4a
    move-exception v1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_4a

    throw v1

    .line 2428
    :cond_4d
    :try_start_4d
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2429
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4d .. :try_end_70} :catch_72
    .catchall {:try_start_4d .. :try_end_70} :catchall_4a

    .line 2433
    :try_start_70
    monitor-exit v2

    goto :goto_d

    .line 2430
    :catch_72
    move-exception v0

    .line 2431
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_4a
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .prologue
    .line 1222
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    .line 1224
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 1225
    :cond_15
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Null LinkAddress given"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1228
    :cond_1d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "interface"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "setcfg"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1232
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_4f

    .line 1236
    .end local v2    # "flag":Ljava/lang/String;
    :cond_5f
    :try_start_5f
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5f .. :try_end_64} :catch_65

    .line 1240
    return-void

    .line 1237
    :catch_65
    move-exception v1

    .line 1238
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1244
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0, p1}, getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1246
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 1247
    invoke-virtual {p0, p1, v0}, setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1248
    return-void
.end method

.method public setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1303
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "interface"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "ipv6ndoffload"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_26

    const-string/jumbo v1, "enable"

    :goto_20
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1310
    return-void

    .line 1305
    :cond_26
    const-string/jumbo v1, "disable"
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_20

    .line 1307
    :catch_2a
    move-exception v0

    .line 1308
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1260
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "interface"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "ipv6privacyextensions"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_26

    const-string/jumbo v1, "enable"

    :goto_20
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1267
    return-void

    .line 1262
    :cond_26
    const-string/jumbo v1, "disable"
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_20

    .line 1264
    :catch_2a
    move-exception v0

    .line 1265
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 2361
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2380
    :goto_d
    return-void

    .line 2367
    :cond_e
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2368
    :try_start_11
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2369
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has quota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2379
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_39

    throw v1

    .line 2374
    :cond_3c
    :try_start_3c
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2375
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3c .. :try_end_5f} :catch_61
    .catchall {:try_start_3c .. :try_end_5f} :catchall_39

    .line 2379
    :try_start_5f
    monitor-exit v2

    goto :goto_d

    .line 2376
    :catch_61
    move-exception v0

    .line 2377
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_39
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1252
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0, p1}, getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1254
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1255
    invoke-virtual {p0, p1, v0}, setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1256
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 1534
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "ipfwd"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_23

    const-string/jumbo v1, "enable"

    :goto_17
    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string/jumbo v5, "tethering"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1540
    return-void

    .line 1536
    :cond_23
    const-string/jumbo v1, "disable"
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_26} :catch_27

    goto :goto_17

    .line 1537
    :catch_27
    move-exception v0

    .line 1538
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMaxClient(I)I
    .registers 9
    .param p1, "num"    # I

    .prologue
    const/4 v6, 0x0

    .line 1992
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    :try_start_13
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "set_maxclient"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 2003
    return v6

    .line 1999
    :catch_2c
    move-exception v0

    .line 2000
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .prologue
    .line 1457
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setmtu"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_26

    move-result-object v1

    .line 1465
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 1462
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_26
    move-exception v0

    .line 1463
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setNetworkGuardProtocolAcceptRule(I)V
    .registers 8
    .param p1, "protocol"    # I

    .prologue
    .line 3834
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "networkguard"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "set_protocol_accept_rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 3841
    return-void

    .line 3838
    :catch_22
    move-exception v0

    .line 3839
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkGuardUidRangeAcceptRule(II)V
    .registers 9
    .param p1, "uidStart"    # I
    .param p2, "uidEnd"    # I

    .prologue
    .line 3810
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "networkguard"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "set_uid_range_accept_rule"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_28} :catch_29

    .line 3817
    return-void

    .line 3814
    :catch_29
    move-exception v0

    .line 3815
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkGuardUidRule(IZZ)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "mode"    # Z
    .param p3, "isDrop"    # Z

    .prologue
    .line 3821
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    if-eqz p2, :cond_32

    const-string/jumbo v0, "true"

    .line 3823
    .local v0, "add":Ljava/lang/String;
    :goto_e
    if-eqz p3, :cond_36

    const-string/jumbo v1, "true"

    .line 3826
    .local v1, "drop":Ljava/lang/String;
    :goto_13
    :try_start_13
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "networkguard"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "set_uid_rule"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_31} :catch_3a

    .line 3830
    return-void

    .line 3822
    .end local v0    # "add":Ljava/lang/String;
    .end local v1    # "drop":Ljava/lang/String;
    :cond_32
    const-string/jumbo v0, "false"

    goto :goto_e

    .line 3823
    .restart local v0    # "add":Ljava/lang/String;
    :cond_36
    const-string/jumbo v1, "false"

    goto :goto_13

    .line 3827
    .restart local v1    # "drop":Ljava/lang/String;
    :catch_3a
    move-exception v2

    .line 3828
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public setNetworkPermission(ILjava/lang/String;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 3385
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    if-eqz p2, :cond_33

    .line 3389
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "permission"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "network"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3396
    :goto_32
    return-void

    .line 3391
    :cond_33
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "permission"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "network"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "clear"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_56
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_56} :catch_57

    goto :goto_32

    .line 3393
    :catch_57
    move-exception v0

    .line 3394
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uids"    # [I

    .prologue
    .line 3401
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    const/16 v5, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    .line 3404
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "permission"

    aput-object v6, v2, v5

    .line 3405
    const/4 v5, 0x1

    const-string/jumbo v6, "user"

    aput-object v6, v2, v5

    .line 3406
    const/4 v5, 0x2

    const-string/jumbo v6, "set"

    aput-object v6, v2, v5

    .line 3407
    const/4 v5, 0x3

    aput-object p1, v2, v5

    .line 3408
    const/4 v0, 0x4

    .line 3410
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, p2

    if-ge v4, v5, :cond_4f

    .line 3411
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 3412
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_39

    array-length v5, v2

    if-ne v1, v5, :cond_50

    .line 3414
    :cond_39
    :try_start_39
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_45} :catch_49

    .line 3418
    const/4 v0, 0x4

    .line 3410
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 3415
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_49
    move-exception v3

    .line 3416
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 3421
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4f
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_50
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_46
.end method

.method public setPrivateIpRoute(ZLjava/lang/String;I)V
    .registers 10
    .param p1, "add"    # Z
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "mark"    # I

    .prologue
    .line 4101
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setPrivateIpRoute"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    invoke-static {}, enforceSystemUid()V

    .line 4104
    :try_start_b
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "mptcp"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "privateip"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz p1, :cond_2e

    const-string v1, "add"

    :goto_1e
    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p2, v4, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4108
    return-void

    .line 4104
    :cond_2e
    const-string/jumbo v1, "delete"
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_31} :catch_32

    goto :goto_1e

    .line 4105
    :catch_32
    move-exception v0

    .line 4106
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setRoamingReductionRules(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 4159
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 4173
    :goto_d
    return-void

    .line 4165
    :cond_e
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setRoamingReductionRules"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :try_start_16
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "romaingreduction"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz p1, :cond_35

    const-string/jumbo v1, "enable"

    :goto_29
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16 .. :try_end_2e} :catch_2f

    goto :goto_d

    .line 4170
    :catch_2f
    move-exception v0

    .line 4171
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 4168
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_35
    :try_start_35
    const-string/jumbo v1, "disable"
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_38} :catch_2f

    goto :goto_29
.end method

.method public setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "rmem"    # Ljava/lang/String;
    .param p2, "wmem"    # Ljava/lang/String;

    .prologue
    .line 4021
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setTcpBufferSize"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    invoke-static {}, enforceSystemUid()V

    .line 4024
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mptcp"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "tcp"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_29

    .line 4028
    return-void

    .line 4025
    :catch_29
    move-exception v0

    .line 4026
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setTxPower(I)I
    .registers 9
    .param p1, "txPower"    # I

    .prologue
    const/4 v2, 0x0

    .line 2007
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :try_start_13
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "softap"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v6, "set_tx_power"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    if-nez p1, :cond_2f

    const/4 v1, 0x4

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_2e} :catch_31

    .line 2018
    return v2

    :cond_2f
    move v1, v2

    .line 2013
    goto :goto_25

    .line 2015
    :catch_31
    move-exception v0

    .line 2016
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v3, p1, :cond_f

    .line 2507
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    :cond_f
    iget-object v4, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2511
    :try_start_12
    iget-object v3, p0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2512
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1d

    .line 2513
    monitor-exit v4

    .line 2545
    :goto_1c
    return-void

    .line 2516
    :cond_1d
    iget-boolean v3, p0, mStrictEnabled:Z

    if-nez v3, :cond_2b

    .line 2519
    iget-object v3, p0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2520
    monitor-exit v4

    goto :goto_1c

    .line 2544
    .end local v1    # "oldPolicy":I
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v3

    .line 2524
    .restart local v1    # "oldPolicy":I
    :cond_2b
    packed-switch p2, :pswitch_data_7a

    .line 2535
    :try_start_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2526
    :pswitch_47
    const-string v2, "accept"
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_28

    .line 2539
    .local v2, "policyString":Ljava/lang/String;
    :goto_49
    :try_start_49
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "strict"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "set_uid_cleartext_policy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2540
    iget-object v3, p0, mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_69
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_49 .. :try_end_69} :catch_73
    .catchall {:try_start_49 .. :try_end_69} :catchall_28

    .line 2544
    :try_start_69
    monitor-exit v4

    goto :goto_1c

    .line 2529
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_6b
    const-string/jumbo v2, "log"

    .line 2530
    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_49

    .line 2532
    .end local v2    # "policyString":Ljava/lang/String;
    :pswitch_6f
    const-string/jumbo v2, "reject"

    .line 2533
    .restart local v2    # "policyString":Ljava/lang/String;
    goto :goto_49

    .line 2541
    :catch_73
    move-exception v0

    .line 2542
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_28

    .line 2524
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_6b
        :pswitch_6f
    .end packed-switch
.end method

.method public setUidNetworkRules(IZ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 2477
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    iget-boolean v2, p0, mBandwidthControlEnabled:Z

    if-nez v2, :cond_e

    .line 2502
    :goto_d
    return-void

    .line 2483
    :cond_e
    iget-object v3, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2484
    :try_start_11
    iget-object v2, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2485
    .local v1, "oldRejectOnQuota":Z
    if-ne v1, p2, :cond_1f

    .line 2487
    monitor-exit v3

    goto :goto_d

    .line 2501
    .end local v1    # "oldRejectOnQuota":Z
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v2

    .line 2491
    .restart local v1    # "oldRejectOnQuota":Z
    :cond_1f
    :try_start_1f
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "bandwidth"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p2, :cond_41

    const-string v2, "addnaughtyapps"

    :goto_2b
    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2493
    if-eqz p2, :cond_45

    .line 2494
    iget-object v2, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f .. :try_end_3f} :catch_4b
    .catchall {:try_start_1f .. :try_end_3f} :catchall_1c

    .line 2501
    :goto_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_1c

    goto :goto_d

    .line 2491
    :cond_41
    :try_start_41
    const-string/jumbo v2, "removenaughtyapps"

    goto :goto_2b

    .line 2496
    :cond_45
    iget-object v2, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_4a} :catch_4b
    .catchall {:try_start_41 .. :try_end_4a} :catchall_1c

    goto :goto_3f

    .line 2498
    :catch_4b
    move-exception v0

    .line 2499
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_4c
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_1c
.end method

.method public setWhiteListUidNetworkRules(IZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "allowed"    # Z

    .prologue
    .line 4123
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4127
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 4137
    :goto_d
    return-void

    .line 4129
    :cond_e
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setWhiteListUidNetworkRules"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    :try_start_16
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "romaingreduction"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_41

    const-string v1, "add"

    :goto_2e
    aput-object v1, v4, v5

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_d

    .line 4134
    :catch_3b
    move-exception v0

    .line 4135
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 4132
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_41
    :try_start_41
    const-string/jumbo v1, "delete"
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_44} :catch_3b

    goto :goto_2e
.end method

.method public setWhiteListUrlNetworkRules(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "protocol"    # I
    .param p4, "allowed"    # Z

    .prologue
    .line 4141
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 4155
    :goto_d
    return-void

    .line 4147
    :cond_e
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "setWhiteListUrlNetworkRules"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    :try_start_16
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "romaingreduction"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "url"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    if-eqz p4, :cond_47

    const-string v1, "add"

    :goto_2e
    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object p1, v4, v1

    const/4 v1, 0x4

    aput-object p2, v4, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16 .. :try_end_40} :catch_41

    goto :goto_d

    .line 4152
    :catch_41
    move-exception v0

    .line 4153
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 4150
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_47
    :try_start_47
    const-string/jumbo v1, "delete"
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_47 .. :try_end_4a} :catch_41

    goto :goto_2e
.end method

.method public setv6DnsForwarders([Ljava/lang/String;)V
    .registers 12
    .param p1, "dns"    # [Ljava/lang/String;

    .prologue
    .line 1645
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagement"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "tether"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "dns6"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "set"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_23
    if-ge v3, v4, :cond_35

    aget-object v5, v0, v3

    .line 1649
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1648
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1653
    .end local v5    # "s":Ljava/lang/String;
    :cond_35
    :try_start_35
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 1657
    return-void

    .line 1654
    :catch_3b
    move-exception v2

    .line 1655
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 1470
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-string v0, "NetworkManagement"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 23
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 2026
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string v15, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v16, "NetworkManagement"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    if-nez p1, :cond_44

    .line 2032
    :try_start_d
    move-object/from16 v0, p0

    iget-object v14, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v15, "softap"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "set"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object p2, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2153
    :goto_2a
    move-object/from16 v0, p0

    iget-object v14, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v15, "softap"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "startap"

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2157
    return-void

    .line 2035
    :cond_44
    sget-boolean v14, SUPPORTMOBILEAP5G:Z

    if-nez v14, :cond_55

    .line 2036
    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v15, 0xe

    if-le v14, v15, :cond_55

    .line 2037
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 2040
    :cond_55
    const-string v14, "VZW"

    sget-object v15, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_206

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v14, :cond_6d

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v15, 0x80

    if-ne v14, v15, :cond_206

    .line 2042
    :cond_6d
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string/jumbo v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 2043
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v14

    const/16 v15, 0xd

    if-ne v14, v15, :cond_1ff

    .line 2044
    const/16 v14, 0xa

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2115
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_88
    :goto_88
    const-string v14, "NetworkManagement"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "maxClient = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v14, "NetworkManagement"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "wifiConfig.vendorIE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-nez v14, :cond_439

    .line 2119
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DD05001632"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x80

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2125
    .local v13, "vendorIE":Ljava/lang/String;
    :goto_eb
    const-string v14, "NetworkManagement"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "vendorIE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    sget-boolean v14, SUPPORTMOBILEAPWPSPBC:Z

    if-nez v14, :cond_10c

    sget-boolean v14, SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v14, :cond_46e

    :cond_10c
    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_46e

    const/4 v14, 0x1

    :goto_114
    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 2127
    sget-boolean v14, SUPPORTMOBILEAPWPSPBC:Z

    if-nez v14, :cond_120

    sget-boolean v14, SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v14, :cond_474

    .line 2128
    :cond_120
    const-string/jumbo v5, "samsung"

    .line 2129
    .local v5, "manufacturer":Ljava/lang/String;
    const-string v8, "XXXXXX"

    .line 2130
    .local v8, "model_name":Ljava/lang/String;
    const-string v9, "XXXXXX"

    .line 2131
    .local v9, "model_number":Ljava/lang/String;
    const-string v11, "12343df"

    .line 2132
    .local v11, "serial_number":Ljava/lang/String;
    const-string v2, "XXXXXX"

    .line 2133
    .local v2, "device_name":Ljava/lang/String;
    const-string/jumbo v14, "ro.product.manufacturer"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2134
    const-string/jumbo v14, "ro.product.name"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2135
    const-string/jumbo v14, "ro.product.model"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2136
    const-string/jumbo v14, "ro.serialno"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2138
    move-object/from16 v0, p0

    iget-object v15, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v16, "softap"

    const/16 v14, 0x12

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v14, 0x0

    const-string/jumbo v18, "set"

    aput-object v18, v17, v14

    const/4 v14, 0x1

    aput-object p2, v17, v14

    const/4 v14, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v14

    const/4 v14, 0x3

    invoke-static/range {p1 .. p1}, getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v14

    const/4 v14, 0x4

    new-instance v18, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v18, v17, v14

    const/4 v14, 0x5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/4 v14, 0x6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v18, 0x7

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v14, :cond_471

    const/4 v14, 0x1

    :goto_19e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v17, v18

    const/16 v14, 0x8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0x9

    aput-object v13, v17, v14

    const/16 v14, 0xa

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0xb

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0xc

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0xd

    aput-object v5, v17, v14

    const/16 v14, 0xe

    aput-object v8, v17, v14

    const/16 v14, 0xf

    aput-object v9, v17, v14

    const/16 v14, 0x10

    aput-object v11, v17, v14

    const/16 v14, 0x11

    aput-object v2, v17, v14

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_1f7} :catch_1f9

    goto/16 :goto_2a

    .line 2154
    .end local v2    # "device_name":Ljava/lang/String;
    .end local v5    # "manufacturer":Ljava/lang/String;
    .end local v8    # "model_name":Ljava/lang/String;
    .end local v9    # "model_number":Ljava/lang/String;
    .end local v11    # "serial_number":Ljava/lang/String;
    .end local v13    # "vendorIE":Ljava/lang/String;
    :catch_1f9
    move-exception v3

    .line 2155
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v14

    throw v14

    .line 2046
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1ff
    const/4 v14, 0x5

    :try_start_200
    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_88

    .line 2047
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_206
    const-string v14, "SPRINT"

    sget-object v15, CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23a

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v14, :cond_21e

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v15, 0x80

    if-ne v14, v15, :cond_23a

    .line 2049
    :cond_21e
    const-string/jumbo v14, "phone"

    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_228
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_200 .. :try_end_228} :catch_1f9

    move-result-object v10

    .line 2051
    .local v10, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_229
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_88

    .line 2052
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_235
    .catch Landroid/os/RemoteException; {:try_start_229 .. :try_end_235} :catch_237
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_229 .. :try_end_235} :catch_1f9

    goto/16 :goto_88

    .line 2053
    :catch_237
    move-exception v14

    goto/16 :goto_88

    .line 2056
    .end local v10    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_23a
    :try_start_23a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Wifi_MaxClient4MobileApNetExtension"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2057
    .local v6, "maxClientNum":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_88

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v14, :cond_25a

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v15, 0x80

    if-ne v14, v15, :cond_88

    .line 2059
    :cond_25a
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string/jumbo v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 2060
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2061
    .local v1, "currentNetworkType":I
    const-string v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2062
    .local v7, "maxClientNumSplit":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_272
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    if-ge v4, v14, :cond_88

    .line 2063
    const-string v14, "LTE"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_295

    const/16 v14, 0xd

    if-ne v1, v14, :cond_295

    .line 2064
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2065
    array-length v4, v7

    .line 2062
    :cond_292
    :goto_292
    add-int/lit8 v4, v4, 0x2

    goto :goto_272

    .line 2066
    :cond_295
    const-string v14, "HSPAP"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b1

    const/16 v14, 0xf

    if-ne v1, v14, :cond_2b1

    .line 2067
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2068
    array-length v4, v7

    goto :goto_292

    .line 2069
    :cond_2b1
    const-string v14, "HSPA"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2cd

    const/16 v14, 0xa

    if-ne v1, v14, :cond_2cd

    .line 2070
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2071
    array-length v4, v7

    goto :goto_292

    .line 2072
    :cond_2cd
    const-string v14, "HSDPA"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e9

    const/16 v14, 0x8

    if-ne v1, v14, :cond_2e9

    .line 2073
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2074
    array-length v4, v7

    goto :goto_292

    .line 2075
    :cond_2e9
    const-string v14, "HSUPA"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_305

    const/16 v14, 0x9

    if-ne v1, v14, :cond_305

    .line 2076
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2077
    array-length v4, v7

    goto :goto_292

    .line 2078
    :cond_305
    const-string v14, "EDGE"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_321

    const/4 v14, 0x2

    if-ne v1, v14, :cond_321

    .line 2079
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2080
    array-length v4, v7

    goto/16 :goto_292

    .line 2081
    :cond_321
    const-string v14, "GPRS"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33d

    const/4 v14, 0x1

    if-ne v1, v14, :cond_33d

    .line 2082
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2083
    array-length v4, v7

    goto/16 :goto_292

    .line 2084
    :cond_33d
    const-string v14, "UMTS"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_359

    const/4 v14, 0x3

    if-ne v1, v14, :cond_359

    .line 2085
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2086
    array-length v4, v7

    goto/16 :goto_292

    .line 2087
    :cond_359
    const-string v14, "1xRTT"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_375

    const/4 v14, 0x7

    if-ne v1, v14, :cond_375

    .line 2088
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2089
    array-length v4, v7

    goto/16 :goto_292

    .line 2090
    :cond_375
    const-string v14, "CDMA"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_391

    const/4 v14, 0x4

    if-ne v1, v14, :cond_391

    .line 2091
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2092
    array-length v4, v7

    goto/16 :goto_292

    .line 2093
    :cond_391
    const-string v14, "EVDO_0"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3ad

    const/4 v14, 0x5

    if-ne v1, v14, :cond_3ad

    .line 2094
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2095
    array-length v4, v7

    goto/16 :goto_292

    .line 2096
    :cond_3ad
    const-string v14, "EVDO_A"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c9

    const/4 v14, 0x6

    if-ne v1, v14, :cond_3c9

    .line 2097
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2098
    array-length v4, v7

    goto/16 :goto_292

    .line 2099
    :cond_3c9
    const-string v14, "EVDO_B"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e6

    const/16 v14, 0xc

    if-ne v1, v14, :cond_3e6

    .line 2100
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2101
    array-length v4, v7

    goto/16 :goto_292

    .line 2102
    :cond_3e6
    const-string v14, "EHRPD"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_403

    const/16 v14, 0xe

    if-ne v1, v14, :cond_403

    .line 2103
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2104
    array-length v4, v7

    goto/16 :goto_292

    .line 2105
    :cond_403
    const-string v14, "IDEN"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_420

    const/16 v14, 0xb

    if-ne v1, v14, :cond_420

    .line 2106
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2107
    array-length v4, v7

    goto/16 :goto_292

    .line 2108
    :cond_420
    const-string v14, "OTHERS"

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_292

    .line 2109
    add-int/lit8 v14, v4, 0x1

    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 2110
    array-length v4, v7

    goto/16 :goto_292

    .line 2120
    .end local v1    # "currentNetworkType":I
    .end local v4    # "i":I
    .end local v6    # "maxClientNum":Ljava/lang/String;
    .end local v7    # "maxClientNumSplit":[Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_439
    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-lez v14, :cond_46a

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v15, 0xff

    if-ge v14, v15, :cond_46a

    .line 2121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DD05001632"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_eb

    .line 2123
    .end local v13    # "vendorIE":Ljava/lang/String;
    :cond_46a
    const-string v13, ""

    .restart local v13    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_eb

    .line 2126
    :cond_46e
    const/4 v14, 0x0

    goto/16 :goto_114

    .line 2138
    .restart local v2    # "device_name":Ljava/lang/String;
    .restart local v5    # "manufacturer":Ljava/lang/String;
    .restart local v8    # "model_name":Ljava/lang/String;
    .restart local v9    # "model_number":Ljava/lang/String;
    .restart local v11    # "serial_number":Ljava/lang/String;
    :cond_471
    const/4 v14, 0x0

    goto/16 :goto_19e

    .line 2143
    .end local v2    # "device_name":Ljava/lang/String;
    .end local v5    # "manufacturer":Ljava/lang/String;
    .end local v8    # "model_name":Ljava/lang/String;
    .end local v9    # "model_number":Ljava/lang/String;
    .end local v11    # "serial_number":Ljava/lang/String;
    :cond_474
    move-object/from16 v0, p0

    iget-object v15, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v16, "softap"

    const/16 v14, 0xd

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v14, 0x0

    const-string/jumbo v18, "set"

    aput-object v18, v17, v14

    const/4 v14, 0x1

    aput-object p2, v17, v14

    const/4 v14, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v14

    const/4 v14, 0x3

    invoke-static/range {p1 .. p1}, getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v14

    const/4 v14, 0x4

    new-instance v18, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v18, v17, v14

    const/4 v14, 0x5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/4 v14, 0x6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v18, 0x7

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v14, :cond_512

    const/4 v14, 0x1

    :goto_4cb
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v17, v18

    const/16 v14, 0x8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0x9

    aput-object v13, v17, v14

    const/16 v14, 0xa

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0xb

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    const/16 v14, 0xc

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v14

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_510
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23a .. :try_end_510} :catch_1f9

    goto/16 :goto_2a

    :cond_512
    const/4 v14, 0x0

    goto :goto_4cb
.end method

.method public startClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3102
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 3109
    return-void

    .line 3106
    :catch_1d
    move-exception v0

    .line 3107
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .prologue
    .line 1704
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1706
    return-void
.end method

.method public startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "inport"    # I
    .param p3, "outport"    # I

    .prologue
    .line 2751
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNetworkStatsOnPorts iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    :try_start_36
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "videocallstats"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_5d} :catch_5e

    .line 2759
    return-void

    .line 2756
    :catch_5e
    move-exception v0

    .line 2757
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 12
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .prologue
    .line 1544
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagement"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "tether"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "start"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_27

    aget-object v2, v0, v4

    .line 1550
    .local v2, "d":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1549
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1554
    .end local v2    # "d":Ljava/lang/String;
    :cond_27
    :try_start_27
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 1558
    return-void

    .line 1555
    :catch_2d
    move-exception v3

    .line 1556
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .registers 8
    .param p1, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 2183
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stopap"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 2192
    return-void

    .line 2189
    :catch_1b
    move-exception v0

    .line 2190
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3113
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stop"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 3120
    return-void

    .line 3117
    :catch_1d
    move-exception v0

    .line 3118
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .prologue
    .line 1710
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1712
    return-void
.end method

.method public stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "inport"    # I
    .param p3, "outport"    # I

    .prologue
    .line 2763
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopNetworkStatsOnPorts iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    :try_start_36
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "videocallstats"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "stop"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_5d} :catch_5e

    .line 2771
    return-void

    .line 2768
    :catch_5e
    move-exception v0

    .line 2769
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopTethering()V
    .registers 7

    .prologue
    .line 1562
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 1568
    return-void

    .line 1565
    :catch_1b
    move-exception v0

    .line 1566
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 393
    invoke-direct {p0}, prepareNativeDaemon()V

    .line 394
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkManagement"

    const-string v1, "Prepared"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_e
    return-void
.end method

.method public tagSocketNMS(Landroid/os/ParcelFileDescriptor;II)V
    .registers 8
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "tag"    # I
    .param p3, "uid"    # I

    .prologue
    .line 3846
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UDS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3848
    :try_start_12
    const-string v1, "SamsungOperaMax  "

    const-string v2, "Calling  tagSocket2 in RelatedBackgroundService.java!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    invoke-static {p1, p3, p2}, Lcom/android/server/NetworkManagementSocketTagger;->tagSocketForOperaVpn(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    .line 3854
    :cond_1c
    :goto_1c
    return-void

    .line 3850
    :catch_1d
    move-exception v0

    .line 3851
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SamsungOperaMax  "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public tearDownFirewall()V
    .registers 7

    .prologue
    .line 2995
    invoke-static {}, enforceSystemUid()V

    .line 2997
    :try_start_3
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "firewall"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "tear_down_firewall"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_14} :catch_15

    .line 3001
    return-void

    .line 2998
    :catch_15
    move-exception v0

    .line 2999
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1588
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "interface"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_22} :catch_3c

    .line 1594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v2, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    invoke-virtual {p0, p1, v1}, addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1599
    return-void

    .line 1591
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_3c
    move-exception v0

    .line 1592
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public unblockEnterpriseUidRanges([Landroid/net/UidRange;)V
    .registers 10
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 3730
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagement"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    const/16 v5, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    .line 3732
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "blockusers"

    aput-object v6, v2, v5

    .line 3733
    const/4 v5, 0x1

    const-string/jumbo v6, "remove"

    aput-object v6, v2, v5

    .line 3734
    const/4 v0, 0x2

    .line 3736
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v5, p1

    if-ge v4, v5, :cond_45

    .line 3737
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 3738
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2f

    array-length v5, v2

    if-ne v1, v5, :cond_46

    .line 3740
    :cond_2f
    :try_start_2f
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "enterprise"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2f .. :try_end_3b} :catch_3f

    .line 3744
    const/4 v0, 0x2

    .line 3736
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 3741
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_3f
    move-exception v3

    .line 3742
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 3748
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_45
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_46
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_3c
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 3144
    iget-object v0, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3145
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 416
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 418
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1603
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_27

    .line 1609
    invoke-virtual {p0, p1}, removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1610
    return-void

    .line 1606
    :catch_27
    move-exception v0

    .line 1607
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "enable"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1791
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "ra"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 1798
    return-void

    .line 1795
    :catch_24
    move-exception v0

    .line 1796
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "add"    # Z
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "ifaceName"    # Ljava/lang/String;

    .prologue
    .line 4091
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "updateSourceRule"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    invoke-static {}, enforceSystemUid()V

    .line 4094
    :try_start_b
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "mptcp"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v5, "iprule"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz p1, :cond_2a

    const-string v1, "add"

    :goto_1e
    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p2, v4, v1

    const/4 v1, 0x3

    aput-object p3, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4098
    return-void

    .line 4094
    :cond_2a
    const-string/jumbo v1, "delete"
    :try_end_2d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 4095
    :catch_2e
    move-exception v0

    .line 4096
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 2173
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "fwreload"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 2179
    return-void

    .line 2176
    :catch_21
    move-exception v0

    .line 2177
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1928
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    :try_start_12
    const-string/jumbo v2, "wps_ap_pin_set"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "wps_ap_pin_client"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "wps_check_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1935
    :cond_2d
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_3e} :catch_59

    move-result-object v1

    .line 1942
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    :goto_3f
    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1943
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1937
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_49
    :try_start_49
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_57
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_49 .. :try_end_57} :catch_59

    move-result-object v1

    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_3f

    .line 1939
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_59
    move-exception v0

    .line 1940
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method
