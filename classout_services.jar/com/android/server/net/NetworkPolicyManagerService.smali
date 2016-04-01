.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final APPLICATION_RUNNING:I = 0x1

.field private static final APPLICATION_START:I = 0x0

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_POWER_SAVE_MODE_CHANGE:I = 0xc

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_ROAMING_STATE_CHANGED:I = 0x3e9

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_UID_GONE:I = 0xa

.field private static final MSG_UID_STATE_CHANGED:I = 0x9

.field private static final SHOW_FIREWALL_PERMISSION_TOAST:I = 0xb

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_FIREWALL_POLICY:Ljava/lang/String; = "firewall-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_UID_ROAMING_POLICY:Ljava/lang/String; = "uid-roaming-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static mRoamingState:Z


# instance fields
.field volatile DataWarningFlag:Z

.field private firewallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mFirewallRules:Landroid/util/SparseIntArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private volatile mIsVideoCall:Z

.field private volatile mLimitBackground:Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z

.field volatile mRestrictPower:Z

.field private mRoamingReductionPolicy:Landroid/util/SparseIntArray;

.field private mRoamingReductionRule:Landroid/util/SparseBooleanArray;

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidAllowedForData:Landroid/util/SparseIntArray;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoCallLimitAlreadySent:Z

.field private mVideoCallWarningAlreadySent:Z

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mcfgNetTypeCap:Ljava/lang/String;

.field private volatile mdeleteNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 336
    const/4 v0, 0x0

    sput-boolean v0, mRoamingState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 447
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 449
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 337
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    .line 338
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    .line 355
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mRulesLock:Ljava/lang/Object;

    .line 362
    iput-boolean v3, p0, DataWarningFlag:Z

    .line 367
    iput-boolean v3, p0, mdeleteNotifications:Z

    .line 372
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    .line 374
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, mNetworkRules:Landroid/util/ArrayMap;

    .line 377
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mUidPolicy:Landroid/util/SparseIntArray;

    .line 379
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mUidRules:Landroid/util/SparseIntArray;

    .line 381
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 382
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 385
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 387
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mFirewallRules:Landroid/util/SparseIntArray;

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, firewallMap:Ljava/util/HashMap;

    .line 391
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mUidAllowedForData:Landroid/util/SparseIntArray;

    .line 398
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 405
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 407
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 410
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, mMeteredIfaces:Landroid/util/ArraySet;

    .line 412
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, mOverLimitNotified:Landroid/util/ArraySet;

    .line 415
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, mActiveNotifs:Landroid/util/ArraySet;

    .line 418
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mUidState:Landroid/util/SparseIntArray;

    .line 420
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, mListeners:Landroid/os/RemoteCallbackList;

    .line 430
    iput-boolean v3, p0, mIsVideoCall:Z

    .line 431
    iput-boolean v3, p0, mVideoCallLimitAlreadySent:Z

    .line 432
    iput-boolean v3, p0, mVideoCallWarningAlreadySent:Z

    .line 436
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mcfgNetTypeCap:Ljava/lang/String;

    .line 490
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 689
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mUidObserver:Landroid/app/IUidObserver;

    .line 708
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 772
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 781
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 808
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 826
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 855
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 873
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 887
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 901
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 928
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 968
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1356
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1378
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 3560
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, mHandlerCallback:Landroid/os/Handler$Callback;

    .line 459
    const-string/jumbo v2, "missing context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 460
    const-string/jumbo v2, "missing activityManager"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    iput-object v2, p0, mActivityManager:Landroid/app/IActivityManager;

    .line 461
    const-string/jumbo v2, "missing powerManager"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IPowerManager;

    iput-object v2, p0, mPowerManager:Landroid/os/IPowerManager;

    .line 462
    const-string/jumbo v2, "missing networkStats"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkStatsService;

    iput-object v2, p0, mNetworkStats:Landroid/net/INetworkStatsService;

    .line 463
    const-string/jumbo v2, "missing networkManagement"

    invoke-static {p5, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    .line 464
    const-string/jumbo v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 466
    const-string/jumbo v2, "missing TrustedTime"

    invoke-static {p6, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, mTime:Landroid/util/TrustedTime;

    .line 467
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, mUserManager:Landroid/os/UserManager;

    .line 469
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 471
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 473
    iput-boolean p8, p0, mSuppressDefaultPolicy:Z

    .line 475
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "netpolicy.xml"

    invoke-direct {v3, p7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mPolicyFile:Landroid/util/AtomicFile;

    .line 477
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 480
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    invoke-direct {p0}, isATT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    iget-object v0, p0, mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    iget-object v0, p0, mConnManager:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    iget-object v0, p0, mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    iget-object v0, p0, mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    invoke-direct {p0}, updateScreenOn()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, updateUidState(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1}, removeUidState(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 257
    invoke-direct {p0, p1}, changePowerSaveMode(Z)V

    return-void
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 257
    sget-boolean v0, mRoamingState:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 257
    invoke-direct {p0, p1}, setRoamingReductionRules(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    iget-boolean v0, p0, mIsVideoCall:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, handleCheckFireWallPermission(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, mIsVideoCall:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, mVideoCallLimitAlreadySent:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, mVideoCallWarningAlreadySent:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1}, removeFirewallPolicyLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    invoke-direct {p0}, ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    invoke-direct {p0}, ensureActiveEntPolicyLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 257
    invoke-direct {p0}, normalizePoliciesLocked()V

    return-void
.end method

.method private applyFirewallRules(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2194
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_22

    .line 2195
    :try_start_4
    iget-object v0, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 2196
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_22
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_44

    .line 2200
    iget-object v0, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 2201
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_44} :catch_45

    .line 2206
    :cond_44
    :goto_44
    return-void

    .line 2203
    :catch_45
    move-exception v0

    goto :goto_44
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 3832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 5
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3843
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3845
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3846
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3847
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .registers 5
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3837
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3838
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 5
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3851
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3852
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3854
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3855
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3856
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1350
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_d
    return-void

    .line 1347
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private changePowerSaveMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 3248
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3249
    :try_start_3
    iget-boolean v0, p0, mRestrictPower:Z

    if-eq v0, p1, :cond_d

    .line 3250
    iput-boolean p1, p0, mRestrictPower:Z

    .line 3251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, updateRulesForGlobalChangeLocked(Z)V

    .line 3253
    :cond_d
    monitor-exit v1

    .line 3254
    return-void

    .line 3253
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 3865
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3866
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_12

    .line 3867
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3866
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3869
    :cond_12
    return-void
.end method

.method private currentTimeMillis()J
    .registers 3

    .prologue
    .line 3828
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_e
.end method

.method private enableFirewallChainLocked(IZ)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3779
    iget-object v1, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_a

    .line 3792
    :goto_9
    return-void

    .line 3784
    :cond_a
    iget-object v1, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3786
    :try_start_f
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_1f

    goto :goto_9

    .line 3787
    :catch_15
    move-exception v0

    .line 3788
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 3789
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1f
    move-exception v1

    goto :goto_9
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .registers 26
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 1126
    invoke-direct/range {p0 .. p2}, buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v5

    .line 1127
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1129
    const-wide/16 v6, 0x0

    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v4, 0x1060059

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1134
    .local v16, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_1ba

    .line 1236
    :cond_2f
    :goto_2f
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 1238
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v2, v0, mNotifManager:Landroid/app/INotificationManager;

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4f} :catch_1b7

    .line 1245
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_4f
    return-void

    .line 1136
    :pswitch_50
    const v2, 0x104049f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1137
    .local v18, "title":Ljava/lang/CharSequence;
    const v2, 0x10404a0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1139
    .local v10, "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1140
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1141
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1142
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1144
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v17

    .line 1145
    .local v17, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1148
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v19

    .line 1149
    .local v19, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1153
    move-object/from16 v0, p0

    iget-boolean v2, v0, mVideoCallWarningAlreadySent:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsVideoCall:Z

    if-eqz v2, :cond_2f

    .line 1154
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1156
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mVideoCallWarningAlreadySent:Z

    goto/16 :goto_2f

    .line 1162
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v17    # "snoozeIntent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/CharSequence;
    .end local v19    # "viewIntent":Landroid/content/Intent;
    :pswitch_c6
    const v2, 0x10404a5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1165
    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v12, 0x1080754

    .line 1166
    .local v12, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1c4

    .line 1181
    const/16 v18, 0x0

    .line 1185
    .restart local v18    # "title":Ljava/lang/CharSequence;
    :goto_df
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1186
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1187
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1188
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1189
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1191
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v13

    .line 1192
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_2f

    .line 1168
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_10b
    const v2, 0x10404a1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1169
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_df

    .line 1171
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_115
    const v2, 0x10404a2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1172
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_df

    .line 1174
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_11f
    const v2, 0x10404a3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1175
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_df

    .line 1177
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_129
    const v2, 0x10404a4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1178
    .restart local v18    # "title":Ljava/lang/CharSequence;
    const v12, 0x1080078

    .line 1179
    goto :goto_df

    .line 1197
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v12    # "icon":I
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_136
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v14, p3, v6

    .line 1198
    .local v14, "overBytes":J
    const v2, 0x10404aa

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mContext:Landroid/content/Context;

    invoke-static {v7, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1202
    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1d0

    .line 1216
    const/16 v18, 0x0

    .line 1220
    .restart local v18    # "title":Ljava/lang/CharSequence;
    :goto_160
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1221
    const v2, 0x1080078

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1222
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1223
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1224
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1226
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v13

    .line 1227
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_2f

    .line 1204
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_18f
    const v2, 0x10404a6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1205
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_160

    .line 1207
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_199
    const v2, 0x10404a7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1208
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_160

    .line 1210
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_1a3
    const v2, 0x10404a8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1211
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_160

    .line 1213
    .end local v18    # "title":Ljava/lang/CharSequence;
    :pswitch_1ad
    const v2, 0x10404a9

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1214
    .restart local v18    # "title":Ljava/lang/CharSequence;
    goto :goto_160

    .line 1242
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v14    # "overBytes":J
    .end local v18    # "title":Ljava/lang/CharSequence;
    :catch_1b7
    move-exception v2

    goto/16 :goto_4f

    .line 1134
    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_50
        :pswitch_c6
        :pswitch_136
    .end packed-switch

    .line 1166
    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_10b
        :pswitch_115
        :pswitch_129
    .end packed-switch

    .line 1202
    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_1a3
        :pswitch_18f
        :pswitch_199
        :pswitch_1ad
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .registers 20
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1255
    .local v11, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v11, :cond_20

    .line 1256
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v15

    .line 1257
    .local v15, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v15, :cond_20

    invoke-virtual {v15}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1271
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, mdeleteNotifications:Z

    .line 1279
    .end local v15    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v3, "-VZW-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    move-object/from16 v0, p0

    iget-object v1, v0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v3, "-TFN-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_38
    invoke-direct/range {p0 .. p0}, getRestrictBackgroundbyPco()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_48

    .line 1281
    const-string v1, "NetworkPolicy"

    const-string/jumbo v3, "the notification (Background data restricted) NOT displayed due to PCO"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_47
    return-void

    .line 1286
    :cond_48
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1287
    .local v14, "res":Landroid/content/res/Resources;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1289
    .local v10, "builder":Landroid/app/Notification$Builder;
    const v1, 0x10404ab

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 1290
    .local v17, "title":Ljava/lang/CharSequence;
    const v1, 0x10404ac

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1292
    .local v9, "body":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1293
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1294
    const v1, 0x1080078

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1295
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1296
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1301
    move-object/from16 v0, p0

    iget-boolean v1, v0, mdeleteNotifications:Z

    if-nez v1, :cond_96

    .line 1303
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1307
    :cond_96
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v13

    .line 1309
    .local v13, "mPhone":Landroid/telephony/TelephonyManager;
    const-string v1, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_136

    .line 1310
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1311
    .local v12, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.settings.GLOBAL_ROAMING_LGT"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    const/high16 v1, 0x10000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1313
    const v1, 0x1040964

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1314
    const v1, 0x1040964

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1315
    const v1, 0x1040965

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1316
    new-instance v16, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1317
    .local v16, "style":Landroid/app/Notification$BigTextStyle;
    const v1, 0x1040964

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 1318
    const v1, 0x1040965

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 1319
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v12, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1330
    .end local v16    # "style":Landroid/app/Notification$BigTextStyle;
    :goto_10d
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1331
    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 1332
    .local v7, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v1, v0, mNotifManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v2

    move-object/from16 v4, p1

    invoke-interface/range {v1 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v1, v0, mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_131} :catch_133

    goto/16 :goto_47

    .line 1335
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "idReceived":[I
    :catch_133
    move-exception v1

    goto/16 :goto_47

    .line 1322
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_136
    invoke-static {}, buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1323
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v12, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_10d
.end method

.method private ensureActiveEntPolicyLocked()V
    .registers 10

    .prologue
    .line 1776
    iget-boolean v8, p0, mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_5

    .line 1789
    :cond_4
    return-void

    .line 1778
    :cond_5
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 1779
    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1782
    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-direct {p0}, isDdsSimStateReady()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1784
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .line 1785
    .local v5, "subIds":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_4

    aget v4, v0, v1

    .line 1786
    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1787
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, ensureActiveEntPolicyLocked(Ljava/lang/String;)V

    .line 1785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method private ensureActiveEntPolicyLocked(Ljava/lang/String;)V
    .registers 24
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1792
    const-string v3, "NetworkPolicy"

    const-string/jumbo v6, "ensureActiveEntPolicyLocked"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    new-instance v2, Landroid/net/NetworkIdentity;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1796
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_1e
    if-ltz v19, :cond_36

    .line 1797
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1798
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1828
    :goto_32
    return-void

    .line 1796
    :cond_33
    add-int/lit8 v19, v19, -0x1

    goto :goto_1e

    .line 1806
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v20

    .line 1808
    .local v20, "sub":Landroid/telephony/SubscriptionManager;
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No ent policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "; generating default policy"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-wide/16 v8, -0x1

    .line 1815
    .local v8, "warningBytes":J
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 1816
    .local v21, "time":Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 1820
    const/16 v18, 0x1

    .line 1822
    .local v18, "cycleDay":I
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1824
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1825
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1827
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    goto :goto_32
.end method

.method private ensureActiveMobilePolicyLocked()V
    .registers 10

    .prologue
    .line 1711
    iget-boolean v8, p0, mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_5

    .line 1724
    :cond_4
    return-void

    .line 1713
    :cond_5
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 1714
    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1717
    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-direct {p0}, isDdsSimStateReady()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1719
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .line 1720
    .local v5, "subIds":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_4

    aget v4, v0, v1

    .line 1721
    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1722
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    .line 1720
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .registers 24
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1728
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1730
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_15
    if-ltz v19, :cond_2d

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1732
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1772
    :goto_29
    return-void

    .line 1730
    :cond_2a
    add-int/lit8 v19, v19, -0x1

    goto :goto_15

    .line 1740
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v20

    .line 1742
    .local v20, "sub":Landroid/telephony/SubscriptionManager;
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "; generating default policy"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e007d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v10, v3

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .line 1751
    .local v8, "warningBytes":J
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_74

    .line 1752
    const-wide/16 v8, -0x1

    .line 1755
    :cond_74
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 1756
    .local v21, "time":Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 1760
    const/16 v18, 0x1

    .line 1762
    .local v18, "cycleDay":I
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1764
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1765
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1767
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_29
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .registers 5
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 2901
    iget-object v2, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 2902
    iget-object v2, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2903
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2907
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_1a
    return-object v1

    .line 2901
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2907
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .registers 24
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2925
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 2928
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2929
    :try_start_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 2930
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_20

    .line 2932
    if-eqz v18, :cond_1e

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2934
    :cond_1e
    const/4 v9, 0x0

    .line 2950
    :goto_1f
    return-object v9

    .line 2930
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2

    .line 2937
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_23
    invoke-direct/range {p0 .. p0}, currentTimeMillis()J

    move-result-wide v16

    .line 2940
    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 2941
    .local v4, "start":J
    move-wide/from16 v6, v16

    .line 2942
    .local v6, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2945
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_59

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2947
    .local v12, "softLimitBytes":J
    :goto_45
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_5c

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2950
    .local v14, "hardLimitBytes":J
    :goto_53
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_1f

    .line 2945
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_59
    const-wide/16 v12, -0x1

    goto :goto_45

    .line 2947
    .restart local v12    # "softLimitBytes":J
    :cond_5c
    const-wide/16 v14, -0x1

    goto :goto_53
.end method

.method private getRestrictBackgroundbyPco()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2882
    iget-object v2, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v3, "-VZW-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v3, "-TFN-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2883
    :cond_16
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data_by_pco"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_3f

    .line 2885
    .local v0, "restrictBackgroundbyPco":Z
    :goto_24
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRestrictBackgroundbyPco() restrictBackgroundbyPco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2888
    .end local v0    # "restrictBackgroundbyPco":Z
    :cond_3e
    return v1

    :cond_3f
    move v0, v1

    .line 2883
    goto :goto_24
.end method

.method private getRestrictBackgroundbyUser()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 2893
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data_by_user"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_29

    .line 2895
    .local v0, "restrictBackgroundbyUser":Z
    :goto_f
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRestrictBackgroundbyUser() restrictBackgroundbyUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    return v0

    .line 2893
    .end local v0    # "restrictBackgroundbyUser":Z
    :cond_29
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 452
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3796
    :try_start_2
    iget-object v0, p0, mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_a} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_28

    move-result-wide v0

    .line 3802
    :goto_b
    return-wide v0

    .line 3797
    :catch_c
    move-exception v6

    .line 3798
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v8

    .line 3799
    goto :goto_b

    .line 3800
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_28
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 3802
    goto :goto_b
.end method

.method private handleCheckFireWallPermission(ILjava/lang/String;)V
    .registers 15
    .param p1, "applicationStatus"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2309
    if-nez p1, :cond_c

    .line 2310
    iget-object v8, p0, firewallMap:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    :cond_c
    const/4 v6, 0x0

    .line 2313
    .local v6, "newStatus":I
    iget-object v8, p0, firewallMap:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 2314
    iget-object v8, p0, firewallMap:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2316
    :cond_21
    const/4 v8, 0x3

    if-ne v6, v8, :cond_25

    .line 2352
    :cond_24
    :goto_24
    return-void

    .line 2319
    :cond_25
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2320
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 2321
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_24

    if-eqz v2, :cond_24

    const-string v8, "android"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    .line 2325
    const/4 v0, 0x0

    .line 2327
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x1

    :try_start_43
    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_46} :catch_9b

    move-result-object v0

    .line 2333
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2334
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_24

    if-eqz v0, :cond_24

    .line 2338
    if-eqz v0, :cond_a0

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2339
    .local v1, "appName":Ljava/lang/String;
    :goto_59
    const-string v4, ""

    .line 2341
    .local v4, "messageStr":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_a5

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v8}, getFirewallRuleMobileData(I)Z

    move-result v8

    if-nez v8, :cond_a5

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a5

    .line 2342
    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x1040a66

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2343
    iget-object v9, p0, firewallMap:Ljava/util/HashMap;

    if-nez v6, :cond_a3

    const/4 v8, 0x1

    :goto_83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    :cond_8a
    :goto_8a
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_24

    .line 2350
    iget-object v8, p0, mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_24

    .line 2328
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "messageStr":Ljava/lang/String;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_9b
    move-exception v3

    .line 2329
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_24

    .line 2338
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a0
    const-string v1, ""

    goto :goto_59

    .line 2343
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v4    # "messageStr":Ljava/lang/String;
    :cond_a3
    const/4 v8, 0x3

    goto :goto_83

    .line 2344
    :cond_a5
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8a

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v8}, getFirewallRuleWifi(I)Z

    move-result v8

    if-nez v8, :cond_8a

    const/4 v8, 0x2

    if-eq v6, v8, :cond_8a

    .line 2345
    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x1040a67

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2346
    iget-object v9, p0, firewallMap:Ljava/util/HashMap;

    if-nez v6, :cond_d6

    const/4 v8, 0x2

    :goto_ce
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    :cond_d6
    const/4 v8, 0x3

    goto :goto_ce
.end method

.method private isATT()Z
    .registers 3

    .prologue
    .line 3911
    const-string v0, "ATT"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "AIO"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3913
    :cond_14
    const/4 v0, 0x1

    .line 3915
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    .prologue
    .line 3807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3809
    .local v2, "token":J
    :try_start_4
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_e
    .catchall {:try_start_4 .. :try_end_9} :catchall_14

    move-result v1

    .line 3814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_d
    return v1

    .line 3810
    :catch_e
    move-exception v0

    .line 3812
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 3814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_14
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isDdsSimStateReady()Z
    .registers 5

    .prologue
    .line 3904
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 3905
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 3906
    .local v0, "slotId":I
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method static isProcStateAllowedWhileIdle(I)Z
    .registers 2
    .param p0, "procState"    # I

    .prologue
    .line 3272
    const/4 v0, 0x4

    if-gt p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1067
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 1068
    .local v12, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .line 1071
    .local v9, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v13, :cond_31

    .line 1074
    invoke-direct {p0}, isDdsSimStateReady()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1075
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1094
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_30
    :goto_30
    return v1

    .line 1083
    .restart local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .restart local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_31
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    .line 1084
    .local v11, "subIds":[I
    move-object v6, v11

    .local v6, "arr$":[I
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_38
    if-ge v7, v8, :cond_30

    aget v10, v6, v7

    .line 1085
    .local v10, "subId":I
    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1088
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_50

    move v1, v13

    .line 1089
    goto :goto_30

    .line 1084
    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "arr$":[I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v10    # "subId":I
    .end local v11    # "subIds":[I
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_53
    move v1, v13

    .line 1094
    goto :goto_30
.end method

.method private isUidIdle(I)Z
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3410
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3411
    .local v4, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3413
    .local v5, "userId":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_11
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    .line 3414
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v3, p1, v5}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 3415
    const/4 v6, 0x0

    .line 3418
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1e
    return v6

    .line 3413
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3418
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_22
    const/4 v6, 0x1

    goto :goto_1e
.end method

.method private static isUidValidForRules(I)Z
    .registers 2
    .param p0, "uid"    # I

    .prologue
    .line 3401
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_e

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3403
    :cond_e
    const/4 v0, 0x1

    .line 3406
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private normalizePoliciesLocked()V
    .registers 2

    .prologue
    .line 2542
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2543
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .registers 12
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2546
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2547
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v4

    .line 2549
    .local v4, "merged":[Ljava/lang/String;
    iget-object v7, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 2550
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_5e

    aget-object v5, v0, v2

    .line 2553
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v7, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2554
    iget-object v7, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2555
    .local v1, "existing":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_30

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v7

    if-lez v7, :cond_5b

    .line 2556
    :cond_30
    if-eqz v1, :cond_54

    .line 2557
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Normalization replaced "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_54
    iget-object v7, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2562
    .end local v1    # "existing":Landroid/net/NetworkPolicy;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_5e
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .registers 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1103
    iget-object v0, p0, mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1104
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {p1}, buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1105
    iget-object v0, p0, mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_16
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .registers 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1110
    iget-object v0, p0, mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1111
    return-void
.end method

.method private notifyVideoCallOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .registers 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1411
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AlreadySent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mVideoCallLimitAlreadySent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 1427
    :cond_30
    :goto_30
    return-void

    .line 1416
    :pswitch_31
    iget-boolean v1, p0, mVideoCallLimitAlreadySent:Z

    if-nez v1, :cond_30

    .line 1417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1420
    const/4 v1, 0x1

    iput-boolean v1, p0, mVideoCallLimitAlreadySent:Z

    .line 1421
    invoke-virtual {p0}, updateNetworkRulesLocked()V

    goto :goto_30

    .line 1412
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private readPolicyLocked()V
    .registers 33

    .prologue
    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1835
    move-object/from16 v0, p0

    iget-object v4, v0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1836
    move-object/from16 v0, p0

    iget-object v4, v0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1838
    const/16 v20, 0x0

    .line 1840
    .local v20, "fis":Ljava/io/FileInputStream;
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v20

    .line 1841
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1842
    .local v21, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1845
    const/16 v29, 0x1

    .line 1846
    .local v29, "version":I
    :cond_32
    :goto_32
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_2e9

    .line 1847
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 1848
    .local v26, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_32

    .line 1849
    const-string/jumbo v4, "policy-list"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 1850
    const-string/jumbo v4, "version"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 1851
    const/4 v4, 0x3

    move/from16 v0, v29

    if-lt v0, v4, :cond_a8

    .line 1852
    const-string/jumbo v4, "restrictBackground"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, mRestrictBackground:Z

    .line 1858
    :goto_6a
    move-object/from16 v0, p0

    iget-object v4, v0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v30, "-VZW-"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_86

    move-object/from16 v0, p0

    iget-object v4, v0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v30, "-TFN-"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_86
    invoke-direct/range {p0 .. p0}, getRestrictBackgroundbyPco()Z

    move-result v4

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_32

    .line 1860
    const-string v4, "NetworkPolicy"

    const-string/jumbo v30, "readPolicyLocked() PCO forces to set mRestrictBackground as true"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mRestrictBackground:Z
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_9f} :catch_a0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_9f} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_9f} :catch_172
    .catchall {:try_start_17 .. :try_end_9f} :catchall_1db

    goto :goto_32

    .line 1964
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_a0
    move-exception v19

    .line 1966
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_a1
    invoke-direct/range {p0 .. p0}, upgradeLegacyBackgroundData()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_1db

    .line 1972
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1974
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_a7
    return-void

    .line 1855
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_a8
    const/4 v4, 0x0

    :try_start_a9
    move-object/from16 v0, p0

    iput-boolean v4, v0, mRestrictBackground:Z
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_ad} :catch_a0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_ad} :catch_172
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_1db

    goto :goto_6a

    .line 1967
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_ae
    move-exception v19

    .line 1968
    .local v19, "e":Ljava/io/IOException;
    :try_start_af
    const-string v4, "NetworkPolicy"

    const-string/jumbo v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_1db

    .line 1972
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a7

    .line 1865
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_bf
    :try_start_bf
    const-string/jumbo v4, "network-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    .line 1866
    const-string/jumbo v4, "networkTemplate"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1867
    .local v23, "networkTemplate":I
    const/4 v4, 0x0

    const-string/jumbo v30, "subscriberId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1869
    .local v25, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v29

    if-lt v0, v4, :cond_184

    .line 1870
    const/4 v4, 0x0

    const-string/jumbo v30, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1874
    .local v22, "networkId":Ljava/lang/String;
    :goto_f1
    const-string/jumbo v4, "cycleDay"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1876
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v29

    if-lt v0, v4, :cond_188

    .line 1877
    const/4 v4, 0x0

    const-string/jumbo v30, "cycleTimezone"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1881
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_10b
    const-string/jumbo v4, "warningBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1882
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1884
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_18b

    .line 1885
    const-string/jumbo v4, "lastLimitSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 1892
    .local v14, "lastLimitSnooze":J
    :goto_12b
    const/4 v4, 0x4

    move/from16 v0, v29

    if-lt v0, v4, :cond_19d

    .line 1893
    const-string/jumbo v4, "metered"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1907
    .local v16, "metered":Z
    :goto_139
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_1a6

    .line 1908
    const-string/jumbo v4, "lastWarningSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 1913
    .local v12, "lastWarningSnooze":J
    :goto_147
    const/4 v4, 0x7

    move/from16 v0, v29

    if-lt v0, v4, :cond_1a9

    .line 1914
    const-string/jumbo v4, "inferred"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1919
    .local v17, "inferred":Z
    :goto_155
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1921
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_170
    .catch Ljava/io/FileNotFoundException; {:try_start_bf .. :try_end_170} :catch_a0
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_170} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_170} :catch_172
    .catchall {:try_start_bf .. :try_end_170} :catchall_1db

    goto/16 :goto_32

    .line 1969
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "networkId":Ljava/lang/String;
    .end local v23    # "networkTemplate":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_172
    move-exception v19

    .line 1970
    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_173
    const-string v4, "NetworkPolicy"

    const-string/jumbo v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17f
    .catchall {:try_start_173 .. :try_end_17f} :catchall_1db

    .line 1972
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_a7

    .line 1872
    .end local v19    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "networkTemplate":I
    .restart local v25    # "subscriberId":Ljava/lang/String;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_184
    const/16 v22, 0x0

    .restart local v22    # "networkId":Ljava/lang/String;
    goto/16 :goto_f1

    .line 1879
    .restart local v6    # "cycleDay":I
    :cond_188
    :try_start_188
    const-string v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto :goto_10b

    .line 1886
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_18b
    const/4 v4, 0x2

    move/from16 v0, v29

    if-lt v0, v4, :cond_19a

    .line 1887
    const-string/jumbo v4, "lastSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_12b

    .line 1889
    .end local v14    # "lastLimitSnooze":J
    :cond_19a
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_12b

    .line 1895
    :cond_19d
    packed-switch v23, :pswitch_data_2ee

    .line 1903
    :pswitch_1a0
    const/16 v16, 0x0

    .restart local v16    # "metered":Z
    goto :goto_139

    .line 1900
    .end local v16    # "metered":Z
    :pswitch_1a3
    const/16 v16, 0x1

    .line 1901
    .restart local v16    # "metered":Z
    goto :goto_139

    .line 1910
    :cond_1a6
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_147

    .line 1916
    :cond_1a9
    const/16 v17, 0x0

    .restart local v17    # "inferred":Z
    goto :goto_155

    .line 1925
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v22    # "networkId":Ljava/lang/String;
    .end local v23    # "networkTemplate":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    :cond_1ac
    const-string/jumbo v4, "uid-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_207

    .line 1926
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1927
    .local v28, "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1929
    .local v24, "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 1930
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, setUidPolicyUncheckedLocked(IIZ)V
    :try_end_1d9
    .catch Ljava/io/FileNotFoundException; {:try_start_188 .. :try_end_1d9} :catch_a0
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_1d9} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_188 .. :try_end_1d9} :catch_172
    .catchall {:try_start_188 .. :try_end_1d9} :catchall_1db

    goto/16 :goto_32

    .line 1972
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v28    # "uid":I
    .end local v29    # "version":I
    :catchall_1db
    move-exception v4

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1932
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "policy":I
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v28    # "uid":I
    .restart local v29    # "version":I
    :cond_1e0
    :try_start_1e0
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 1934
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_207
    const-string/jumbo v4, "uid-roaming-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 1935
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1936
    .restart local v28    # "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1938
    .restart local v24    # "policy":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, setRoamingReduction(II)V

    goto/16 :goto_32

    .line 1939
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_22f
    const-string v4, "app-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28a

    .line 1940
    const-string v4, "appId"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1941
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1944
    .restart local v24    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v28

    .line 1945
    .restart local v28    # "uid":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_263

    .line 1946
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_32

    .line 1948
    :cond_263
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 1950
    .end local v18    # "appId":I
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_28a
    const-string/jumbo v4, "firewall-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1951
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1952
    .restart local v28    # "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1954
    .restart local v24    # "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_2c2

    .line 1955
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, setFirewallPolicyUncheckedLocked(IIZ)V

    .line 1956
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, applyFirewallRules(II)V

    goto/16 :goto_32

    .line 1958
    :cond_2c2
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e7
    .catch Ljava/io/FileNotFoundException; {:try_start_1e0 .. :try_end_2e7} :catch_a0
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_2e7} :catch_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e0 .. :try_end_2e7} :catch_172
    .catchall {:try_start_1e0 .. :try_end_2e7} :catchall_1db

    goto/16 :goto_32

    .line 1972
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v28    # "uid":I
    :cond_2e9
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_a7

    .line 1895
    :pswitch_data_2ee
    .packed-switch 0x1
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_1a3
    .end packed-switch
.end method

.method private removeFirewallPolicyLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2184
    iget-object v1, p0, mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2185
    .local v0, "policy":I
    if-eqz v0, :cond_14

    .line 2186
    iget-object v1, p0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2187
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2188
    invoke-direct {p0, p1, v0}, removeFirewallRules(II)V

    .line 2190
    :cond_14
    return-void
.end method

.method private removeFirewallRules(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2210
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_23

    .line 2211
    :try_start_4
    iget-object v0, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 2212
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :cond_23
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_46

    .line 2216
    iget-object v0, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 2217
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_46} :catch_47

    .line 2222
    :cond_46
    :goto_46
    return-void

    .line 2219
    :catch_47
    move-exception v0

    goto :goto_46
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3716
    :try_start_0
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_10

    .line 3722
    :goto_5
    return-void

    .line 3717
    :catch_6
    move-exception v0

    .line 3718
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 3719
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method private removeUidState(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 3242
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3243
    :try_start_3
    invoke-virtual {p0, p1}, removeUidStateLocked(I)V

    .line 3244
    monitor-exit v1

    .line 3245
    return-void

    .line 3244
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private setFirewallPolicyUncheckedLocked(IIZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2172
    if-nez p2, :cond_d

    .line 2173
    iget-object v0, p0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2178
    :goto_7
    if-eqz p3, :cond_c

    .line 2179
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2181
    :cond_c
    return-void

    .line 2175
    :cond_d
    iget-object v0, p0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_7
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 3703
    :try_start_0
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_10

    .line 3712
    :goto_5
    return-void

    .line 3707
    :catch_6
    move-exception v0

    .line 3708
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 3709
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .registers 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    .line 1484
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1486
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    .line 1519
    :pswitch_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unexpected template"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1492
    :pswitch_16
    invoke-direct {p0}, isDdsSimStateReady()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1494
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, setPolicyDataEnable(IZ)V

    .line 1495
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, setPolicyDataEnable(IZ)V

    .line 1521
    :cond_36
    :goto_36
    :pswitch_36
    return-void

    .line 1500
    :pswitch_37
    invoke-direct {p0}, isDdsSimStateReady()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1502
    const/16 v1, 0x1c

    invoke-direct {p0, v1, p2}, setPolicyDataEnable(IZ)V

    goto :goto_36

    .line 1507
    :pswitch_55
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, setPolicyDataEnable(IZ)V

    goto :goto_36

    .line 1510
    :pswitch_5a
    const/16 v1, 0x9

    invoke-direct {p0, v1, p2}, setPolicyDataEnable(IZ)V

    goto :goto_36

    .line 1486
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_55
        :pswitch_5a
        :pswitch_36
        :pswitch_36
        :pswitch_d
        :pswitch_37
    .end packed-switch
.end method

.method private setPolicyDataEnable(IZ)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1528
    :try_start_0
    iget-object v0, p0, mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1532
    :goto_5
    return-void

    .line 1529
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private setRoamingReductionRules(Z)V
    .registers 11
    .param p1, "allowed"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2825
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRoamingReductionRules allowed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v5, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_5e

    .line 2828
    iget-object v5, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2829
    .local v4, "uid":I
    iget-object v5, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 2830
    .local v3, "policy":I
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRoamingReductionPolicy uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    if-eqz p1, :cond_5a

    .line 2833
    invoke-direct {p0, v4, v3}, setWhiteListUidNetworkRules(II)V

    .line 2827
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2835
    :cond_5a
    invoke-direct {p0, v4, v8}, setWhiteListUidNetworkRules(II)V

    goto :goto_57

    .line 2840
    .end local v3    # "policy":I
    .end local v4    # "uid":I
    :cond_5e
    if-nez p1, :cond_a0

    .line 2841
    const/4 v2, 0x0

    :goto_61
    iget-object v5, p0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_a0

    .line 2842
    iget-object v5, p0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 2843
    .restart local v4    # "uid":I
    iget-object v5, p0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    .line 2844
    .local v0, "applied":Z
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRoamingReductionRule uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", applied: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    if-eqz v0, :cond_9d

    invoke-direct {p0, v4, v8}, setWhiteListUidNetworkRules(II)V

    .line 2841
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 2851
    .end local v0    # "applied":Z
    .end local v4    # "uid":I
    :cond_a0
    :try_start_a0
    iget-object v5, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1}, Landroid/os/INetworkManagementService;->setRoamingReductionRules(Z)V
    :try_end_a5
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_a5} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a5} :catch_b0

    .line 2857
    :goto_a5
    return-void

    .line 2852
    :catch_a6
    move-exception v1

    .line 2853
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkPolicy"

    const-string/jumbo v6, "problem setting uid rules"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 2854
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_b0
    move-exception v5

    goto :goto_a5
.end method

.method private setUidAllowedForDataUnchecked(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2384
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2385
    :try_start_3
    invoke-virtual {p0, p1}, getUidAllowedForData(I)I

    move-result v0

    .line 2386
    .local v0, "oldPolicy":I
    iget-object v1, p0, mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2389
    invoke-virtual {p0, p1}, updateRulesForUidLocked(I)V

    .line 2390
    const/4 v1, 0x1

    if-ne p2, v1, :cond_17

    .line 2391
    iget-object v1, p0, mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2393
    :cond_17
    monitor-exit v2

    .line 2394
    return-void

    .line 2393
    .end local v0    # "oldPolicy":I
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private setUidFirewallRule(III)V
    .registers 7
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 3760
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 3761
    iget-object v1, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3767
    :cond_8
    :goto_8
    :try_start_8
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_d} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_21

    .line 3773
    :goto_d
    return-void

    .line 3762
    :cond_e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 3763
    iget-object v1, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_8

    .line 3768
    :catch_17
    move-exception v0

    .line 3769
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 3770
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_21
    move-exception v1

    goto :goto_d
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .registers 10
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 3741
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 3742
    .local v3, "size":I
    new-array v4, v3, [I

    .line 3743
    .local v4, "uids":[I
    new-array v2, v3, [I

    .line 3744
    .local v2, "rules":[I
    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_a
    if-ltz v1, :cond_1b

    .line 3745
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    .line 3746
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 3744
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3748
    :cond_1b
    iget-object v5, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v4, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_2b

    .line 3754
    .end local v1    # "index":I
    .end local v2    # "rules":[I
    .end local v3    # "size":I
    .end local v4    # "uids":[I
    :goto_20
    return-void

    .line 3749
    :catch_21
    move-exception v0

    .line 3750
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkPolicy"

    const-string/jumbo v6, "problem setting firewall uid rules"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 3751
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2b
    move-exception v5

    goto :goto_20
.end method

.method private setUidNetworkRules(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 3726
    :try_start_0
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_10

    .line 3732
    :goto_5
    return-void

    .line 3727
    :catch_6
    move-exception v0

    .line 3728
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 3729
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_10
    move-exception v1

    goto :goto_5
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2162
    iget-object v0, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2165
    invoke-virtual {p0, p1}, updateRulesForUidLocked(I)V

    .line 2166
    if-eqz p3, :cond_d

    .line 2167
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2169
    :cond_d
    return-void
.end method

.method private setUidRoamingPolicyUncheckedLocked(IIZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2816
    iget-object v0, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2818
    sget-boolean v0, mRoamingState:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, setWhiteListUidNetworkRules(II)V

    .line 2819
    :cond_c
    if-eqz p3, :cond_11

    .line 2820
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2822
    :cond_11
    return-void
.end method

.method private setWhiteListUidNetworkRules(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    const/4 v2, 0x0

    .line 2860
    if-nez p2, :cond_3c

    move v0, v2

    .line 2861
    .local v0, "allowed":Z
    :goto_4
    iget-object v3, p0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2863
    .local v1, "appliedRule":Z
    if-ne v0, v1, :cond_3e

    .line 2864
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roaming rule("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is already applied for uid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :goto_3b
    return-void

    .line 2860
    .end local v0    # "allowed":Z
    .end local v1    # "appliedRule":Z
    :cond_3c
    const/4 v0, 0x1

    goto :goto_4

    .line 2867
    .restart local v0    # "allowed":Z
    .restart local v1    # "appliedRule":Z
    :cond_3e
    iget-object v2, p0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3b
.end method

.method private updateRulesForScreenLocked()V
    .registers 6

    .prologue
    .line 3262
    iget-object v3, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3263
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1e

    .line 3264
    iget-object v3, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1b

    .line 3265
    iget-object v3, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3266
    .local v2, "uid":I
    invoke-virtual {p0, v2}, updateRulesForUidLocked(I)V

    .line 3263
    .end local v2    # "uid":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3269
    :cond_1e
    return-void
.end method

.method private updateScreenOn()V
    .registers 3

    .prologue
    .line 3225
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3227
    :try_start_3
    iget-object v0, p0, mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, mScreenOn:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_13
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 3231
    :goto_b
    :try_start_b
    invoke-direct {p0}, updateRulesForScreenLocked()V

    .line 3232
    monitor-exit v1

    .line 3233
    return-void

    .line 3232
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0

    .line 3228
    :catch_13
    move-exception v0

    goto :goto_b
.end method

.method private updateUidState(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 3237
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3238
    :try_start_3
    invoke-virtual {p0, p1, p2}, updateUidStateLocked(II)V

    .line 3239
    monitor-exit v1

    .line 3240
    return-void

    .line 3239
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateVideoCallLocked()V
    .registers 15

    .prologue
    .line 1391
    invoke-direct {p0}, currentTimeMillis()J

    move-result-wide v6

    .line 1392
    .local v6, "currentTime":J
    iget-object v0, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicy;

    .line 1393
    .local v9, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    cmp-long v0, v0, v12

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1396
    invoke-static {v6, v7, v9}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1397
    .local v2, "start":J
    move-wide v4, v6

    .line 1398
    .local v4, "end":J
    iget-object v1, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 1400
    .local v10, "totalBytes":J
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mIsVideoCall: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v12, p0, mIsVideoCall:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-boolean v0, p0, mIsVideoCall:Z

    if-eqz v0, :cond_e

    invoke-virtual {v9, v10, v11}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1402
    iget-object v0, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, notifyVideoCallOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_e

    .line 1405
    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v9    # "policy":Landroid/net/NetworkPolicy;
    .end local v10    # "totalBytes":J
    :cond_5f
    return-void
.end method

.method private upgradeLegacyBackgroundData()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1981
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "background_data"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_6c

    move v3, v4

    :goto_10
    iput-boolean v3, p0, mRestrictBackground:Z

    .line 1985
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1987
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_35

    .line 1988
    const-string v3, "NetworkPolicy"

    const-string/jumbo v5, "edm is not null 1"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1990
    .local v2, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v3

    if-nez v3, :cond_35

    .line 1991
    iput-boolean v4, p0, mRestrictBackground:Z

    .line 1997
    .end local v2    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_35
    iget-object v3, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v5, "-VZW-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    iget-object v3, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v5, "-TFN-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    :cond_49
    invoke-direct {p0}, getRestrictBackgroundbyPco()Z

    move-result v3

    if-ne v3, v4, :cond_59

    .line 1999
    const-string v3, "NetworkPolicy"

    const-string/jumbo v5, "upgradeLegacyBackgroundData() PCO forces to set mRestrictBackground as true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iput-boolean v4, p0, mRestrictBackground:Z

    .line 2005
    :cond_59
    iget-boolean v3, p0, mRestrictBackground:Z

    if-eqz v3, :cond_6b

    .line 2006
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2010
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_6b
    return-void

    .line 1981
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_6c
    const/4 v3, 0x0

    goto :goto_10
.end method

.method private validatePoliciesToSet([Landroid/net/NetworkPolicy;)V
    .registers 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2470
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    .line 2471
    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_34

    .line 2480
    :pswitch_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected template "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2470
    :pswitch_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2484
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_33
    return-void

    .line 2471
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 3861
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3862
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2516
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2517
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2518
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2519
    return-void
.end method

.method public addUidPolicy(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2129
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2135
    :cond_28
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2136
    :try_start_2b
    iget-object v1, p0, mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2137
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 2138
    if-eq v0, p2, :cond_39

    .line 2139
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, setUidPolicyUncheckedLocked(IIZ)V

    .line 2141
    :cond_39
    monitor-exit v2

    .line 2142
    return-void

    .line 2141
    .end local v0    # "oldPolicy":I
    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 507
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, mConnManager:Landroid/net/IConnectivityManager;

    .line 508
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .registers 3
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 511
    const-string/jumbo v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, mNotifManager:Landroid/app/INotificationManager;

    .line 512
    return-void
.end method

.method public checkFireWallPermission(ZLjava/lang/String;)V
    .registers 6
    .param p1, "isFirstActivityStart"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2356
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2357
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_15

    const/4 v1, 0x0

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2358
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2359
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2360
    return-void

    .line 2357
    :cond_15
    const/4 v1, 0x1

    goto :goto_b
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2980
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    const-string v17, "NetworkPolicy"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v15, "  "

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2984
    .local v5, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v15, v0

    invoke-direct {v3, v15}, Landroid/util/ArraySet;-><init>(I)V

    .line 2985
    .local v3, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_20
    if-ge v7, v9, :cond_2a

    aget-object v2, v4, v7

    .line 2986
    .local v2, "arg":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2985
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 2989
    .end local v2    # "arg":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2990
    :try_start_31
    const-string v15, "--unsnooze"

    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6b

    .line 2991
    move-object/from16 v0, p0

    iget-object v15, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v6, v15, -0x1

    .local v6, "i":I
    :goto_43
    if-ltz v6, :cond_55

    .line 2992
    move-object/from16 v0, p0

    iget-object v15, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2991
    add-int/lit8 v6, v6, -0x1

    goto :goto_43

    .line 2995
    :cond_55
    invoke-direct/range {p0 .. p0}, normalizePoliciesLocked()V

    .line 2996
    invoke-virtual/range {p0 .. p0}, updateNetworkEnabledLocked()V

    .line 2997
    invoke-virtual/range {p0 .. p0}, updateNetworkRulesLocked()V

    .line 2998
    invoke-virtual/range {p0 .. p0}, updateNotificationsLocked()V

    .line 2999
    invoke-virtual/range {p0 .. p0}, writePolicyLocked()V

    .line 3001
    const-string v15, "Cleared snooze timestamps"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    monitor-exit v16

    .line 3151
    :goto_6a
    return-void

    .line 3005
    .end local v6    # "i":I
    :cond_6b
    const-string v15, "System ready: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, mSystemReady:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3006
    const-string v15, "Restrict background: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, mRestrictBackground:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3007
    const-string v15, "Restrict power: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, mRestrictPower:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3008
    const-string v15, "Device idle: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, mDeviceIdleMode:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3009
    const-string v15, "Network policies:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3011
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a4
    move-object/from16 v0, p0

    iget-object v15, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v6, v15, :cond_c2

    .line 3012
    move-object/from16 v0, p0

    iget-object v15, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    add-int/lit8 v6, v6, 0x1

    goto :goto_a4

    .line 3014
    :cond_c2
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3016
    const-string v15, "Metered ifaces: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    const-string v15, "Policy for UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3020
    move-object/from16 v0, p0

    iget-object v15, v0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 3021
    .local v12, "size":I
    const/4 v6, 0x0

    :goto_e6
    if-ge v6, v12, :cond_118

    .line 3022
    move-object/from16 v0, p0

    iget-object v15, v0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 3023
    .local v14, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 3024
    .local v10, "policy":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3026
    const-string v15, " policy="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3027
    const-class v15, Landroid/net/NetworkPolicyManager;

    const-string v17, "POLICY_"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v10}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3021
    add-int/lit8 v6, v6, 0x1

    goto :goto_e6

    .line 3030
    .end local v10    # "policy":I
    .end local v14    # "uid":I
    :cond_118
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3032
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 3033
    if-lez v12, :cond_159

    .line 3034
    const-string v15, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3036
    const/4 v6, 0x0

    :goto_12e
    if-ge v6, v12, :cond_156

    .line 3037
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3038
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3039
    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3040
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3041
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3036
    add-int/lit8 v6, v6, 0x1

    goto :goto_12e

    .line 3043
    :cond_156
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3046
    :cond_159
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 3047
    if-lez v12, :cond_197

    .line 3048
    const-string v15, "Power save whitelist app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3050
    const/4 v6, 0x0

    :goto_16c
    if-ge v6, v12, :cond_194

    .line 3051
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3052
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3053
    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3054
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3055
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3050
    add-int/lit8 v6, v6, 0x1

    goto :goto_16c

    .line 3057
    :cond_194
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3061
    :cond_197
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 3062
    if-lez v12, :cond_1d5

    .line 3063
    const-string v15, "Power save temp whitelist app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3065
    const/4 v6, 0x0

    :goto_1aa
    if-ge v6, v12, :cond_1d2

    .line 3066
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3067
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3068
    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3069
    move-object/from16 v0, p0

    iget-object v15, v0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3070
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3065
    add-int/lit8 v6, v6, 0x1

    goto :goto_1aa

    .line 3072
    :cond_1d2
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3077
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v15, v0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 3078
    const-string v15, "Status for Roaming Reduction Policy UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3080
    const/4 v6, 0x0

    :goto_1e6
    if-ge v6, v12, :cond_23d

    .line 3081
    move-object/from16 v0, p0

    iget-object v15, v0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 3082
    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3085
    move-object/from16 v0, p0

    iget-object v15, v0, mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 3086
    .local v13, "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3087
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3088
    const/4 v15, 0x2

    if-gt v13, v15, :cond_233

    const-string v15, " (fg)"

    :goto_211
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3091
    move-object/from16 v0, p0

    iget-object v15, v0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3092
    .restart local v10    # "policy":I
    const-string v15, " policy ="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3093
    const/4 v15, -0x1

    if-ne v10, v15, :cond_236

    .line 3094
    const-string v15, "UNKNOWN"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    :goto_22d
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3080
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e6

    .line 3088
    .end local v10    # "policy":I
    :cond_233
    const-string v15, " (bg)"

    goto :goto_211

    .line 3096
    .restart local v10    # "policy":I
    :cond_236
    invoke-virtual {v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    goto :goto_22d

    .line 3150
    .end local v6    # "i":I
    .end local v10    # "policy":I
    .end local v12    # "size":I
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :catchall_23a
    move-exception v15

    monitor-exit v16
    :try_end_23c
    .catchall {:try_start_31 .. :try_end_23c} :catchall_23a

    throw v15

    .line 3100
    .restart local v6    # "i":I
    .restart local v12    # "size":I
    :cond_23d
    :try_start_23d
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3102
    move-object/from16 v0, p0

    iget-object v15, v0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 3103
    const-string v15, "Status for Roaming Reduction Rule UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3105
    const/4 v6, 0x0

    :goto_251
    if-ge v6, v12, :cond_29d

    .line 3106
    move-object/from16 v0, p0

    iget-object v15, v0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 3107
    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3110
    move-object/from16 v0, p0

    iget-object v15, v0, mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 3111
    .restart local v13    # "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3113
    const/4 v15, 0x2

    if-gt v13, v15, :cond_294

    const-string v15, " (fg)"

    :goto_27c
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v15, v0, mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 3116
    .local v1, "applied":Z
    if-eqz v1, :cond_297

    .line 3117
    const-string v15, " applied = true"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    :goto_28e
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3105
    add-int/lit8 v6, v6, 0x1

    goto :goto_251

    .line 3113
    .end local v1    # "applied":Z
    :cond_294
    const-string v15, " (bg)"

    goto :goto_27c

    .line 3119
    .restart local v1    # "applied":Z
    :cond_297
    const-string v15, " applied = false"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_28e

    .line 3123
    .end local v1    # "applied":Z
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :cond_29d
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3126
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3127
    .local v8, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v15, v0, mUidState:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3128
    move-object/from16 v0, p0

    iget-object v15, v0, mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3130
    const-string v15, "Status for known UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3132
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 3133
    const/4 v6, 0x0

    :goto_2c0
    if-ge v6, v12, :cond_311

    .line 3134
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 3135
    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3138
    move-object/from16 v0, p0

    iget-object v15, v0, mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 3139
    .restart local v13    # "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3141
    const/4 v15, 0x2

    if-gt v13, v15, :cond_30e

    const-string v15, " (fg)"

    :goto_2e7
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3143
    move-object/from16 v0, p0

    iget-object v15, v0, mUidRules:Landroid/util/SparseIntArray;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 3144
    .local v11, "rule":I
    const-string v15, " rule="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3145
    const-class v15, Landroid/net/NetworkPolicyManager;

    const-string v17, "RULE_"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v11}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3133
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c0

    .line 3141
    .end local v11    # "rule":I
    :cond_30e
    const-string v15, " (bg)"

    goto :goto_2e7

    .line 3149
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :cond_311
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3150
    monitor-exit v16
    :try_end_315
    .catchall {:try_start_23d .. :try_end_315} :catchall_23a

    goto/16 :goto_6a
.end method

.method public factoryReset(Ljava/lang/String;)V
    .registers 13
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3873
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3875
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_network_reset"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 3900
    :cond_15
    return-void

    .line 3880
    :cond_16
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 3881
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 3882
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_27
    if-ge v1, v2, :cond_3f

    aget-object v4, v0, v1

    .line 3883
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 3884
    const-wide/16 v8, -0x1

    iput-wide v8, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3885
    iput-boolean v10, v4, Landroid/net/NetworkPolicy;->inferred:Z

    .line 3886
    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3882
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 3889
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_3f
    invoke-virtual {p0, v3}, setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3892
    invoke-virtual {p0, v10}, setRestrictBackground(Z)V

    .line 3894
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_control_apps"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 3896
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, getUidsWithPolicy(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    const/4 v1, 0x0

    :goto_57
    if-ge v1, v2, :cond_15

    aget v6, v0, v1

    .line 3897
    .local v6, "uid":I
    invoke-virtual {p0, v6, v10}, setUidPolicy(II)V

    .line 3896
    add-int/lit8 v1, v1, 0x1

    goto :goto_57
.end method

.method public getFirewallRuleMobileData(I)Z
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2288
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2291
    :try_start_d
    iget-object v3, p0, mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2292
    .local v0, "policy":I
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFirewallRuleMobileData UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    monitor-exit v2

    return v1

    .line 2294
    .end local v0    # "policy":I
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public getFirewallRuleWifi(I)Z
    .registers 8
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2299
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2302
    :try_start_d
    iget-object v3, p0, mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2303
    .local v0, "policy":I
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFirewallRuleWifi UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    monitor-exit v2

    return v1

    .line 2305
    .end local v0    # "policy":I
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public getMeteredIfaces()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 2705
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2708
    :try_start_c
    iget-object v0, p0, mMeteredIfaces:Landroid/util/ArraySet;

    iget-object v2, p0, mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 2709
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2523
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    iget-object v3, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    .line 2528
    const/4 v3, 0x0

    new-array v1, v3, [Landroid/net/NetworkPolicy;

    .line 2537
    :goto_23
    return-object v1

    .line 2531
    :cond_24
    iget-object v4, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2532
    :try_start_27
    iget-object v3, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 2533
    .local v2, "size":I
    new-array v1, v2, [Landroid/net/NetworkPolicy;

    .line 2534
    .local v1, "policies":[Landroid/net/NetworkPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v2, :cond_3f

    .line 2535
    iget-object v3, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    aput-object v3, v1, v0

    .line 2534
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 2537
    :cond_3f
    monitor-exit v4

    goto :goto_23

    .line 2538
    .end local v0    # "i":I
    .end local v1    # "policies":[Landroid/net/NetworkPolicy;
    .end local v2    # "size":I
    :catchall_41
    move-exception v3

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_41

    throw v3
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .registers 7
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2912
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2918
    .local v0, "token":J
    :try_start_d
    invoke-direct {p0, p1}, getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    move-result-object v2

    .line 2920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .registers 4

    .prologue
    .line 2695
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2698
    :try_start_c
    iget-boolean v0, p0, mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 2699
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getRoamingReduction(I)I
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 2799
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2805
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "setRoamingReduction API allows only SPR model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    const/4 v1, 0x0

    return v1
.end method

.method public getUidAllowedForData(I)I
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2397
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2400
    :try_start_c
    iget-object v0, p0, mUidAllowedForData:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2401
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getUidPolicy(I)I
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2364
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2367
    :try_start_c
    iget-object v0, p0, mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2368
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .registers 9
    .param p1, "policy"    # I

    .prologue
    .line 2407
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 2410
    .local v3, "uids":[I
    iget-object v5, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    :try_start_10
    iget-object v4, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2d

    .line 2412
    iget-object v4, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2413
    .local v1, "uid":I
    iget-object v4, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 2414
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_2a

    .line 2415
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2411
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2418
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_2d
    monitor-exit v5

    .line 2419
    return-object v3

    .line 2418
    :catchall_2f
    move-exception v4

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .registers 7
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v3, 0x1

    .line 2955
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2958
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2974
    :cond_d
    :goto_d
    return v3

    .line 2963
    :cond_e
    iget-object v4, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2964
    :try_start_11
    invoke-direct {p0, v0}, findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2965
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 2967
    if-eqz v1, :cond_1e

    .line 2968
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_d

    .line 2965
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v3

    .line 2970
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1e
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2971
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x6

    if-eq v2, v4, :cond_d

    .line 2974
    const/4 v3, 0x0

    goto :goto_d
.end method

.method public isUidForeground(I)Z
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 3155
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3158
    :try_start_c
    invoke-virtual {p0, p1}, isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3159
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v0
.end method

.method isUidForegroundLocked(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 3164
    iget-boolean v0, p0, mScreenOn:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method maybeRefreshTrustedTime()V
    .registers 5

    .prologue
    .line 3822
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 3823
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3825
    :cond_12
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .registers 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 2577
    invoke-virtual {p0}, maybeRefreshTrustedTime()V

    .line 2578
    invoke-direct {p0}, currentTimeMillis()J

    move-result-wide v0

    .line 2579
    .local v0, "currentTime":J
    iget-object v4, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2581
    :try_start_a
    iget-object v3, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2582
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_31

    .line 2583
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2602
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v3

    .line 2586
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_31
    packed-switch p2, :pswitch_data_54

    .line 2594
    :try_start_34
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2588
    :pswitch_3d
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2597
    :goto_3f
    invoke-direct {p0}, normalizePoliciesLocked()V

    .line 2598
    invoke-virtual {p0}, updateNetworkEnabledLocked()V

    .line 2599
    invoke-virtual {p0}, updateNetworkRulesLocked()V

    .line 2600
    invoke-virtual {p0}, updateNotificationsLocked()V

    .line 2601
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2602
    monitor-exit v4

    .line 2603
    return-void

    .line 2591
    :pswitch_50
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_2e

    goto :goto_3f

    .line 2586
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_50
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistLocked()V
    .registers 4

    .prologue
    .line 556
    iget-object v2, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 557
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_1a

    .line 558
    iget-object v2, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 559
    iget-object v2, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 557
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 562
    :cond_1a
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2449
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    iget-object v0, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2454
    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 2429
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 2430
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v6, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1f

    .line 2431
    iget-object v6, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2432
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_1c

    .line 2433
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2430
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2437
    .end local v4    # "uid":I
    :cond_1f
    array-length v6, v5

    if-lez v6, :cond_37

    .line 2438
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_25
    if-ge v2, v3, :cond_34

    aget v4, v0, v2

    .line 2439
    .restart local v4    # "uid":I
    iget-object v6, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2440
    invoke-virtual {p0, v4}, updateRulesForUidLocked(I)V

    .line 2438
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2442
    .end local v4    # "uid":I
    :cond_34
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2444
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_37
    return-void
.end method

.method public removeUidPolicy(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2146
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2152
    :cond_28
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2153
    :try_start_2b
    iget-object v1, p0, mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2154
    .local v0, "oldPolicy":I
    xor-int/lit8 v1, p2, -0x1

    and-int p2, v0, v1

    .line 2155
    if-eq v0, p2, :cond_3c

    .line 2156
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, setUidPolicyUncheckedLocked(IIZ)V

    .line 2158
    :cond_3c
    monitor-exit v2

    .line 2159
    return-void

    .line 2158
    .end local v0    # "oldPolicy":I
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_3e

    throw v1
.end method

.method removeUidStateLocked(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    const/16 v3, 0x10

    .line 3186
    iget-object v2, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 3187
    .local v0, "index":I
    if-ltz v0, :cond_21

    .line 3188
    iget-object v2, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 3189
    .local v1, "oldUidState":I
    iget-object v2, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3190
    if-eq v1, v3, :cond_21

    .line 3191
    invoke-virtual {p0, p1, v1, v3}, updateRulesForUidStateChangeLocked(III)V

    .line 3193
    iget-boolean v2, p0, mDeviceIdleMode:Z

    if-eqz v2, :cond_21

    .line 3194
    invoke-virtual {p0, p1}, updateRuleForDeviceIdleLocked(I)V

    .line 3198
    .end local v1    # "oldUidState":I
    :cond_21
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2715
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    iget-object v1, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2718
    :try_start_c
    iget-boolean v0, p0, mDeviceIdleMode:Z

    if-eq v0, p1, :cond_22

    .line 2719
    iput-boolean p1, p0, mDeviceIdleMode:Z

    .line 2720
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_1a

    .line 2723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, updateRulesForGlobalChangeLocked(Z)V

    .line 2725
    :cond_1a
    if-eqz p1, :cond_24

    .line 2726
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 2731
    :cond_22
    :goto_22
    monitor-exit v1

    .line 2732
    return-void

    .line 2728
    :cond_24
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_22

    .line 2731
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public setFirewallRuleMobileData(IZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2226
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    if-eqz p2, :cond_59

    :goto_d
    invoke-virtual {p0, p1, v1}, setUidPolicy(II)V

    .line 2228
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2229
    :try_start_13
    iget-object v1, p0, mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2230
    .local v0, "policy":I
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFirewallRuleMobileData UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    if-nez p2, :cond_5b

    .line 2232
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_57

    .line 2233
    or-int/lit8 v0, v0, 0x1

    .line 2234
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2235
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, applyFirewallRules(II)V

    .line 2244
    :cond_57
    :goto_57
    monitor-exit v2

    .line 2245
    return-void

    .end local v0    # "policy":I
    :cond_59
    move v1, v2

    .line 2227
    goto :goto_d

    .line 2238
    .restart local v0    # "policy":I
    :cond_5b
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_57

    .line 2239
    and-int/lit8 v0, v0, -0x2

    .line 2240
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2241
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, removeFirewallRules(II)V

    goto :goto_57

    .line 2244
    .end local v0    # "policy":I
    :catchall_6a
    move-exception v1

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    .registers 7
    .param p1, "uidAllowedMap"    # Ljava/util/Map;

    .prologue
    .line 2272
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2274
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v3, v2}, setFirewallRuleMobileData(IZ)V

    goto :goto_11

    .line 2276
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_35
    return-void
.end method

.method public setFirewallRuleWifi(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 2249
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2252
    :try_start_c
    iget-object v1, p0, mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2253
    .local v0, "policy":I
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFirewallRuleWifi UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    if-nez p2, :cond_52

    .line 2255
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_50

    .line 2256
    or-int/lit8 v0, v0, 0x2

    .line 2257
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2258
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, applyFirewallRules(II)V

    .line 2267
    :cond_50
    :goto_50
    monitor-exit v2

    .line 2268
    return-void

    .line 2261
    :cond_52
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_50

    .line 2262
    and-int/lit8 v0, v0, -0x3

    .line 2263
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2264
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, removeFirewallRules(II)V

    goto :goto_50

    .line 2267
    .end local v0    # "policy":I
    :catchall_61
    move-exception v1

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_61

    throw v1
.end method

.method public setFirewallRuleWifiMap(Ljava/util/Map;)V
    .registers 7
    .param p1, "uidAllowedMap"    # Ljava/util/Map;

    .prologue
    .line 2280
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2282
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v3, v2}, setFirewallRuleWifi(IZ)V

    goto :goto_11

    .line 2284
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_35
    return-void
.end method

.method public setLimitBackground(Z)V
    .registers 6
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2676
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    invoke-virtual {p0}, maybeRefreshTrustedTime()V

    .line 2679
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2680
    :try_start_10
    iput-boolean p1, p0, mLimitBackground:Z

    .line 2681
    iget-boolean v0, p0, mRestrictBackground:Z

    if-nez v0, :cond_1a

    .line 2682
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, updateRulesForGlobalChangeLocked(Z)V

    .line 2684
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_2d

    .line 2686
    iget-boolean v0, p0, mRestrictBackground:Z

    if-nez v0, :cond_2c

    .line 2687
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_30

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2690
    :cond_2c
    return-void

    .line 2684
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    move v0, v1

    .line 2687
    goto :goto_25
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 6
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2488
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    :try_start_9
    invoke-direct {p0, p1}, validatePoliciesToSet([Landroid/net/NetworkPolicy;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_32

    .line 2502
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "China"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2503
    invoke-virtual {p0}, maybeRefreshTrustedTime()V

    .line 2506
    :cond_1e
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2507
    :try_start_21
    invoke-direct {p0, p1}, normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2508
    invoke-virtual {p0}, updateNetworkEnabledLocked()V

    .line 2509
    invoke-virtual {p0}, updateNetworkRulesLocked()V

    .line 2510
    invoke-virtual {p0}, updateNotificationsLocked()V

    .line 2511
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2512
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_3b

    .line 2513
    :goto_31
    return-void

    .line 2496
    :catch_32
    move-exception v0

    .line 2497
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkPolicy"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 2512
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public setRestrictBackground(Z)V
    .registers 15
    .param p1, "restrictBackground"    # Z

    .prologue
    const/high16 v12, 0x10000000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2607
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v11, "NetworkPolicy"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    iput-boolean v8, p0, mdeleteNotifications:Z

    .line 2611
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2613
    .local v3, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v3, :cond_2b

    .line 2614
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    .line 2615
    .local v6, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v9

    if-nez v9, :cond_2b

    .line 2616
    const/4 p1, 0x1

    .line 2617
    iput-boolean v7, p0, mdeleteNotifications:Z

    .line 2623
    .end local v6    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2b
    const-string/jumbo v9, "ro.csc.country_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "China"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 2624
    invoke-virtual {p0}, maybeRefreshTrustedTime()V

    .line 2627
    :cond_3d
    iget-object v9, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2628
    :try_start_40
    iput-boolean p1, p0, mRestrictBackground:Z

    .line 2630
    iget-object v10, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v11, "-VZW-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_56

    iget-object v10, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v11, "-TFN-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_67

    :cond_56
    invoke-direct {p0}, getRestrictBackgroundbyPco()Z

    move-result v10

    if-ne v10, v7, :cond_67

    .line 2632
    const-string v10, "NetworkPolicy"

    const-string/jumbo v11, "setRestrictBackground() PCO forces to set mRestrictBackground as true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    const/4 v10, 0x1

    iput-boolean v10, p0, mRestrictBackground:Z

    .line 2636
    :cond_67
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, updateRulesForGlobalChangeLocked(Z)V

    .line 2637
    invoke-virtual {p0}, updateNotificationsLocked()V

    .line 2638
    invoke-virtual {p0}, writePolicyLocked()V

    .line 2639
    monitor-exit v9
    :try_end_72
    .catchall {:try_start_40 .. :try_end_72} :catchall_13a

    .line 2642
    iget-boolean v9, p0, mRestrictBackground:Z

    if-nez v9, :cond_99

    .line 2643
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "data_powersaving_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2645
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2646
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2647
    const-string v9, "BgDataChanged"

    const-string/jumbo v10, "notificationpannel"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2648
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2650
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_99
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12d

    .line 2652
    :cond_b1
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "data_powersaving_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2653
    .local v2, "data_powersaving":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "psm_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2654
    .local v0, "basic_powersaving":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "blackgrey_powersaving_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2656
    .local v1, "black_grey_powersaving":I
    const-string v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data_powersaving = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", basic_powersaving = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "black_grey_powersaving = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    if-nez v2, :cond_12d

    if-nez v0, :cond_12d

    if-nez v1, :cond_12d

    .line 2659
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "powersaving_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2660
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2662
    .local v5, "powerintent":Landroid/content/Intent;
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2663
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2664
    const-string v9, "NetworkPolicy"

    const-string/jumbo v10, "send com.samsung.settings.POWERSAVINGMODE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    .end local v0    # "basic_powersaving":I
    .end local v1    # "black_grey_powersaving":I
    .end local v2    # "data_powersaving":I
    .end local v5    # "powerintent":Landroid/content/Intent;
    :cond_12d
    iget-object v9, p0, mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    if-eqz p1, :cond_13d

    :goto_132
    invoke-virtual {v9, v10, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2672
    return-void

    .line 2639
    :catchall_13a
    move-exception v7

    :try_start_13b
    monitor-exit v9
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    throw v7

    :cond_13d
    move v7, v8

    .line 2670
    goto :goto_132
.end method

.method public setRestrictBackgroundByPco(Z)V
    .registers 8
    .param p1, "restrictBackgroundPco"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2738
    iget-object v1, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v4, "-VZW-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, mcfgNetTypeCap:Ljava/lang/String;

    const-string v4, "-TFN-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 2739
    :cond_16
    const-string v1, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRestrictBackgroundByPco() restrictBackgroundPco: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    invoke-direct {p0}, getRestrictBackgroundbyPco()Z

    move-result v1

    if-ne v1, p1, :cond_3e

    .line 2743
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "setRestrictBackgroundByPco() same PCO value as before, then discard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :goto_3d
    return-void

    .line 2745
    :cond_3e
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "background_data_by_pco"

    if-eqz p1, :cond_9b

    move v1, v2

    :goto_49
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2747
    const-string v1, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRestrictBackgroundByPco() save PCO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, getRestrictBackgroundbyPco()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    if-ne p1, v3, :cond_9f

    .line 2752
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "background_data_by_user"

    iget-boolean v5, p0, mRestrictBackground:Z

    if-eqz v5, :cond_9d

    :goto_77
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2754
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundByPco() save USER: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getRestrictBackgroundbyUser()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    invoke-virtual {p0, v3}, setRestrictBackground(Z)V

    goto :goto_3d

    :cond_9b
    move v1, v3

    .line 2745
    goto :goto_49

    :cond_9d
    move v2, v3

    .line 2752
    goto :goto_77

    .line 2760
    :cond_9f
    invoke-direct {p0}, getRestrictBackgroundbyUser()Z

    move-result v0

    .line 2761
    .local v0, "restrictBackgroundbyUser":Z
    const-string v1, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRestrictBackgroundByPco() PCO false, restore by USER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    if-ne v0, v3, :cond_c3

    .line 2764
    invoke-virtual {p0, v3}, setRestrictBackground(Z)V

    goto/16 :goto_3d

    .line 2766
    :cond_c3
    invoke-virtual {p0, v2}, setRestrictBackground(Z)V

    goto/16 :goto_3d

    .line 2771
    .end local v0    # "restrictBackgroundbyUser":Z
    :cond_c8
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "setRestrictBackgroundByPco() is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d
.end method

.method public setRoamingReduction(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2778
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2784
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "setRoamingReduction API allows only SPR model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    return-void
.end method

.method public setUidAllowedForData(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2373
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 2376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2379
    :cond_28
    invoke-direct {p0, p1, p2}, setUidAllowedForDataUnchecked(II)V

    .line 2380
    return-void
.end method

.method public setUidPolicy(II)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2108
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2114
    :cond_28
    iget-object v4, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2115
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_46

    move-result-wide v2

    .line 2117
    .local v2, "token":J
    :try_start_2f
    iget-object v1, p0, mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2118
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_3c

    .line 2119
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, setUidPolicyUncheckedLocked(IIZ)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_41

    .line 2122
    :cond_3c
    :try_start_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    monitor-exit v4

    .line 2125
    return-void

    .line 2122
    .end local v0    # "oldPolicy":I
    :catchall_41
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2124
    .end local v2    # "token":J
    :catchall_46
    move-exception v1

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .registers 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2566
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2570
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_e
    invoke-virtual {p0, p1, v2}, performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 2572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2574
    return-void

    .line 2572
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .registers 25

    .prologue
    .line 565
    invoke-direct/range {p0 .. p0}, isBandwidthControlEnabled()Z

    move-result v19

    if-nez v19, :cond_e

    .line 566
    const-string v19, "NetworkPolicy"

    const-string v20, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_d
    return-void

    .line 570
    :cond_e
    const-class v19, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 572
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "cscValues":Ljava/lang/String;
    if-eqz v8, :cond_3c

    const-string/jumbo v19, "trafficmanager"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 575
    :try_start_33
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/os/INetworkManagementService;->buildFirewall()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_30b

    .line 581
    :cond_3c
    :goto_3c
    move-object/from16 v0, p0

    iget-object v0, v0, mRulesLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 582
    :try_start_43
    invoke-virtual/range {p0 .. p0}, updatePowerSaveWhitelistLocked()V

    .line 583
    const-class v19, Landroid/os/PowerManagerInternal;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v19, v0

    new-instance v21, Lcom/android/server/net/NetworkPolicyManagerService$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRestrictPower:Z

    .line 596
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSystemReady:Z

    .line 599
    invoke-direct/range {p0 .. p0}, readPolicyLocked()V

    .line 601
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, updateRulesForGlobalChangeLocked(Z)V

    .line 602
    invoke-virtual/range {p0 .. p0}, updateNotificationsLocked()V

    .line 603
    monitor-exit v20
    :try_end_92
    .catchall {:try_start_43 .. :try_end_92} :catchall_305

    .line 605
    invoke-direct/range {p0 .. p0}, updateScreenOn()V

    .line 608
    :try_start_95
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_b3} :catch_308

    .line 617
    :goto_b3
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    .local v12, "screenFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v19, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 623
    new-instance v16, Landroid/content/IntentFilter;

    const-string v19, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 625
    .local v16, "whitelistFilter":Landroid/content/IntentFilter;
    const-string v19, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 629
    new-instance v7, Landroid/content/IntentFilter;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 630
    .local v7, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 633
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v11, "packageFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    if-eqz v8, :cond_156

    const-string/jumbo v19, "trafficmanager"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_156

    .line 636
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    :cond_156
    const-string/jumbo v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 646
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v15, "userFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v19, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 652
    new-instance v14, Landroid/content/IntentFilter;

    const-string v19, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 653
    .local v14, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mStatsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 657
    new-instance v5, Landroid/content/IntentFilter;

    const-string v19, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 658
    .local v5, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mAllowReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 661
    new-instance v13, Landroid/content/IntentFilter;

    const-string v19, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 662
    .local v13, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 666
    new-instance v17, Landroid/content/IntentFilter;

    const-string v19, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 667
    .local v17, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 670
    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 672
    .local v18, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 677
    const-string v19, "NetworkPolicy"

    const-string v20, ">> NetworkPolicyManagerService"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 679
    .local v10, "mVideoCallReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .local v6, "callFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PRECISE_CALL_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    const-string v19, "NetworkPolicy"

    const-string v20, "<< NetworkPolicyManagerService"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v9, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 686
    .local v9, "localeChanged":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLocaleReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_d

    .line 603
    .end local v5    # "allowFilter":Landroid/content/IntentFilter;
    .end local v6    # "callFilter":Landroid/content/IntentFilter;
    .end local v7    # "connFilter":Landroid/content/IntentFilter;
    .end local v9    # "localeChanged":Landroid/content/IntentFilter;
    .end local v10    # "mVideoCallReceiver":Landroid/content/BroadcastReceiver;
    .end local v11    # "packageFilter":Landroid/content/IntentFilter;
    .end local v12    # "screenFilter":Landroid/content/IntentFilter;
    .end local v13    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v14    # "statsFilter":Landroid/content/IntentFilter;
    .end local v15    # "userFilter":Landroid/content/IntentFilter;
    .end local v16    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v17    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v18    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_305
    move-exception v19

    :try_start_306
    monitor-exit v20
    :try_end_307
    .catchall {:try_start_306 .. :try_end_307} :catchall_305

    throw v19

    .line 610
    :catch_308
    move-exception v19

    goto/16 :goto_b3

    .line 576
    :catch_30b
    move-exception v19

    goto/16 :goto_3c
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2459
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    iget-object v0, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2462
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .registers 21

    .prologue
    .line 1438
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1439
    .local v8, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v8, :cond_14

    const-string v2, "VZW-"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_14
    invoke-direct/range {p0 .. p0}, isATT()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1441
    :cond_1a
    invoke-direct/range {p0 .. p0}, updateVideoCallLocked()V

    .line 1448
    :cond_1d
    invoke-direct/range {p0 .. p0}, currentTimeMillis()J

    move-result-wide v10

    .line 1449
    .local v10, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_2b
    if-ltz v12, :cond_91

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1452
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v2, v2, v18

    if-eqz v2, :cond_45

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1454
    :cond_45
    :try_start_45
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4d} :catch_50

    .line 1449
    :goto_4d
    add-int/lit8 v12, v12, -0x1

    goto :goto_2b

    .line 1455
    :catch_50
    move-exception v9

    .line 1456
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NetworkPolicy"

    const-string v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 1461
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_59
    invoke-static {v10, v11, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1462
    .local v4, "start":J
    move-wide v6, v10

    .line 1463
    .local v6, "end":J
    iget-object v3, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .line 1466
    .local v16, "totalBytes":J
    invoke-virtual/range {v15 .. v17}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_8d

    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsVideoCall:Z

    if-nez v2, :cond_8d

    iget-wide v2, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_8d

    const/4 v14, 0x1

    .line 1468
    .local v14, "overLimitWithoutSnooze":Z
    :goto_79
    if-nez v14, :cond_8f

    const/4 v13, 0x1

    .line 1471
    .local v13, "networkEnabled":Z
    :goto_7c
    :try_start_7c
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_83} :catch_84

    goto :goto_4d

    .line 1472
    :catch_84
    move-exception v9

    .line 1473
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NetworkPolicy"

    const-string v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 1466
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "networkEnabled":Z
    .end local v14    # "overLimitWithoutSnooze":Z
    :cond_8d
    const/4 v14, 0x0

    goto :goto_79

    .line 1468
    .restart local v14    # "overLimitWithoutSnooze":Z
    :cond_8f
    const/4 v13, 0x0

    goto :goto_7c

    .line 1476
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v14    # "overLimitWithoutSnooze":Z
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "totalBytes":J
    :cond_91
    return-void
.end method

.method updateNetworkRulesLocked()V
    .registers 45

    .prologue
    .line 1545
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9a

    move-result-object v39

    .line 1556
    .local v39, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, mRestrictPower:Z

    if-eqz v4, :cond_9c

    move-object/from16 v0, p0

    iget-boolean v4, v0, mRestrictBackground:Z

    if-nez v4, :cond_9c

    const/16 v32, 0x1

    .line 1560
    .local v32, "powerSave":Z
    :goto_16
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, v39

    array-length v4, v0

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1561
    .local v12, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 v0, v39

    array-length v4, v0

    invoke-direct {v13, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1562
    .local v13, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, v39

    .local v10, "arr$":[Landroid/net/NetworkState;
    array-length v0, v10

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .local v19, "i$":I
    :goto_2f
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_a5

    aget-object v38, v10, v19

    .line 1563
    .local v38, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_a0

    .line 1564
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 1565
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v20

    .line 1567
    .local v20, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 1568
    .local v11, "baseIface":Ljava/lang/String;
    if-eqz v11, :cond_69

    .line 1569
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    if-eqz v32, :cond_69

    .line 1571
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_69
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v37

    .line 1578
    .local v37, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v19    # "i$":I
    .local v18, "i$":Ljava/util/Iterator;
    :cond_75
    :goto_75
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/LinkProperties;

    .line 1579
    .local v36, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v36 .. v36}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v33

    .line 1580
    .local v33, "stackedIface":Ljava/lang/String;
    if-eqz v33, :cond_75

    .line 1581
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    if-eqz v32, :cond_75

    .line 1583
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 1546
    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v11    # "baseIface":Ljava/lang/String;
    .end local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "ident":Landroid/net/NetworkIdentity;
    .end local v26    # "len$":I
    .end local v32    # "powerSave":Z
    .end local v33    # "stackedIface":Ljava/lang/String;
    .end local v36    # "stackedLink":Landroid/net/LinkProperties;
    .end local v37    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v38    # "state":Landroid/net/NetworkState;
    .end local v39    # "states":[Landroid/net/NetworkState;
    :catch_9a
    move-exception v14

    .line 1703
    :goto_9b
    return-void

    .line 1556
    .restart local v39    # "states":[Landroid/net/NetworkState;
    :cond_9c
    const/16 v32, 0x0

    goto/16 :goto_16

    .line 1562
    .restart local v10    # "arr$":[Landroid/net/NetworkState;
    .restart local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "len$":I
    .restart local v32    # "powerSave":Z
    .restart local v38    # "state":Landroid/net/NetworkState;
    :cond_a0
    add-int/lit8 v18, v19, 0x1

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .restart local v19    # "i$":I
    goto :goto_2f

    .line 1592
    .end local v38    # "state":Landroid/net/NetworkState;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1593
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 1594
    .local v23, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_ba
    if-ltz v17, :cond_119

    .line 1595
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/NetworkPolicy;

    .line 1597
    .local v31, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1598
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    .local v25, "j":I
    :goto_d1
    if-ltz v25, :cond_f7

    .line 1599
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 1600
    .local v21, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 1601
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    :cond_f4
    add-int/lit8 v25, v25, -0x1

    goto :goto_d1

    .line 1605
    .end local v21    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_f7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_116

    .line 1606
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1607
    .local v24, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    .end local v24    # "ifaces":[Ljava/lang/String;
    :cond_116
    add-int/lit8 v17, v17, -0x1

    goto :goto_ba

    .line 1611
    .end local v25    # "j":I
    .end local v31    # "policy":Landroid/net/NetworkPolicy;
    :cond_119
    const-wide v28, 0x7fffffffffffffffL

    .line 1612
    .local v28, "lowestRule":J
    new-instance v30, Landroid/util/ArraySet;

    move-object/from16 v0, v39

    array-length v4, v0

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1616
    .local v30, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, currentTimeMillis()J

    move-result-wide v8

    .line 1617
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v19    # "i$":I
    :goto_136
    if-ltz v17, :cond_22c

    .line 1618
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/NetworkPolicy;

    .line 1619
    .restart local v31    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .line 1623
    .restart local v24    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_1d4

    .line 1624
    move-object/from16 v0, v31

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1625
    .local v6, "start":J
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v40

    .line 1636
    .local v40, "totalBytes":J
    :goto_166
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v42, -0x1

    cmp-long v4, v4, v42

    if-eqz v4, :cond_1dc

    const/16 v16, 0x1

    .line 1637
    .local v16, "hasWarning":Z
    :goto_172
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v42, -0x1

    cmp-long v4, v4, v42

    if-eqz v4, :cond_1df

    const/4 v15, 0x1

    .line 1638
    .local v15, "hasLimit":Z
    :goto_17d
    if-nez v15, :cond_185

    move-object/from16 v0, v31

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_208

    .line 1641
    :cond_185
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsVideoCall:Z

    if-eqz v4, :cond_1e1

    move-object/from16 v0, p0

    iget-boolean v4, v0, mVideoCallLimitAlreadySent:Z

    if-eqz v4, :cond_1e1

    .line 1642
    const-wide v34, 0x7fffffffffffffffL

    .line 1659
    .local v34, "quotaBytes":J
    :goto_196
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1a4

    .line 1661
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_1a4
    move-object/from16 v10, v24

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_1ab
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_208

    aget-object v22, v10, v18

    .line 1665
    .local v22, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, removeInterfaceQuota(Ljava/lang/String;)V

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, setInterfaceQuota(Ljava/lang/String;J)V

    .line 1667
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1668
    if-eqz v32, :cond_1d1

    .line 1669
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1664
    :cond_1d1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1ab

    .line 1627
    .end local v6    # "start":J
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v18    # "i$":I
    .end local v22    # "iface":Ljava/lang/String;
    .end local v34    # "quotaBytes":J
    .end local v40    # "totalBytes":J
    :cond_1d4
    const-wide v6, 0x7fffffffffffffffL

    .line 1628
    .restart local v6    # "start":J
    const-wide/16 v40, 0x0

    .restart local v40    # "totalBytes":J
    goto :goto_166

    .line 1636
    :cond_1dc
    const/16 v16, 0x0

    goto :goto_172

    .line 1637
    .restart local v16    # "hasWarning":Z
    :cond_1df
    const/4 v15, 0x0

    goto :goto_17d

    .line 1644
    .restart local v15    # "hasLimit":Z
    :cond_1e1
    if-nez v15, :cond_1e9

    .line 1647
    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_196

    .line 1648
    .end local v34    # "quotaBytes":J
    :cond_1e9
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1f7

    .line 1651
    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_196

    .line 1656
    .end local v34    # "quotaBytes":J
    :cond_1f7
    const-wide/16 v4, 0x1

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v40

    move-wide/from16 v0, v42

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v34

    .restart local v34    # "quotaBytes":J
    goto :goto_196

    .line 1675
    .end local v34    # "quotaBytes":J
    :cond_208
    if-eqz v16, :cond_218

    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_218

    .line 1676
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    .line 1678
    :cond_218
    if-eqz v15, :cond_228

    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_228

    .line 1679
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    .line 1617
    :cond_228
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_136

    .line 1683
    .end local v6    # "start":J
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v24    # "ifaces":[Ljava/lang/String;
    .end local v31    # "policy":Landroid/net/NetworkPolicy;
    .end local v40    # "totalBytes":J
    :cond_22c
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_232
    if-ltz v17, :cond_259

    .line 1684
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1685
    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, removeInterfaceQuota(Ljava/lang/String;)V

    .line 1686
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v5}, setInterfaceQuota(Ljava/lang/String;J)V

    .line 1687
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1683
    add-int/lit8 v17, v17, -0x1

    goto :goto_232

    .line 1690
    .end local v22    # "iface":Ljava/lang/String;
    :cond_259
    move-object/from16 v0, p0

    iget-object v4, v0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_275
    if-ltz v17, :cond_297

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1695
    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_294

    .line 1696
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, removeInterfaceQuota(Ljava/lang/String;)V

    .line 1693
    :cond_294
    add-int/lit8 v17, v17, -0x1

    goto :goto_275

    .line 1699
    .end local v22    # "iface":Ljava/lang/String;
    :cond_297
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, mMeteredIfaces:Landroid/util/ArraySet;

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v5, v0, mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/String;

    .line 1702
    .local v27, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9b
.end method

.method updateNotificationsLocked()V
    .registers 23

    .prologue
    .line 989
    new-instance v10, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v10, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 990
    .local v10, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 996
    invoke-direct/range {p0 .. p0}, currentTimeMillis()J

    move-result-wide v12

    .line 997
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .local v14, "i":I
    :goto_1e
    if-ltz v14, :cond_129

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkPolicy;

    .line 1000
    .local v18, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 997
    :cond_36
    :goto_36
    add-int/lit8 v14, v14, -0x1

    goto :goto_1e

    .line 1001
    :cond_39
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1003
    move-object/from16 v0, v18

    invoke-static {v12, v13, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1004
    .local v6, "start":J
    move-wide v8, v12

    .line 1005
    .local v8, "end":J
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v20

    .line 1007
    .local v20, "totalBytes":J
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v4

    if-eqz v4, :cond_87

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsVideoCall:Z

    if-nez v4, :cond_87

    .line 1008
    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_73

    .line 1009
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_36

    .line 1011
    :cond_73
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1012
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_36

    .line 1016
    :cond_87
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 1017
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1018
    .local v11, "cscValues":Ljava/lang/String;
    if-eqz v11, :cond_da

    const-string/jumbo v4, "trafficmanager"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 1019
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1020
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_f8

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f8

    move-object/from16 v0, p0

    iget-boolean v4, v0, DataWarningFlag:Z

    if-nez v4, :cond_f8

    .line 1021
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, DataWarningFlag:Z

    .line 1022
    const-string v4, "android.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1030
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_da
    :goto_da
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_36

    .line 1031
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_36

    .line 1024
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_f8
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-nez v4, :cond_da

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_da

    move-object/from16 v0, p0

    iget-boolean v4, v0, DataWarningFlag:Z

    if-eqz v4, :cond_da

    .line 1025
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, DataWarningFlag:Z

    .line 1026
    const-string v4, "android.intent.action.ACTION_DATA_WARNING_CANCEL"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_da

    .line 1042
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v11    # "cscValues":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .end local v20    # "totalBytes":J
    :cond_129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1044
    .local v16, "identity":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, mRestrictBackground:Z

    if-eqz v4, :cond_13a

    .line 1045
    const-string v4, "NetworkPolicy:allowBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 1047
    :cond_13a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_143
    if-ltz v14, :cond_161

    .line 1052
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1053
    .local v19, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15e

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, cancelNotification(Ljava/lang/String;)V

    .line 1051
    :cond_15e
    add-int/lit8 v14, v14, -0x1

    goto :goto_143

    .line 1057
    .end local v19    # "tag":Ljava/lang/String;
    :cond_161
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .registers 10

    .prologue
    .line 537
    :try_start_0
    iget-object v7, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 538
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 539
    iget-object v7, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 542
    :cond_12
    iget-object v7, p0, mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v7}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v6

    .line 543
    .local v6, "whitelist":[I
    if-eqz v6, :cond_2b

    .line 544
    move-object v1, v6

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1d
    if-ge v3, v4, :cond_2b

    aget v5, v1, v3

    .line 545
    .local v5, "uid":I
    iget-object v7, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_2a

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 548
    .end local v0    # "N":I
    .end local v1    # "arr$":[I
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "uid":I
    .end local v6    # "whitelist":[I
    :catch_2a
    move-exception v7

    .line 550
    :cond_2b
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .registers 8

    .prologue
    .line 516
    :try_start_0
    iget-object v5, p0, mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v4

    .line 517
    .local v4, "whitelist":[I
    iget-object v5, p0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 518
    if-eqz v4, :cond_1d

    .line 519
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-ge v1, v2, :cond_1d

    aget v3, v0, v1

    .line 520
    .local v3, "uid":I
    iget-object v5, p0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 523
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    :cond_1d
    iget-object v5, p0, mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v4

    .line 524
    iget-object v5, p0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 525
    if-eqz v4, :cond_3b

    .line 526
    move-object v0, v4

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2d
    if-ge v1, v2, :cond_3b

    aget v3, v0, v1

    .line 527
    .restart local v3    # "uid":I
    iget-object v5, p0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_3a

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 530
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_3a
    move-exception v5

    .line 532
    :cond_3b
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    .line 3336
    invoke-static {p1}, isUidValidForRules(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3346
    :goto_7
    return-void

    .line 3338
    :cond_8
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3339
    .local v0, "appId":I
    iget-object v1, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-direct {p0, p1}, isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3340
    invoke-direct {p0, v2, p1, v2}, setUidFirewallRule(III)V

    .line 3345
    :goto_1d
    invoke-virtual {p0, p1}, updateRulesForUidLocked(I)V

    goto :goto_7

    .line 3342
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, setUidFirewallRule(III)V

    goto :goto_1d
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 3303
    iget-boolean v1, p0, mDeviceIdleMode:Z

    if-eqz v1, :cond_28

    .line 3304
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3305
    .local v0, "appId":I
    iget-object v1, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, isProcStateAllowedWhileIdle(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3307
    :cond_25
    invoke-direct {p0, v2, p1, v2}, setUidFirewallRule(III)V

    .line 3313
    .end local v0    # "appId":I
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, updateRulesForUidLocked(I)V

    .line 3314
    return-void

    .line 3309
    .restart local v0    # "appId":I
    :cond_2c
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, setUidFirewallRule(III)V

    goto :goto_28
.end method

.method updateRulesForAppIdleLocked()V
    .registers 14

    .prologue
    const/4 v12, 0x2

    .line 3317
    iget-object v6, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 3318
    .local v6, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 3321
    iget-object v9, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 3322
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "ui":I
    :goto_12
    if-ltz v4, :cond_3f

    .line 3323
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3324
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v9, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v2

    .line 3325
    .local v2, "idleUids":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_25
    if-ge v1, v3, :cond_3c

    aget v5, v0, v1

    .line 3326
    .local v5, "uid":I
    iget-object v9, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_39

    .line 3327
    invoke-virtual {v6, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 3325
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 3322
    .end local v5    # "uid":I
    :cond_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 3332
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "idleUids":[I
    .end local v3    # "len$":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_3f
    invoke-direct {p0, v12, v6}, setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 3333
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .registers 3

    .prologue
    .line 3349
    iget-object v1, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x1

    .line 3350
    .local v0, "enableChain":Z
    :goto_9
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, enableFirewallChainLocked(IZ)V

    .line 3351
    iget-object v1, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V

    .line 3352
    return-void

    .line 3349
    .end local v0    # "enableChain":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method updateRulesForDeviceIdleLocked()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 3276
    iget-boolean v7, p0, mDeviceIdleMode:Z

    if-eqz v7, :cond_63

    .line 3279
    iget-object v4, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 3280
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 3281
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 3282
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3283
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_44

    .line 3284
    iget-object v7, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3285
    iget-object v7, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3286
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3287
    .local v3, "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3283
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 3290
    :cond_44
    iget-object v7, p0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_4c
    if-ltz v1, :cond_14

    .line 3291
    iget-object v7, p0, mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3292
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3293
    .restart local v3    # "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3290
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    .line 3296
    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_60
    invoke-direct {p0, v8, v4}, setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 3299
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_63
    iget-boolean v7, p0, mDeviceIdleMode:Z

    invoke-direct {p0, v8, v7}, enableFirewallChainLocked(IZ)V

    .line 3300
    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .registers 12
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    .line 3359
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3361
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, updateRulesForDeviceIdleLocked()V

    .line 3362
    invoke-virtual {p0}, updateRulesForAppIdleLocked()V

    .line 3365
    iget-object v8, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 3366
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v8, 0x2200

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3369
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3370
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3371
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 3372
    .local v5, "uid":I
    invoke-virtual {p0, v5}, updateRulesForUidLocked(I)V

    goto :goto_2c

    .line 3377
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_44
    const/16 v8, 0x3f5

    invoke-virtual {p0, v8}, updateRulesForUidLocked(I)V

    .line 3378
    const/16 v8, 0x3fb

    invoke-virtual {p0, v8}, updateRulesForUidLocked(I)V

    .line 3381
    if-eqz p1, :cond_56

    .line 3382
    invoke-direct {p0}, normalizePoliciesLocked()V

    .line 3383
    invoke-virtual {p0}, updateNetworkRulesLocked()V

    .line 3385
    :cond_56
    return-void
.end method

.method updateRulesForTempWhitelistChangeLocked()V
    .registers 8

    .prologue
    .line 3388
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 3389
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3390
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1e
    if-ltz v1, :cond_a

    .line 3391
    iget-object v6, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3392
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3393
    .local v3, "uid":I
    invoke-virtual {p0, v3}, updateRuleForAppIdleLocked(I)V

    .line 3394
    invoke-virtual {p0, v3}, updateRuleForDeviceIdleLocked(I)V

    .line 3390
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 3397
    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_35
    return-void
.end method

.method updateRulesForUidLocked(I)V
    .registers 14
    .param p1, "uid"    # I

    .prologue
    .line 3432
    invoke-static {p1}, isUidValidForRules(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3536
    :cond_6
    :goto_6
    return-void

    .line 3436
    :cond_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3438
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_b
    const-string v10, "android.permission.INTERNET"

    invoke-interface {v2, v10, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_116

    move-result v10

    if-nez v10, :cond_6

    .line 3445
    :goto_13
    iget-object v10, p0, mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 3448
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, getUidAllowedForData(I)I

    move-result v5

    .line 3452
    .local v5, "uidAllowedForData":I
    invoke-virtual {p0, p1}, isUidForegroundLocked(I)Z

    move-result v6

    .line 3453
    .local v6, "uidForeground":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3454
    .local v1, "cscValues":Ljava/lang/String;
    if-eqz v1, :cond_54

    const-string/jumbo v10, "trafficmanager"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_54

    .line 3456
    :try_start_37
    iget-object v10, p0, mConnManager:Landroid/net/IConnectivityManager;

    if-eqz v10, :cond_54

    iget-object v10, p0, mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    if-eqz v10, :cond_54

    .line 3457
    iget-object v10, p0, mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_be

    .line 3458
    invoke-virtual {p0, p1}, getFirewallRuleWifi(I)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_53} :catch_113

    move-result v6

    .line 3467
    :cond_54
    :goto_54
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3468
    .local v0, "appId":I
    const/4 v8, 0x0

    .line 3469
    .local v8, "uidRules":I
    if-nez v6, :cond_db

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_db

    .line 3471
    const/4 v8, 0x1

    .line 3490
    :cond_60
    :goto_60
    iget-object v10, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_74

    iget-object v10, p0, mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_74

    .line 3492
    const/4 v8, 0x2

    .line 3496
    :cond_74
    iget-object v10, p0, mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_88

    iget-object v10, p0, mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_88

    .line 3498
    const/4 v8, 0x2

    .line 3502
    :cond_88
    if-nez v6, :cond_8f

    iget-boolean v10, p0, mLimitBackground:Z

    if-eqz v10, :cond_8f

    .line 3504
    const/4 v8, 0x1

    .line 3506
    :cond_8f
    if-nez v6, :cond_94

    .line 3507
    if-nez v5, :cond_106

    .line 3508
    const/4 v8, 0x0

    .line 3515
    :cond_94
    :goto_94
    iget-object v10, p0, mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 3516
    .local v3, "oldRules":I
    if-nez v8, :cond_10b

    .line 3517
    iget-object v10, p0, mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3522
    :goto_a1
    const/4 v10, 0x1

    if-ne v8, v10, :cond_111

    const/4 v4, 0x1

    .line 3523
    .local v4, "rejectMetered":Z
    :goto_a5
    invoke-direct {p0, p1, v4}, setUidNetworkRules(IZ)V

    .line 3526
    if-eq v3, v8, :cond_b4

    .line 3527
    iget-object v10, p0, mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 3532
    :cond_b4
    :try_start_b4
    iget-object v10, p0, mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v10, p1, v6}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_b9} :catch_bb

    goto/16 :goto_6

    .line 3533
    :catch_bb
    move-exception v10

    goto/16 :goto_6

    .line 3459
    .end local v0    # "appId":I
    .end local v3    # "oldRules":I
    .end local v4    # "rejectMetered":Z
    .end local v8    # "uidRules":I
    :cond_be
    :try_start_be
    iget-object v10, p0, mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-nez v10, :cond_54

    .line 3460
    invoke-virtual {p0, p1}, getFirewallRuleMobileData(I)Z

    move-result v10

    if-eqz v10, :cond_d9

    invoke-virtual {p0, p1}, isUidForegroundLocked(I)Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d3} :catch_113

    move-result v10

    if-eqz v10, :cond_d9

    const/4 v6, 0x1

    :goto_d7
    goto/16 :goto_54

    :cond_d9
    const/4 v6, 0x0

    goto :goto_d7

    .line 3472
    .restart local v0    # "appId":I
    .restart local v8    # "uidRules":I
    :cond_db
    iget-boolean v10, p0, mRestrictBackground:Z

    if-eqz v10, :cond_e4

    .line 3473
    if-nez v6, :cond_60

    .line 3475
    const/4 v8, 0x1

    goto/16 :goto_60

    .line 3477
    :cond_e4
    iget-boolean v10, p0, mRestrictPower:Z

    if-eqz v10, :cond_60

    .line 3478
    iget-object v10, p0, mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_f8

    iget-object v10, p0, mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_104

    :cond_f8
    const/4 v9, 0x1

    .line 3480
    .local v9, "whitelisted":Z
    :goto_f9
    if-nez v9, :cond_60

    if-nez v6, :cond_60

    and-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_60

    .line 3485
    const/4 v8, 0x1

    goto/16 :goto_60

    .line 3478
    .end local v9    # "whitelisted":Z
    :cond_104
    const/4 v9, 0x0

    goto :goto_f9

    .line 3509
    :cond_106
    const/4 v10, 0x1

    if-ne v5, v10, :cond_94

    .line 3510
    const/4 v8, 0x1

    goto :goto_94

    .line 3519
    .restart local v3    # "oldRules":I
    :cond_10b
    iget-object v10, p0, mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_a1

    .line 3522
    :cond_111
    const/4 v4, 0x0

    goto :goto_a5

    .line 3463
    .end local v0    # "appId":I
    .end local v3    # "oldRules":I
    .end local v8    # "uidRules":I
    :catch_113
    move-exception v10

    goto/16 :goto_54

    .line 3442
    .end local v1    # "cscValues":Ljava/lang/String;
    .end local v5    # "uidAllowedForData":I
    .end local v6    # "uidForeground":Z
    .end local v7    # "uidPolicy":I
    :catch_116
    move-exception v10

    goto/16 :goto_13
.end method

.method updateRulesForUidStateChangeLocked(III)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3201
    if-gt p2, v4, :cond_18

    move v2, v1

    .line 3202
    .local v2, "oldForeground":Z
    :goto_6
    if-gt p3, v4, :cond_1a

    .line 3205
    .local v1, "newForeground":Z
    :goto_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3209
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eq v2, v1, :cond_17

    .line 3210
    invoke-virtual {p0, p1}, updateRulesForUidLocked(I)V

    .line 3222
    :cond_17
    return-void

    .end local v0    # "configNetworkTypeCapability":Ljava/lang/String;
    .end local v1    # "newForeground":Z
    .end local v2    # "oldForeground":Z
    :cond_18
    move v2, v3

    .line 3201
    goto :goto_6

    .restart local v2    # "oldForeground":Z
    :cond_1a
    move v1, v3

    .line 3202
    goto :goto_8
.end method

.method updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V
    .registers 4
    .param p1, "uids"    # Landroid/util/SparseIntArray;

    .prologue
    .line 3422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 3423
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, updateRulesForUidLocked(I)V

    .line 3422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3425
    :cond_11
    return-void
.end method

.method updateUidStateLocked(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 3173
    iget-object v1, p0, mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3174
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_23

    .line 3176
    iget-object v1, p0, mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3177
    invoke-virtual {p0, p1, v0, p2}, updateRulesForUidStateChangeLocked(III)V

    .line 3178
    iget-boolean v1, p0, mDeviceIdleMode:Z

    if-eqz v1, :cond_23

    invoke-static {v0}, isProcStateAllowedWhileIdle(I)Z

    move-result v1

    invoke-static {p2}, isProcStateAllowedWhileIdle(I)Z

    move-result v2

    if-eq v1, v2, :cond_23

    .line 3180
    invoke-virtual {p0, p1}, updateRuleForDeviceIdleLocked(I)V

    .line 3183
    :cond_23
    return-void
.end method

.method writePolicyLocked()V
    .registers 13

    .prologue
    .line 2015
    const/4 v1, 0x0

    .line 2017
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v9, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2019
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2020
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2021
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2023
    const/4 v9, 0x0

    const-string/jumbo v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    const-string/jumbo v9, "version"

    const/16 v10, 0xa

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2025
    const-string/jumbo v9, "restrictBackground"

    iget-boolean v10, p0, mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2028
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    iget-object v9, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v2, v9, :cond_bf

    .line 2029
    iget-object v9, p0, mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 2030
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2032
    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string/jumbo v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2033
    const-string/jumbo v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2034
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 2035
    .local v6, "subscriberId":Ljava/lang/String;
    if-eqz v6, :cond_66

    .line 2036
    const/4 v9, 0x0

    const-string/jumbo v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2038
    :cond_66
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 2039
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_73

    .line 2040
    const/4 v9, 0x0

    const-string/jumbo v10, "networkId"

    invoke-interface {v4, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2042
    :cond_73
    const-string/jumbo v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2043
    const/4 v9, 0x0

    const-string/jumbo v10, "cycleTimezone"

    iget-object v11, v5, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2044
    const-string/jumbo v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2045
    const-string/jumbo v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2046
    const-string/jumbo v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2047
    const-string/jumbo v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2048
    const-string/jumbo v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2049
    const-string/jumbo v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2050
    const/4 v9, 0x0

    const-string/jumbo v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2028
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_36

    .line 2054
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "subscriberId":Ljava/lang/String;
    .end local v7    # "template":Landroid/net/NetworkTemplate;
    :cond_bf
    const/4 v2, 0x0

    :goto_c0
    iget-object v9, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_fd

    .line 2055
    iget-object v9, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2056
    .local v8, "uid":I
    iget-object v9, p0, mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2059
    .local v5, "policy":I
    if-nez v5, :cond_d9

    .line 2054
    :goto_d6
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 2061
    :cond_d9
    const/4 v9, 0x0

    const-string/jumbo v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2062
    const-string/jumbo v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2063
    const-string/jumbo v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2064
    const/4 v9, 0x0

    const-string/jumbo v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f3} :catch_f4

    goto :goto_d6

    .line 2099
    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :catch_f4
    move-exception v0

    .line 2100
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_fc

    .line 2101
    iget-object v9, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2104
    .end local v0    # "e":Ljava/io/IOException;
    :cond_fc
    :goto_fc
    return-void

    .line 2068
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_fd
    const/4 v2, 0x0

    :goto_fe
    :try_start_fe
    iget-object v9, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_132

    .line 2069
    iget-object v9, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2070
    .restart local v8    # "uid":I
    iget-object v9, p0, mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2073
    .restart local v5    # "policy":I
    if-nez v5, :cond_117

    .line 2068
    :goto_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    .line 2075
    :cond_117
    const/4 v9, 0x0

    const-string/jumbo v10, "uid-roaming-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2076
    const-string/jumbo v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2077
    const-string/jumbo v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2078
    const/4 v9, 0x0

    const-string/jumbo v10, "uid-roaming-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_114

    .line 2082
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :cond_132
    const/4 v2, 0x0

    :goto_133
    iget-object v9, p0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_167

    .line 2083
    iget-object v9, p0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2084
    .restart local v8    # "uid":I
    iget-object v9, p0, mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2087
    .restart local v5    # "policy":I
    if-nez v5, :cond_14c

    .line 2082
    :goto_149
    add-int/lit8 v2, v2, 0x1

    goto :goto_133

    .line 2089
    :cond_14c
    const/4 v9, 0x0

    const-string/jumbo v10, "firewall-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2090
    const-string/jumbo v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2091
    const-string/jumbo v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2092
    const/4 v9, 0x0

    const-string/jumbo v10, "firewall-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_149

    .line 2095
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :cond_167
    const/4 v9, 0x0

    const-string/jumbo v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2096
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2098
    iget-object v9, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_176} :catch_f4

    goto :goto_fc
.end method
