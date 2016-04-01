.class public Lcom/android/server/LpnetManagerService;
.super Landroid/os/ILpnetManager$Stub;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$IniFile;,
        Lcom/android/server/LpnetManagerService$DBManager;,
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "ACTION_TRIGGER_IDLE"

.field private static final ACTION_TRIGGER_UNUSED_APP_LRU:Ljava/lang/String; = "ACTION_TRIGGER_UNUSED_APP_LRU "

.field private static final APP_FREEZER_LOG:Z

.field private static final AUTO_FREEZE_ENABLED:Ljava/lang/String; = "autoFreezeEnabled"

.field private static final AUTO_FREEZE_UNUSED_APPS_TIME_LIMIT:Ljava/lang/String; = "autoFreezeUnusedAppTime"

.field private static final AUTO_FREEZE_WITH_OWN_LRU:Ljava/lang/String; = "autoFreezeWithOwnLRU"

.field public static AppStartRestrictionInScreenOn:Z = false

.field private static final BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final COLUMN_NAME_EXTRAS_0:Ljava/lang/String; = "extras_0"

.field private static final COLUMN_NAME_EXTRAS_1:Ljava/lang/String; = "extras_1"

.field private static final COLUMN_NAME_EXTRAS_2:Ljava/lang/String; = "extras_2"

.field private static final COLUMN_NAME_EXTRAS_3:Ljava/lang/String; = "extras_3"

.field private static final COLUMN_NAME_EXTRAS_4:Ljava/lang/String; = "extras_4"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/misc/lpnet/lpnetConfig"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "APPFREEZER_INIT"

.field private static final DISABLE_LRU:Ljava/lang/String; = "disableLRU"

.field private static final ENABLE_APPSTART_RESTRICT_IN_SCREEN_ON:Ljava/lang/String; = "enableAppStartRestrictScreenOn"

.field private static final ENABLE_FREEZE_BOOT_COMPLETED:Ljava/lang/String; = "enableFreezeBootCompleted"

.field private static final ENABLE_IMPORTANCE_CHECK:Ljava/lang/String; = "enableImportanceCheck"

.field private static final ENABLE_IMPORTANCE_FGONLY:Ljava/lang/String; = "enableImportanceFGOnly"

.field private static final ENABLE_SOLUTION:Ljava/lang/String; = "enableSolution"

.field private static final ENABLE_TIME_SHIFT:Ljava/lang/String; = "enableTimeShift"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final FEATURE_ENABLE_APPFREEZER:Z = false

.field public static FEATURE_ENABLE_LPC:Z = false

.field public static final FEATURE_ENABLE_UNUSED_APP_LOCKING:Z = true

.field private static final FREEZE_IMMEDIATE:Ljava/lang/String; = "freezeImmediate"

.field private static final INACTIVITY_REPEAT_TIME:Ljava/lang/String; = "inActivityRepeatTime"

.field private static final INCLUDE_INSTALLED_TIME_FOR_LRU:Ljava/lang/String; = "includeInstalledTimeForLRU"

.field private static final INCLUDE_SYS_APP_FOR_LRU:Ljava/lang/String; = "includeSysAppForLru"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final LAST_USED:Ljava/lang/String; = "LAST_USED"

.field private static final LAST_USED_COLLECTION_INTERVAL:Ljava/lang/String; = "usageCollectionInterval"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final LRU_BOOT_ACTION:J = 0x1b7740L

.field private static final LRU_CHECK_INTERVAL:Ljava/lang/String; = "lruCheckInterval"

.field private static final NETWORK_STAT:Ljava/lang/String; = "NETWORK_STAT"

.field private static final NETWORK_STAT_LRU:Ljava/lang/String; = "NETWORK_STAT_LRU"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final SCREEN_OFF_ACTION_TIME:Ljava/lang/String; = "screenOffActionTime"

.field private static final SM_APP_LOCK:Ljava/lang/String; = "com.samsung.android.sm.ACTION_APP_LOCKING_CONTROL"

.field private static final TAG:Ljava/lang/String; = "LpnetManagerService"

.field private static final TOUCHWIZHOME_INTERACTION_ENABLED:Z = false

.field private static final TRAFFIC_STAT_COLLECTOR:I = 0x7d0

.field private static final UNUSED_APPS_PERIOD_FOR_LRU_DB_DUMP:Ljava/lang/String; = "unusedPeriod"

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"

.field private static final WHITELIST:Z = true

.field private static final WHITELIST_ALL:Ljava/lang/String; = "whitelistAll"

.field private static final WHITELIST_ALL_GCM:Ljava/lang/String; = "whitelistAllGCM"

.field private static globalCurr:J

.field private static final isChinaNal:Ljava/lang/String;

.field static sLastModifiedTime:J

.field static final sSmartManagerDbFile:Ljava/io/File;

.field private static timeShift:J


# instance fields
.field private final SMART_MGR_URI:Landroid/net/Uri;

.field private final SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

.field private allowedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Landroid/content/IntentFilter;

.field private filterUDS:Landroid/content/IntentFilter;

.field private lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAlarm:Landroid/app/AlarmManager;

.field public mAppLockEnabled:Z

.field private mAutoFreezeEnabled:Z

.field private mAutoRunBasedFreeze:Z

.field private mBlackListedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

.field public volatile mDataConnectionIsConnected:Z

.field public volatile mDataConnectivityAtScreenOff:Z

.field private mDefaultPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableLRU:Z

.field private mEnableAppStartRestrictionInScreenOn:Z

.field private mEnableImportanceCheck:Z

.field private mEnableImportanceFGOnly:Z

.field private mEnableTimeShift:Z

.field private mFreezeImmediate:Z

.field private mFreezeWithOwnLRU:Z

.field private volatile mGCMMessageReceivedTime:J

.field private final mIdleTrafficMapLock:Ljava/lang/Object;

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field private mInactivityRepeatTime:J

.field private mIncludeInstalledTimeForLRU:Z

.field private mIncludeSystemAppsForLRU:Z

.field private mIntLruCheckInterval:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverUDS:Landroid/content/BroadcastReceiver;

.field private mIntentRecvForPM:Landroid/content/BroadcastReceiver;

.field private mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

.field private mLRUIntent:Landroid/app/PendingIntent;

.field private final mLRUTrafficMapLock:Ljava/lang/Object;

.field private mLastUsedTimeCollectionInterval:J

.field private mLastUsedTriggerIntent:Landroid/app/PendingIntent;

.field private mLruMissedImmediateFreezeTime:J

.field private volatile mMissedLRUFiring:Z

.field private mNetworkStatIntent:Landroid/app/PendingIntent;

.field private mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

.field private mNotForceStoppedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgLock:Ljava/lang/Object;

.field private mPreviousLRUfreezedTime:J

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mSMPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSPCMPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffActionTime:J

.field private volatile mScreenOn:Z

.field private mSmartManagerObserver:Landroid/database/ContentObserver;

.field private mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

.field private mSolnEnabled:Z

.field private mTargetPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPkgLock:Ljava/lang/Object;

.field private mTrafficStatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_RX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_TX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUnusedAutoFreezeTime:J

.field private mUnusedPeriod:I

.field private mUserFSPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListAll:Z

.field private mWhiteListGCM:Z

.field private final nHandler:Landroid/os/Handler;

.field private networkFilter:Landroid/content/IntentFilter;

.field private pkgFilter:Landroid/content/IntentFilter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, APP_FREEZER_LOG:Z

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, AppStartRestrictionInScreenOn:Z

    .line 265
    sput-wide v2, globalCurr:J

    .line 266
    sput-wide v2, timeShift:J

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, FEATURE_ENABLE_LPC:Z

    .line 277
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, isChinaNal:Ljava/lang/String;

    .line 1318
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.samsung.android.sm.provider/databases/sm.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, sSmartManagerDbFile:Ljava/io/File;

    .line 1321
    sput-wide v2, sLastModifiedTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Landroid/os/ILpnetManager$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mTargetPackages:Ljava/util/HashSet;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mDefaultPackages:Ljava/util/HashSet;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mSMPackages:Ljava/util/HashSet;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mUserFSPackages:Ljava/util/HashSet;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mBlackListedPackages:Ljava/util/HashSet;

    .line 122
    iput-object v4, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mVersionDB:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLRUTrafficMapLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mTargetPkgLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mPkgLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mIdleTrafficMapLock:Ljava/lang/Object;

    .line 144
    iput-boolean v3, p0, mSolnEnabled:Z

    .line 146
    iput-boolean v2, p0, mWhiteListAll:Z

    .line 148
    iput-boolean v2, p0, mWhiteListGCM:Z

    .line 149
    iput-boolean v2, p0, mFreezeImmediate:Z

    .line 150
    iput-boolean v2, p0, mIncludeSystemAppsForLRU:Z

    .line 151
    iput-boolean v2, p0, mDisableLRU:Z

    .line 152
    iput-boolean v2, p0, mEnableTimeShift:Z

    .line 153
    iput-boolean v2, p0, mEnableImportanceCheck:Z

    .line 154
    iput-boolean v2, p0, mEnableImportanceFGOnly:Z

    .line 155
    iput-boolean v2, p0, mEnableAppStartRestrictionInScreenOn:Z

    .line 156
    iput-boolean v2, p0, mAutoRunBasedFreeze:Z

    .line 157
    iput-boolean v3, p0, mIncludeInstalledTimeForLRU:Z

    .line 159
    iput-boolean v2, p0, mAutoFreezeEnabled:Z

    .line 161
    iput-boolean v3, p0, mFreezeWithOwnLRU:Z

    .line 163
    iput-boolean v3, p0, mMissedLRUFiring:Z

    .line 164
    iput-wide v6, p0, mGCMMessageReceivedTime:J

    .line 165
    iput-boolean v2, p0, mScreenOn:Z

    .line 166
    iput-boolean v2, p0, mDataConnectionIsConnected:Z

    .line 167
    iput-boolean v2, p0, mDataConnectivityAtScreenOff:Z

    .line 168
    iput-boolean v3, p0, mAppLockEnabled:Z

    .line 172
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, mUnusedAutoFreezeTime:J

    .line 175
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, mScreenOffActionTime:J

    .line 179
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, mInactivityRepeatTime:J

    .line 182
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, mIntLruCheckInterval:J

    .line 185
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, mLruMissedImmediateFreezeTime:J

    .line 187
    iput v2, p0, mUnusedPeriod:I

    .line 189
    iput-wide v6, p0, mPreviousLRUfreezedTime:J

    .line 191
    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, mLastUsedTimeCollectionInterval:J

    .line 194
    iput-object v4, p0, lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    .line 198
    iput-object v4, p0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, allowedPackages:Ljava/util/ArrayList;

    .line 261
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, SMART_MGR_URI:Landroid/net/Uri;

    .line 262
    const-string v0, "content://com.samsung.android.sm/AppFreezerWhiteList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    .line 263
    iput-object v4, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    .line 679
    new-instance v0, Lcom/android/server/LpnetManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$1;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v0, Lcom/android/server/LpnetManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$2;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    .line 813
    new-instance v0, Lcom/android/server/LpnetManagerService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$3;-><init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, mSmartManagerObserver:Landroid/database/ContentObserver;

    .line 821
    new-instance v0, Lcom/android/server/LpnetManagerService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$4;-><init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    .line 830
    new-instance v0, Lcom/android/server/LpnetManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$5;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, mIntentReceiverUDS:Landroid/content/BroadcastReceiver;

    .line 860
    new-instance v0, Lcom/android/server/LpnetManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$6;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, pm:Landroid/content/pm/PackageManager;

    .line 282
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, mActivityManager:Landroid/app/IActivityManager;

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, nHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 98
    sget-boolean v0, APP_FREEZER_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/LpnetManagerService;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mDefaultPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, isPackageVersionMatching(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, isC2DMPermAvl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, nHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mNetworkStatIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mAutoRunBasedFreeze:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mLRUIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mScreenOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-wide v0, p0, mScreenOffActionTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/LpnetManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, mScreenOn:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/LpnetManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, screenOffAction(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mAutoFreezeEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mMissedLRUFiring:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/LpnetManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, mMissedLRUFiring:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mLRUTrafficMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mFreezeWithOwnLRU:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-wide v0, p0, mLruMissedImmediateFreezeTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, setAlarm(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mTargetPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-wide v0, p0, mPreviousLRUfreezedTime:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-wide v0, p0, mUnusedAutoFreezeTime:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-wide v0, p0, mInactivityRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mIdleTrafficMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mTrafficStatMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/LpnetManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, isAutoRunBlockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/LpnetManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    invoke-direct {p0}, idleAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mTargetPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mDisableLRU:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/LpnetManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-wide v0, p0, mLastUsedTimeCollectionInterval:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/LpnetManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    invoke-direct {p0}, getWhiteListDBValues()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, getDBValues(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, targetPkgInitialization(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, SMART_MGR_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mSmartManagerObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mUserFSPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/LpnetManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-boolean v0, p0, mEnableTimeShift:Z

    return v0
.end method

.method static synthetic access$5100()J
    .registers 2

    .prologue
    .line 98
    sget-wide v0, globalCurr:J

    return-wide v0
.end method

.method static synthetic access$5102(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 98
    sput-wide p0, globalCurr:J

    return-wide p0
.end method

.method static synthetic access$5200(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, freezeBasedOnLRU(Z)V

    return-void
.end method

.method static synthetic access$5300()J
    .registers 2

    .prologue
    .line 98
    sget-wide v0, timeShift:J

    return-wide v0
.end method

.method static synthetic access$5302(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 98
    sput-wide p0, timeShift:J

    return-wide p0
.end method

.method static synthetic access$5400(Lcom/android/server/LpnetManagerService;I)Ljava/util/Map;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, getLRU(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/LpnetManagerService;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 98
    invoke-direct {p0, p1}, updateDBForLRU(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, freezerActionNotificationBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LpnetManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, updateDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, unFreeze(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/LpnetManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, enableDisableSoln(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    .line 98
    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method private enableDisableSoln(Z)V
    .registers 12
    .param p1, "pEnableSolution"    # Z

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    .line 1713
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_2e

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableDisableSoln called pEnableSolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSolnEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mSolnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1717
    .local v6, "identity":J
    iget-boolean v0, p0, mSolnEnabled:Z

    if-ne v0, p1, :cond_67

    .line 1719
    if-eqz p1, :cond_5d

    .line 1720
    invoke-direct {p0}, initializeFromConfigFile()V

    .line 1726
    invoke-direct {p0}, getWhiteListDBValues()V

    .line 1727
    invoke-direct {p0, v3}, getDBValues(Z)V

    .line 1730
    iput-boolean p1, p0, mSolnEnabled:Z

    .line 1731
    invoke-direct {p0, v3}, targetPkgInitialization(Z)V

    .line 1732
    iget-boolean v0, p0, mAutoFreezeEnabled:Z

    if-eqz v0, :cond_5d

    .line 1733
    iget-boolean v0, p0, mFreezeWithOwnLRU:Z

    if-eqz v0, :cond_5e

    iget-wide v0, p0, mIntLruCheckInterval:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_5e

    .line 1734
    const-string v1, "NETWORK_STAT_LRU"

    iget-wide v2, p0, mIntLruCheckInterval:J

    sub-long/2addr v2, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setAlarm(Ljava/lang/String;JJ)V

    .line 1813
    :cond_5d
    :goto_5d
    return-void

    .line 1736
    :cond_5e
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-wide v2, p0, mIntLruCheckInterval:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setAlarm(Ljava/lang/String;JJ)V

    goto :goto_5d

    .line 1741
    :cond_67
    iput-boolean p1, p0, mSolnEnabled:Z

    .line 1742
    iget-object v1, p0, mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1743
    :try_start_6c
    iget-object v0, p0, mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1744
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_ce

    .line 1745
    iget-object v1, p0, mLRUTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1746
    :try_start_75
    iget-boolean v0, p0, mAutoFreezeEnabled:Z

    if-eqz v0, :cond_83

    .line 1747
    iget-object v0, p0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1748
    iget-object v0, p0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1750
    :cond_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_d1

    .line 1752
    iget-boolean v0, p0, mSolnEnabled:Z

    if-eqz v0, :cond_dd

    .line 1753
    invoke-direct {p0}, initializeFromConfigFile()V

    .line 1754
    invoke-direct {p0}, getWhiteListDBValues()V

    .line 1755
    invoke-direct {p0, v3}, getDBValues(Z)V

    .line 1758
    iput-boolean p1, p0, mSolnEnabled:Z

    .line 1763
    invoke-direct {p0, v3}, targetPkgInitialization(Z)V

    .line 1767
    invoke-direct {p0}, intentReceiverInitialization()V

    .line 1768
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_URI:Landroid/net/Uri;

    iget-object v2, p0, mSmartManagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1769
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    iget-object v2, p0, mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1770
    iget-boolean v0, p0, mAutoFreezeEnabled:Z

    if-eqz v0, :cond_ca

    .line 1771
    iget-boolean v0, p0, mFreezeWithOwnLRU:Z

    if-eqz v0, :cond_d4

    iget-wide v0, p0, mIntLruCheckInterval:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_d4

    .line 1772
    const-string v1, "NETWORK_STAT_LRU"

    iget-wide v2, p0, mIntLruCheckInterval:J

    sub-long/2addr v2, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setAlarm(Ljava/lang/String;JJ)V

    .line 1811
    :cond_ca
    :goto_ca
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5d

    .line 1744
    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v0

    .line 1750
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    .line 1774
    :cond_d4
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-wide v2, p0, mIntLruCheckInterval:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setAlarm(Ljava/lang/String;JJ)V

    goto :goto_ca

    .line 1786
    :cond_dd
    iget-object v0, p0, mNetworkStatIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_e8

    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, mNetworkStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1787
    :cond_e8
    iget-object v0, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_f3

    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1788
    :cond_f3
    iget-object v0, p0, mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_fe

    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1789
    :cond_fe
    iget-boolean v0, p0, mAutoFreezeEnabled:Z

    if-eqz v0, :cond_118

    .line 1790
    iget-object v0, p0, mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    if-eqz v0, :cond_10d

    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1791
    :cond_10d
    iget-object v0, p0, mLRUIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_118

    iget-object v0, p0, mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1794
    :cond_118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 1795
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentReceiverUDS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1797
    :cond_131
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1798
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1799
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1800
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mSmartManagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1801
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/16 :goto_ca
.end method

.method private freezeBasedOnLRU(Z)V
    .registers 62
    .param p1, "alarmBasedFreeze"    # Z

    .prologue
    .line 2567
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 2568
    .local v40, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_39

    .line 2570
    :cond_1b
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "freezeBasedOnLRU() return! call state: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :goto_38
    return-void

    .line 2574
    :cond_39
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "freezeBasedOnLRU(): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    move-object/from16 v0, p0

    iget-boolean v4, v0, mFreezeWithOwnLRU:Z

    if-nez v4, :cond_fd

    .line 2578
    :try_start_5a
    const-string v4, "android.os.SmartManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    .line 2580
    .local v48, "smartManagerClass":Ljava/lang/Class;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    .line 2581
    .local v12, "allmethods":[Ljava/lang/reflect/Method;
    move-object v14, v12

    .local v14, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v14

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    move/from16 v28, v27

    .end local v14    # "arr$":[Ljava/lang/reflect/Method;
    .end local v27    # "i$":I
    .end local v35    # "len$":I
    .local v28, "i$":I
    :goto_6c
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_cb

    aget-object v42, v14, v28

    .line 2582
    .local v42, "method":Ljava/lang/reflect/Method;
    if-eqz v42, :cond_c2

    .line 2583
    invoke-virtual/range {v42 .. v42}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getLeastRecentlyUsedAppList"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 2584
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 2585
    .local v44, "obj":Ljava/lang/Object;
    if-eqz v44, :cond_c2

    .line 2586
    check-cast v44, [Ljava/lang/String;

    .end local v44    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v44

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v52, v0

    .line 2587
    .local v52, "theLRUList":[Ljava/lang/String;
    move-object/from16 v15, v52

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v27, 0x0

    .end local v28    # "i$":I
    .restart local v27    # "i$":I
    :goto_ae
    move/from16 v0, v27

    move/from16 v1, v36

    if-ge v0, v1, :cond_c2

    aget-object v53, v15, v27

    .line 2588
    .local v53, "thePackage":Ljava/lang/String;
    if-eqz v53, :cond_bf

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, forceStopPackage(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5a .. :try_end_bf} :catch_c7
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_bf} :catch_f3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_bf} :catch_f8

    .line 2587
    :cond_bf
    add-int/lit8 v27, v27, 0x1

    goto :goto_ae

    .line 2581
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v27    # "i$":I
    .end local v36    # "len$":I
    .end local v52    # "theLRUList":[Ljava/lang/String;
    .end local v53    # "thePackage":Ljava/lang/String;
    :cond_c2
    add-int/lit8 v27, v28, 0x1

    .restart local v27    # "i$":I
    move/from16 v28, v27

    .end local v27    # "i$":I
    .restart local v28    # "i$":I
    goto :goto_6c

    .line 2603
    .end local v12    # "allmethods":[Ljava/lang/reflect/Method;
    .end local v28    # "i$":I
    .end local v42    # "method":Ljava/lang/reflect/Method;
    .end local v48    # "smartManagerClass":Ljava/lang/Class;
    :catch_c7
    move-exception v26

    .line 2604
    .local v26, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 2803
    .end local v26    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_cb
    :goto_cb
    if-eqz p1, :cond_e9

    .line 2804
    move-object/from16 v0, p0

    iget-wide v6, v0, mIntLruCheckInterval:J

    .line 2805
    .local v6, "interval":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, mFreezeWithOwnLRU:Z

    if-eqz v4, :cond_686

    const-wide/16 v4, 0x7d0

    cmp-long v4, v6, v4

    if-lez v4, :cond_686

    .line 2806
    const-string v5, "NETWORK_STAT_LRU"

    const-wide/16 v8, 0x7d0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, setAlarm(Ljava/lang/String;JJ)V

    .line 2811
    .end local v6    # "interval":J
    :cond_e9
    :goto_e9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mPreviousLRUfreezedTime:J

    goto/16 :goto_38

    .line 2605
    :catch_f3
    move-exception v26

    .line 2606
    .local v26, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_cb

    .line 2607
    .end local v26    # "e":Ljava/lang/IllegalAccessException;
    :catch_f8
    move-exception v26

    .line 2608
    .local v26, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_cb

    .line 2611
    .end local v26    # "e":Ljava/lang/ClassNotFoundException;
    :cond_fd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 2613
    .local v22, "currentTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, getUsageStatsList(J)Ljava/util/List;

    move-result-object v49

    .line 2615
    .local v49, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v49, :cond_67c

    .line 2616
    new-instance v55, Ljava/util/HashMap;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashMap;-><init>()V

    .line 2617
    .local v55, "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_114
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_133

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/usage/UsageStats;

    .line 2618
    .local v54, "u":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v54 .. v54}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {v54 .. v54}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v55

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    .line 2624
    .end local v54    # "u":Landroid/app/usage/UsageStats;
    :cond_133
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 2625
    .local v10, "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 2626
    .local v24, "defaultLastUsedTime":I
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 2628
    .local v43, "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_13f
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v47

    .line 2629
    .local v47, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v47, :cond_cb

    .line 2630
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_14c
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_14c} :catch_383

    move-result-object v27

    move/from16 v25, v24

    .end local v24    # "defaultLastUsedTime":I
    .end local v27    # "i$":Ljava/util/Iterator;
    .local v25, "defaultLastUsedTime":I
    :cond_14f
    :goto_14f
    :try_start_14f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f1

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2631
    .local v51, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/16 v16, 0x0

    .line 2632
    .local v16, "chnFreezerPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, mAutoRunBasedFreeze:Z

    if-eqz v4, :cond_2f8

    .line 2633
    move-object/from16 v0, v51

    iget-object v14, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_16c
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_180

    aget-object v45, v14, v28

    .line 2634
    .local v45, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, isAutoRunBlockedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f4

    .line 2635
    move-object/from16 v16, v45

    .line 2639
    .end local v45    # "pkg":Ljava/lang/String;
    :cond_180
    if-eqz v16, :cond_14f

    .line 2650
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    :cond_182
    const/16 v50, 0x0

    .line 2651
    .local v50, "targetPkg":Ljava/lang/String;
    if-eqz v16, :cond_311

    .line 2652
    move-object/from16 v50, v16

    .line 2656
    :goto_188
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ProcessName :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", ImpValue :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", ImpValueReason :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", LRU is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/16 v38, 0x0

    .line 2659
    .local v38, "mFreezeCondition":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, mAutoRunBasedFreeze:Z

    if-eqz v4, :cond_319

    .line 2660
    move-object/from16 v0, v51

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_1e0

    .line 2661
    const/16 v38, 0x1

    .line 2670
    :cond_1e0
    :goto_1e0
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mFreezeCondition:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    if-eqz v38, :cond_3b3

    .line 2672
    move-object/from16 v0, v55

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    .line 2673
    .local v34, "lastUseTimeLong":Ljava/lang/Long;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1, v4}, isActiveTrafficExisting(Ljava/lang/String;Z)Z

    move-result v11

    .line 2675
    .local v11, "activeTraffic":Z
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_23b

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "targetPkg: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", lastUseTimeLong: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_23b
    if-eqz v34, :cond_342

    .line 2677
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 2678
    .local v32, "lastUseTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, mUnusedAutoFreezeTime:J

    sub-long v4, v22, v4

    cmp-long v4, v4, v32

    if-lez v4, :cond_33b

    const/16 v30, 0x1

    .line 2679
    .local v30, "isUnusedAppTimeExpired":Z
    :goto_24d
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_295

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ProcessName :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", ImpValue :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", LRU is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",lastUseTime:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_295
    if-nez p1, :cond_29a

    .line 2682
    const/16 v30, 0x1

    .line 2683
    const/4 v11, 0x0

    .line 2685
    :cond_29a
    const-string v5, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canFreeze:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v11, :cond_33f

    const/4 v4, 0x1

    :goto_2b6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    if-eqz v30, :cond_2ee

    .line 2687
    if-nez v11, :cond_2ee

    move-object/from16 v0, v50

    invoke-interface {v10, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ee

    .line 2688
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LRUBasedMap put targetPkg :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2ee
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_2ee} :catch_531

    :cond_2ee
    move/from16 v24, v25

    .end local v11    # "activeTraffic":Z
    .end local v25    # "defaultLastUsedTime":I
    .end local v30    # "isUnusedAppTimeExpired":Z
    .end local v32    # "lastUseTime":J
    .end local v34    # "lastUseTimeLong":Ljava/lang/Long;
    .restart local v24    # "defaultLastUsedTime":I
    :goto_2f0
    move/from16 v25, v24

    .line 2704
    .end local v24    # "defaultLastUsedTime":I
    .restart local v25    # "defaultLastUsedTime":I
    goto/16 :goto_14f

    .line 2633
    .end local v38    # "mFreezeCondition":Z
    .end local v50    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "arr$":[Ljava/lang/String;
    .restart local v28    # "i$":I
    .restart local v35    # "len$":I
    .restart local v45    # "pkg":Ljava/lang/String;
    :cond_2f4
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_16c

    .line 2642
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    .end local v45    # "pkg":Ljava/lang/String;
    :cond_2f8
    :try_start_2f8
    move-object/from16 v0, p0

    iget-object v4, v0, pm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v51

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 2644
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_307
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f8 .. :try_end_307} :catch_30e
    .catch Landroid/os/RemoteException; {:try_start_2f8 .. :try_end_307} :catch_531

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_182

    goto/16 :goto_14f

    .line 2645
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_30e
    move-exception v26

    .line 2646
    .local v26, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_14f

    .line 2654
    .end local v26    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v50    # "targetPkg":Ljava/lang/String;
    :cond_311
    :try_start_311
    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v50, v0

    goto/16 :goto_188

    .line 2664
    .restart local v38    # "mFreezeCondition":Z
    :cond_319
    move-object/from16 v0, v51

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0xc8

    if-le v4, v5, :cond_1e0

    move-object/from16 v0, v51

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v4, v5, :cond_337

    move-object/from16 v0, v51

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_1e0

    move-object/from16 v0, v51

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1e0

    .line 2667
    :cond_337
    const/16 v38, 0x1

    goto/16 :goto_1e0

    .line 2678
    .restart local v11    # "activeTraffic":Z
    .restart local v32    # "lastUseTime":J
    .restart local v34    # "lastUseTimeLong":Ljava/lang/Long;
    :cond_33b
    const/16 v30, 0x0

    goto/16 :goto_24d

    .line 2685
    .restart local v30    # "isUnusedAppTimeExpired":Z
    :cond_33f
    const/4 v4, 0x0

    goto/16 :goto_2b6

    .line 2693
    .end local v30    # "isUnusedAppTimeExpired":Z
    .end local v32    # "lastUseTime":J
    :cond_342
    if-nez v11, :cond_3ed

    move-object/from16 v0, v50

    invoke-interface {v10, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ed

    .line 2694
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LRUBasedMap put targetPkg :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", defaultLastUsedTime:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    new-instance v4, Ljava/lang/Long;
    :try_end_374
    .catch Landroid/os/RemoteException; {:try_start_311 .. :try_end_374} :catch_531

    add-int/lit8 v24, v25, 0x1

    .end local v25    # "defaultLastUsedTime":I
    .restart local v24    # "defaultLastUsedTime":I
    move/from16 v0, v25

    int-to-long v8, v0

    :try_start_379
    invoke-direct {v4, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v50

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_381
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_381} :catch_383

    goto/16 :goto_2f0

    .line 2795
    .end local v11    # "activeTraffic":Z
    .end local v16    # "chnFreezerPackage":Ljava/lang/String;
    .end local v34    # "lastUseTimeLong":Ljava/lang/Long;
    .end local v38    # "mFreezeCondition":Z
    .end local v47    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v50    # "targetPkg":Ljava/lang/String;
    .end local v51    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_383
    move-exception v26

    .line 2796
    .local v26, "e":Landroid/os/RemoteException;
    :goto_384
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in freezeBasedOnLRU Local Msg is :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-virtual/range {v26 .. v26}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_cb

    .line 2699
    .end local v24    # "defaultLastUsedTime":I
    .end local v26    # "e":Landroid/os/RemoteException;
    .restart local v16    # "chnFreezerPackage":Ljava/lang/String;
    .restart local v25    # "defaultLastUsedTime":I
    .restart local v38    # "mFreezeCondition":Z
    .restart local v47    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v50    # "targetPkg":Ljava/lang/String;
    .restart local v51    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3b3
    :try_start_3b3
    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ed

    .line 2700
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notAllowedPackages add :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    move-object/from16 v0, v43

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3ed
    move/from16 v24, v25

    .end local v25    # "defaultLastUsedTime":I
    .restart local v24    # "defaultLastUsedTime":I
    goto/16 :goto_2f0

    .line 2706
    .end local v16    # "chnFreezerPackage":Ljava/lang/String;
    .end local v24    # "defaultLastUsedTime":I
    .end local v38    # "mFreezeCondition":Z
    .end local v50    # "targetPkg":Ljava/lang/String;
    .end local v51    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v25    # "defaultLastUsedTime":I
    :cond_3f1
    const/16 v17, 0x0

    .line 2707
    .local v17, "count":I
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v41

    .line 2708
    .local v41, "mapSize":I
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LRUBasedMap size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    new-instance v39, Landroid/media/SamsungAudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .line 2712
    .local v39, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/media/AudioManager;

    .line 2715
    .local v37, "mAudioManager":Landroid/media/AudioManager;
    new-instance v29, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2716
    .local v29, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2717
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v46

    .line 2718
    .local v46, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v46

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2719
    .local v18, "currentHomePackage":Ljava/lang/String;
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_46e

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : currentHomePackage"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    :cond_46e
    const/16 v20, 0x0

    .line 2723
    .local v20, "currentIMEpkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "default_input_method"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2724
    .local v19, "currentIME":Ljava/lang/String;
    if-eqz v19, :cond_49a

    .line 2725
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_536

    .line 2726
    const/4 v4, 0x0

    const-string v5, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2731
    :cond_49a
    :goto_49a
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_4c4

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : currentIME, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : currentIMEpkg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c4
    .catch Landroid/os/RemoteException; {:try_start_3b3 .. :try_end_4c4} :catch_531

    .line 2734
    :cond_4c4
    const/16 v21, 0x0

    .line 2736
    .local v21, "currentWallpaperPkg":Ljava/lang/String;
    :try_start_4c6
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v57

    .line 2737
    .local v57, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v57, :cond_4da

    .line 2738
    invoke-virtual/range {v57 .. v57}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v56

    .line 2739
    .local v56, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-eqz v56, :cond_4da

    .line 2740
    invoke-virtual/range {v56 .. v56}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;
    :try_end_4d9
    .catch Ljava/lang/Exception; {:try_start_4c6 .. :try_end_4d9} :catch_53a
    .catch Landroid/os/RemoteException; {:try_start_4c6 .. :try_end_4d9} :catch_531

    move-result-object v21

    .line 2747
    .end local v56    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v57    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_4da
    :goto_4da
    :try_start_4da
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_4f8

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : currentWallpaperPkg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_4f8
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :goto_500
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_691

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 2752
    .restart local v53    # "thePackage":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_547

    .line 2753
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : skip 1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_500

    .line 2795
    .end local v17    # "count":I
    .end local v18    # "currentHomePackage":Ljava/lang/String;
    .end local v19    # "currentIME":Ljava/lang/String;
    .end local v20    # "currentIMEpkg":Ljava/lang/String;
    .end local v21    # "currentWallpaperPkg":Ljava/lang/String;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v37    # "mAudioManager":Landroid/media/AudioManager;
    .end local v39    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .end local v41    # "mapSize":I
    .end local v46    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v53    # "thePackage":Ljava/lang/String;
    :catch_531
    move-exception v26

    move/from16 v24, v25

    .end local v25    # "defaultLastUsedTime":I
    .restart local v24    # "defaultLastUsedTime":I
    goto/16 :goto_384

    .line 2728
    .end local v24    # "defaultLastUsedTime":I
    .restart local v17    # "count":I
    .restart local v18    # "currentHomePackage":Ljava/lang/String;
    .restart local v19    # "currentIME":Ljava/lang/String;
    .restart local v20    # "currentIMEpkg":Ljava/lang/String;
    .restart local v25    # "defaultLastUsedTime":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v37    # "mAudioManager":Landroid/media/AudioManager;
    .restart local v39    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .restart local v41    # "mapSize":I
    .restart local v46    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_536
    move-object/from16 v20, v19

    goto/16 :goto_49a

    .line 2743
    .restart local v21    # "currentWallpaperPkg":Ljava/lang/String;
    :catch_53a
    move-exception v26

    .line 2744
    .local v26, "e":Ljava/lang/Exception;
    const-string v4, "LpnetManagerService"

    const-string/jumbo v5, "wallpaperinfo exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4da

    .line 2756
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v53    # "thePackage":Ljava/lang/String;
    :cond_547
    move-object/from16 v0, v39

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_572

    invoke-virtual/range {v37 .. v37}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_572

    .line 2757
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : skip 2"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_500

    .line 2760
    :cond_572
    if-eqz v18, :cond_59a

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59a

    .line 2761
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : skip 3"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_500

    .line 2764
    :cond_59a
    if-eqz v20, :cond_5c2

    move-object/from16 v0, v20

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c2

    .line 2765
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : skip 4"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_500

    .line 2768
    :cond_5c2
    if-eqz v21, :cond_5ea

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ea

    .line 2769
    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " : skip 5"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_500

    .line 2772
    :cond_5ea
    move-object/from16 v0, p0

    iget-boolean v4, v0, mAutoRunBasedFreeze:Z

    if-nez v4, :cond_673

    .line 2773
    add-int/lit8 v17, v17, 0x1

    .line 2776
    const/4 v4, 0x1

    move/from16 v0, v41

    if-ne v0, v4, :cond_661

    .line 2777
    move-object/from16 v0, v55

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    .line 2778
    .restart local v34    # "lastUseTimeLong":Ljava/lang/Long;
    if-eqz v34, :cond_673

    .line 2779
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 2780
    .restart local v32    # "lastUseTime":J
    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    iget-wide v8, v0, mUnusedAutoFreezeTime:J

    mul-long/2addr v4, v8

    sub-long v4, v22, v4

    cmp-long v4, v4, v32

    if-lez v4, :cond_65e

    const/16 v31, 0x1

    .line 2781
    .local v31, "isUnusedAppTimeExpired2":Z
    :goto_616
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_658

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LastApp:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",lastUseTime "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",currentTime:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", isUnusedAppTimeExpired2:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_658
    if-nez v31, :cond_673

    move/from16 v24, v25

    .line 2784
    .end local v25    # "defaultLastUsedTime":I
    .restart local v24    # "defaultLastUsedTime":I
    goto/16 :goto_cb

    .line 2780
    .end local v24    # "defaultLastUsedTime":I
    .end local v31    # "isUnusedAppTimeExpired2":Z
    .restart local v25    # "defaultLastUsedTime":I
    :cond_65e
    const/16 v31, 0x0

    goto :goto_616

    .line 2789
    .end local v32    # "lastUseTime":J
    .end local v34    # "lastUseTimeLong":Ljava/lang/Long;
    :cond_661
    move/from16 v0, v17

    int-to-double v4, v0

    move/from16 v0, v41

    int-to-double v8, v0

    const-wide/high16 v58, 0x3fe8000000000000L    # 0.75

    mul-double v8, v8, v58

    cmpl-double v4, v4, v8

    if-lez v4, :cond_673

    move/from16 v24, v25

    .end local v25    # "defaultLastUsedTime":I
    .restart local v24    # "defaultLastUsedTime":I
    goto/16 :goto_cb

    .line 2792
    .end local v24    # "defaultLastUsedTime":I
    .restart local v25    # "defaultLastUsedTime":I
    :cond_673
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, forceStopPackage(Ljava/lang/String;)V
    :try_end_67a
    .catch Landroid/os/RemoteException; {:try_start_4da .. :try_end_67a} :catch_531

    goto/16 :goto_500

    .line 2800
    .end local v10    # "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v17    # "count":I
    .end local v18    # "currentHomePackage":Ljava/lang/String;
    .end local v19    # "currentIME":Ljava/lang/String;
    .end local v20    # "currentIMEpkg":Ljava/lang/String;
    .end local v21    # "currentWallpaperPkg":Ljava/lang/String;
    .end local v25    # "defaultLastUsedTime":I
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v37    # "mAudioManager":Landroid/media/AudioManager;
    .end local v39    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .end local v41    # "mapSize":I
    .end local v43    # "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v46    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v47    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v53    # "thePackage":Ljava/lang/String;
    .end local v55    # "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_67c
    const-string v4, "LpnetManagerService"

    const-string/jumbo v5, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 2808
    .end local v22    # "currentTime":J
    .end local v49    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "interval":J
    :cond_686
    const-string v5, "ACTION_TRIGGER_UNUSED_APP_LRU "

    const-wide/16 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, setAlarm(Ljava/lang/String;JJ)V

    goto/16 :goto_e9

    .end local v6    # "interval":J
    .restart local v10    # "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v17    # "count":I
    .restart local v18    # "currentHomePackage":Ljava/lang/String;
    .restart local v19    # "currentIME":Ljava/lang/String;
    .restart local v20    # "currentIMEpkg":Ljava/lang/String;
    .restart local v21    # "currentWallpaperPkg":Ljava/lang/String;
    .restart local v22    # "currentTime":J
    .restart local v25    # "defaultLastUsedTime":I
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v37    # "mAudioManager":Landroid/media/AudioManager;
    .restart local v39    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .restart local v41    # "mapSize":I
    .restart local v43    # "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v46    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v47    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v49    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .restart local v55    # "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_691
    move/from16 v24, v25

    .end local v25    # "defaultLastUsedTime":I
    .restart local v24    # "defaultLastUsedTime":I
    goto/16 :goto_cb
.end method

.method private freezerActionNotificationBroadcast(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 2171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2172
    .local v0, "intentFrAction":Landroid/content/Intent;
    const-string v1, "ACTION_APPFREEZER_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2174
    const-string v1, "FreezeType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2175
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_40

    const-string v2, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPFREEZER_NOTIFICATION, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_48

    const-string/jumbo v1, "freezed"

    :goto_35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_40
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2177
    return-void

    .line 2175
    :cond_48
    const-string/jumbo v1, "unfreezed"

    goto :goto_35
.end method

.method private getDBValues(Z)V
    .registers 16
    .param p1, "freezeImmediate"    # Z

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1604
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_22

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDBValues called freezeImmediate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_22
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const/4 v6, 0x0

    .line 1609
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_65} :catch_126

    move-result-object v6

    .line 1616
    :goto_66
    iget-object v0, p0, mVersionDB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1617
    if-eqz v6, :cond_1b8

    .line 1618
    :cond_6d
    :goto_6d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1619
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 1629
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b5

    .line 1630
    const/4 v8, 0x0

    .line 1631
    .local v8, "isFSNeeded":Z
    iget-object v1, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1632
    :try_start_83
    const-string v0, "1"

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 1633
    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1634
    if-eqz p1, :cond_ab

    .line 1635
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1636
    const/4 v8, 0x1

    .line 1643
    :cond_ab
    :goto_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_83 .. :try_end_ac} :catchall_161

    .line 1644
    if-eqz v8, :cond_b5

    .line 1645
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, forceStopPackage(Ljava/lang/String;)V

    .line 1649
    .end local v8    # "isFSNeeded":Z
    :cond_b5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 1650
    const-string v0, "1"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1651
    iget-object v0, p0, mUserFSPackages:Ljava/util/HashSet;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1655
    :cond_d0
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e3

    .line 1656
    iget-object v0, p0, mVersionDB:Ljava/util/Map;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    :cond_e3
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 1660
    const/4 v8, 0x0

    .line 1661
    .restart local v8    # "isFSNeeded":Z
    iget-object v1, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1662
    :try_start_ee
    const-string v0, "1"

    const/4 v2, 0x6

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 1663
    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1664
    if-eqz p1, :cond_116

    .line 1665
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1666
    const/4 v8, 0x1

    .line 1673
    :cond_116
    :goto_116
    monitor-exit v1
    :try_end_117
    .catchall {:try_start_ee .. :try_end_117} :catchall_16f

    .line 1674
    if-eqz v8, :cond_6d

    iget-boolean v0, p0, mAppLockEnabled:Z

    if-eqz v0, :cond_6d

    .line 1675
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 1612
    .end local v8    # "isFSNeeded":Z
    :catch_126
    move-exception v7

    .line 1613
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_66

    .line 1640
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "isFSNeeded":Z
    :cond_148
    :try_start_148
    const-string v0, "0"

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1641
    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_ab

    .line 1643
    :catchall_161
    move-exception v0

    monitor-exit v1
    :try_end_163
    .catchall {:try_start_148 .. :try_end_163} :catchall_161

    throw v0

    .line 1671
    :cond_164
    :try_start_164
    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_116

    .line 1673
    :catchall_16f
    move-exception v0

    monitor-exit v1
    :try_end_171
    .catchall {:try_start_164 .. :try_end_171} :catchall_16f

    throw v0

    .line 1689
    .end local v8    # "isFSNeeded":Z
    :cond_172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1692
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .local v9, "managedPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1694
    :try_start_17d
    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1695
    iget-boolean v0, p0, mAppLockEnabled:Z

    if-eqz v0, :cond_18b

    .line 1696
    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1698
    :cond_18b
    monitor-exit v1
    :try_end_18c
    .catchall {:try_start_17d .. :try_end_18c} :catchall_1b9

    .line 1700
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_1a8

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM Freezed Apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_1a8
    :try_start_1a8
    iget-object v0, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, v9}, Landroid/app/IActivityManager;->getSMpkgsList(Ljava/util/List;)V

    .line 1703
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_1b8

    const-string v0, "LpnetManagerService"

    const-string v1, "SM Freezed Apps are updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1b8} :catch_1bc

    .line 1708
    .end local v9    # "managedPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b8
    :goto_1b8
    return-void

    .line 1698
    .restart local v9    # "managedPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1b9
    move-exception v0

    :try_start_1ba
    monitor-exit v1
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1b9

    throw v0

    .line 1704
    :catch_1bc
    move-exception v7

    .line 1705
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to getSMpkgsList, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b8
.end method

.method private getLRU(I)Ljava/util/Map;
    .registers 34
    .param p1, "unusedPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1866
    .local v15, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1867
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, getUsageStatsList(J)Ljava/util/List;

    move-result-object v20

    .line 1869
    .local v20, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v20, :cond_2b7

    .line 1870
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeInstalledTimeForLRU:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13a

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, pm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v18

    .line 1872
    .local v18, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_26
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_13a

    .line 1873
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageInfo;

    .line 1875
    .local v17, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1876
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, pm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 1877
    .local v14, "launchIntent":Landroid/content/Intent;
    if-eqz v14, :cond_94

    .line 1879
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeSystemAppsForLRU:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b9

    .line 1880
    new-instance v11, Ljava/lang/Long;

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-direct {v11, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 1881
    .local v11, "installTime":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    const-wide/16 v28, 0x3e8

    div-long v28, v6, v28

    mul-int/lit8 v30, p1, 0x18

    mul-int/lit8 v30, v30, 0x3c

    mul-int/lit8 v30, v30, 0x3c

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    cmp-long v26, v26, v28

    if-gez v26, :cond_97

    .line 1882
    new-instance v26, Ljava/lang/Long;

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    .end local v11    # "installTime":Ljava/lang/Long;
    :cond_94
    :goto_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 1884
    .restart local v11    # "installTime":Ljava/lang/Long;
    :cond_97
    sget-boolean v26, APP_FREEZER_LOG:Z

    if-eqz v26, :cond_94

    const-string v26, "LpnetManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "installTime is null for package : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 1888
    .end local v11    # "installTime":Ljava/lang/Long;
    :cond_b9
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v0, v0, pm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1889
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_94

    .line 1890
    new-instance v11, Ljava/lang/Long;

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-direct {v11, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 1891
    .restart local v11    # "installTime":Ljava/lang/Long;
    if-eqz v11, :cond_94

    .line 1892
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    const-wide/16 v28, 0x3e8

    div-long v28, v6, v28

    mul-int/lit8 v30, p1, 0x18

    mul-int/lit8 v30, v30, 0x3c

    mul-int/lit8 v30, v30, 0x3c

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    cmp-long v26, v26, v28

    if-gez v26, :cond_94

    .line 1893
    new-instance v13, Ljava/util/Date;

    new-instance v26, Ljava/lang/Long;

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v13, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1894
    .local v13, "last":Ljava/util/Date;
    new-instance v26, Ljava/lang/Long;

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_135
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b9 .. :try_end_135} :catch_137

    goto/16 :goto_94

    .line 1898
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "installTime":Ljava/lang/Long;
    .end local v13    # "last":Ljava/util/Date;
    :catch_137
    move-exception v26

    goto/16 :goto_94

    .line 1905
    .end local v9    # "i":I
    .end local v14    # "launchIntent":Landroid/content/Intent;
    .end local v17    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "pkgName":Ljava/lang/String;
    :cond_13a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_148

    .line 1906
    const-string v26, "LpnetManagerService"

    const-string/jumbo v27, "stats.size() is 0"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_148
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_14c
    :goto_14c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1ed

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/usage/UsageStats;

    .line 1910
    .local v21, "u":Landroid/app/usage/UsageStats;
    sget-boolean v26, APP_FREEZER_LOG:Z

    if-eqz v26, :cond_193

    const-string v26, "LpnetManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Stats: Pkg "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " usedTime: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    new-instance v28, Ljava/util/Date;

    invoke-virtual/range {v21 .. v21}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v28}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_193
    invoke-virtual/range {v21 .. v21}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1912
    .restart local v19    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeSystemAppsForLRU:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b4

    .line 1913
    new-instance v26, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14c

    .line 1916
    :cond_1b4
    :try_start_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, pm:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1917
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14c

    .line 1918
    new-instance v26, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b4 .. :try_end_1e8} :catch_1ea

    goto/16 :goto_14c

    .line 1920
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1ea
    move-exception v26

    goto/16 :goto_14c

    .line 1925
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v21    # "u":Landroid/app/usage/UsageStats;
    :cond_1ed
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1f5
    :goto_1f5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_215

    .line 1926
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1927
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1928
    .local v16, "lruPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1f5

    .line 1929
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_1f5

    .line 1933
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v16    # "lruPackageName":Ljava/lang/String;
    :cond_215
    move-object/from16 v0, p0

    iget-boolean v0, v0, mEnableTimeShift:Z

    move/from16 v26, v0

    if-eqz v26, :cond_225

    sget-wide v26, timeShift:J

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_226

    .line 1950
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_225
    :goto_225
    return-object v15

    .line 1937
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_226
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_22e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2b1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1938
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1939
    .local v4, "PackageName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 1940
    .local v22, "valueFromUsageStat":J
    sget-wide v26, timeShift:J

    sub-long v24, v22, v26

    .line 1941
    .local v24, "valueFromUsageStatAfterTimeShift":J
    sget-boolean v26, APP_FREEZER_LOG:Z

    if-eqz v26, :cond_2a0

    const-string v26, "LpnetManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PackageName: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", valueFromUsageStat :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", timeShift : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-wide v28, timeShift:J

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", valueFromUsageStatAfterTimeShift "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_2a0
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22e

    .line 1946
    .end local v4    # "PackageName":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22    # "valueFromUsageStat":J
    .end local v24    # "valueFromUsageStatAfterTimeShift":J
    :cond_2b1
    const-wide/16 v26, 0x0

    sput-wide v26, timeShift:J

    goto/16 :goto_225

    .line 1948
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2b7
    const-string v26, "LpnetManagerService"

    const-string/jumbo v27, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_225
.end method

.method private getUsageStatsList(J)Ljava/util/List;
    .registers 16
    .param p1, "currTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1834
    const-string v9, "android"

    .line 1835
    .local v9, "packageName":Ljava/lang/String;
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 1836
    .local v0, "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    .line 1838
    .local v8, "mAppOpsManager":Landroid/app/AppOpsManager;
    if-eqz v8, :cond_131

    if-eqz v0, :cond_131

    .line 1839
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1840
    .local v7, "endTime":Ljava/util/Calendar;
    invoke-virtual {v7, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1841
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1843
    .local v6, "beginTime":Ljava/util/Calendar;
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v6, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 1844
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1845
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1848
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_79

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode calling with params packagename uid mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_79
    const/16 v1, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v8, v1, v2, v9, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1850
    const/4 v1, 0x4

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v10

    .line 1853
    .local v10, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const/16 v1, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v8, v1, v2, v9, v11}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1854
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_cf

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode calling with params packagename uid mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_cf
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_130

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stats length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,Begin Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,End Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,Curr Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    .end local v6    # "beginTime":Ljava/util/Calendar;
    .end local v7    # "endTime":Ljava/util/Calendar;
    .end local v10    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_130
    :goto_130
    return-object v10

    .line 1859
    :cond_131
    const-string v1, "LpnetManagerService"

    const-string/jumbo v2, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v10, 0x0

    goto :goto_130
.end method

.method private getWhiteListDBValues()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1579
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_e

    const-string v0, "LpnetManagerService"

    const-string/jumbo v1, "getWhiteListDBValues called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_e
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const/4 v6, 0x0

    .line 1584
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_16
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "extras_0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "extras_1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "extras_2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "extras_3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "extras_4"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4b} :catch_69

    move-result-object v6

    .line 1592
    :goto_4c
    if-eqz v6, :cond_8d

    .line 1593
    iget-object v0, p0, mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1594
    :cond_53
    :goto_53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1595
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1596
    iget-object v0, p0, mDefaultPackages:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1587
    :catch_69
    move-exception v7

    .line 1588
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 1599
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1601
    :cond_8d
    return-void
.end method

.method private idleAction()V
    .registers 15

    .prologue
    .line 1199
    const/4 v6, 0x0

    .line 1200
    .local v6, "scheduleStat":Z
    const/4 v3, 0x0

    .line 1201
    .local v3, "gcmMessageJustReceived":Z
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_2d

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "idleAction: mDataConnectivityAtScreenOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, mDataConnectivityAtScreenOff:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, mDataConnectionIsConnected:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_2d
    iget-boolean v10, p0, mDataConnectivityAtScreenOff:Z

    if-eqz v10, :cond_35

    iget-boolean v10, p0, mDataConnectionIsConnected:Z

    if-eqz v10, :cond_1f4

    .line 1207
    :cond_35
    const/4 v5, 0x0

    .line 1209
    .local v5, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_36
    iget-object v10, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v10}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_1ae

    move-result-object v5

    .line 1214
    :cond_3c
    :goto_3c
    if-eqz v5, :cond_1f4

    .line 1217
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1218
    .local v7, "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1219
    :try_start_46
    iget-object v10, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1220
    iget-boolean v10, p0, mEnableImportanceCheck:Z

    if-eqz v10, :cond_61

    .line 1221
    iget-object v12, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_1bf

    .line 1222
    :try_start_52
    iget-object v10, p0, mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1223
    iget-boolean v10, p0, mAppLockEnabled:Z

    if-eqz v10, :cond_60

    .line 1224
    iget-object v10, p0, mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1226
    :cond_60
    monitor-exit v12
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_1bc

    .line 1228
    :cond_61
    :try_start_61
    monitor-exit v11
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_1bf

    .line 1229
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_136

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1232
    .local v8, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 1233
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_d4

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lru="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iRCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iRPid= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_d4
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0xc8

    if-le v10, v11, :cond_1cc

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0x190

    if-ne v10, v11, :cond_ea

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v11, 0x4

    if-le v10, v11, :cond_1cc

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_1cc

    .line 1262
    :cond_ea
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_108

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is NOT in foreground or visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_108
    const/4 v0, 0x0

    .line 1264
    .local v0, "activeTraffic":Z
    iget-object v10, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_11c

    iget-boolean v10, p0, mDataConnectionIsConnected:Z

    if-eqz v10, :cond_11c

    .line 1265
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, isActiveTrafficExisting(Ljava/lang/String;Z)Z

    move-result v0

    .line 1268
    :cond_11c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, mGCMMessageReceivedTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-gez v10, :cond_1c2

    .line 1269
    const/4 v3, 0x1

    .line 1270
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_136

    const-string v10, "LpnetManagerService"

    const-string v11, "GCM Message arrived in the last 1 min, skipping action"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    .end local v0    # "activeTraffic":Z
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_136
    if-nez v3, :cond_1f4

    .line 1285
    iget-boolean v10, p0, mEnableImportanceCheck:Z

    if-nez v10, :cond_14e

    .line 1286
    iget-object v11, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1287
    :try_start_13f
    iget-object v10, p0, mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1288
    iget-boolean v10, p0, mAppLockEnabled:Z

    if-eqz v10, :cond_14d

    .line 1289
    iget-object v10, p0, mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1291
    :cond_14d
    monitor-exit v11
    :try_end_14e
    .catchall {:try_start_13f .. :try_end_14e} :catchall_1f1

    .line 1294
    :cond_14e
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_152
    :goto_152
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1296
    .local v9, "thePackage":Ljava/lang/String;
    :try_start_15e
    iget-object v10, p0, pm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1297
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_152

    .line 1298
    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    const/high16 v11, 0x200000

    if-eq v10, v11, :cond_152

    .line 1300
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_18c

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Need to Forcestop : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_18c
    invoke-virtual {p0, v9}, forceStopPackage(Ljava/lang/String;)V
    :try_end_18f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15e .. :try_end_18f} :catch_190

    goto :goto_152

    .line 1303
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_190
    move-exception v2

    .line 1304
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_152

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NameNotFoundException occurred for package :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    .line 1210
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "thePackage":Ljava/lang/String;
    :catch_1ae
    move-exception v2

    .line 1211
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_3c

    const-string v10, "LpnetManagerService"

    const-string v11, "Exception occurred on getting Running Apps"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1226
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v7    # "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1bc
    move-exception v10

    :try_start_1bd
    monitor-exit v12
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1bc

    :try_start_1be
    throw v10

    .line 1228
    :catchall_1bf
    move-exception v10

    monitor-exit v11
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1bf

    throw v10

    .line 1273
    .restart local v0    # "activeTraffic":Z
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1c2
    if-eqz v0, :cond_66

    .line 1274
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1275
    const/4 v6, 0x1

    goto/16 :goto_66

    .line 1278
    .end local v0    # "activeTraffic":Z
    :cond_1cc
    sget-boolean v10, APP_FREEZER_LOG:Z

    if-eqz v10, :cond_1ea

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is in foreground or visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_1ea
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_66

    .line 1291
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_1f1
    move-exception v10

    :try_start_1f2
    monitor-exit v11
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_1f1

    throw v10

    .line 1311
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "targetPackageCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1f4
    if-nez v6, :cond_1f8

    if-eqz v3, :cond_1fe

    .line 1312
    :cond_1f8
    iget-wide v10, p0, mScreenOffActionTime:J

    invoke-direct {p0, v10, v11}, screenOffAction(J)V

    .line 1316
    :goto_1fd
    return-void

    .line 1314
    :cond_1fe
    iget-wide v10, p0, mInactivityRepeatTime:J

    invoke-direct {p0, v10, v11}, screenOffAction(J)V

    goto :goto_1fd
.end method

.method private initFreezerActionNotification()V
    .registers 2

    .prologue
    .line 2139
    new-instance v0, Lcom/android/server/LpnetManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$7;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 2167
    return-void
.end method

.method private initializeFromConfigFile()V
    .registers 15

    .prologue
    .line 501
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_c

    const-string v7, "LpnetManagerService"

    const-string/jumbo v10, "initializeFromConfigFile "

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_c
    const/4 v4, 0x0

    .line 504
    .local v4, "stringBlackList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 506
    .local v1, "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    :try_start_e
    new-instance v2, Lcom/android/server/LpnetManagerService$IniFile;

    const-string v7, "/data/misc/lpnet/lpnetConfig"

    invoke-direct {v2, v7}, Lcom/android/server/LpnetManagerService$IniFile;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_1ca

    .line 512
    .end local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .local v2, "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    const-string v7, "ChinaNalSecurity"

    sget-object v10, isChinaNal:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 513
    const/4 v7, 0x1

    iput-boolean v7, p0, mAutoFreezeEnabled:Z

    .line 514
    const/4 v7, 0x1

    iput-boolean v7, p0, mEnableAppStartRestrictionInScreenOn:Z

    .line 515
    const/4 v7, 0x1

    iput-boolean v7, p0, mAutoRunBasedFreeze:Z

    .line 518
    :cond_28
    if-eqz v2, :cond_4c1

    .line 520
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "UDS"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 521
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "enableSolution"

    iget-boolean v11, p0, mSolnEnabled:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mSolnEnabled:Z

    .line 523
    :cond_49
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeEnabled"

    iget-boolean v11, p0, mAutoFreezeEnabled:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mAutoFreezeEnabled:Z

    .line 524
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeWithOwnLRU"

    iget-boolean v11, p0, mFreezeWithOwnLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mFreezeWithOwnLRU:Z

    .line 525
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "whitelistAll"

    iget-boolean v11, p0, mWhiteListAll:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mWhiteListAll:Z

    .line 526
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "whitelistAllGCM"

    iget-boolean v11, p0, mWhiteListGCM:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mWhiteListGCM:Z

    .line 527
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "freezeImmediate"

    iget-boolean v11, p0, mFreezeImmediate:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mFreezeImmediate:Z

    .line 528
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "includeSysAppForLru"

    iget-boolean v11, p0, mIncludeSystemAppsForLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mIncludeSystemAppsForLRU:Z

    .line 529
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "disableLRU"

    iget-boolean v11, p0, mDisableLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mDisableLRU:Z

    .line 530
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "enableTimeShift"

    iget-boolean v11, p0, mEnableTimeShift:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mEnableTimeShift:Z

    .line 531
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "enableImportanceCheck"

    iget-boolean v11, p0, mEnableImportanceCheck:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mEnableImportanceCheck:Z

    .line 532
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "enableImportanceFGOnly"

    iget-boolean v11, p0, mEnableImportanceFGOnly:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mEnableImportanceFGOnly:Z

    .line 533
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "enableAppStartRestrictScreenOn"

    iget-boolean v11, p0, mEnableAppStartRestrictionInScreenOn:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mEnableAppStartRestrictionInScreenOn:Z

    .line 534
    iget-boolean v7, p0, mEnableAppStartRestrictionInScreenOn:Z

    sput-boolean v7, AppStartRestrictionInScreenOn:Z

    .line 535
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "includeInstalledTimeForLRU"

    iget-boolean v11, p0, mIncludeInstalledTimeForLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, mIncludeInstalledTimeForLRU:Z

    .line 537
    const-wide/16 v8, 0x0

    .line 538
    .local v8, "tempValFromConfigFile":J
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "screenOffActionTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 540
    const-wide/16 v10, 0xa

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1e8

    const-wide/16 v10, 0xe10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1e8

    .line 541
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, mScreenOffActionTime:J

    .line 546
    :cond_105
    :goto_105
    const-wide/16 v8, 0x0

    .line 547
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "inActivityRepeatTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 549
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_208

    const-wide/32 v10, 0x15180

    cmp-long v7, v8, v10

    if-gtz v7, :cond_208

    .line 550
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, mInactivityRepeatTime:J

    .line 555
    :cond_124
    :goto_124
    const-wide/16 v8, 0x0

    .line 556
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "lruCheckInterval"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 558
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_228

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_228

    .line 559
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, mIntLruCheckInterval:J

    .line 564
    :cond_143
    :goto_143
    const-wide/16 v8, 0x0

    .line 565
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeUnusedAppTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 567
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_248

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_248

    .line 568
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, mUnusedAutoFreezeTime:J

    .line 573
    :cond_161
    :goto_161
    const/4 v6, 0x0

    .line 574
    .local v6, "tempIntVal":I
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "unusedPeriod"

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 576
    if-ltz v6, :cond_268

    const/16 v7, 0x2da

    if-gt v6, v7, :cond_268

    .line 577
    iput v6, p0, mUnusedPeriod:I

    .line 582
    :cond_174
    :goto_174
    const-wide/16 v8, 0x0

    .line 583
    const-string v7, "APPFREEZER_INIT"

    const-string/jumbo v10, "usageCollectionInterval"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 585
    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_288

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_288

    .line 586
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, mLastUsedTimeCollectionInterval:J

    .line 591
    :cond_193
    :goto_193
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "BlackList"

    invoke-virtual {v2, v7, v10, v4}, Lcom/android/server/LpnetManagerService$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    if-eqz v4, :cond_2a8

    .line 593
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v5, "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_1a4
    :goto_1a4
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2a8

    .line 596
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_1a4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1a4

    .line 599
    invoke-direct {p0, v3}, isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a4

    iget-object v7, p0, mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a4

    .line 507
    .end local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "stringTokenizer":Ljava/util/StringTokenizer;
    .end local v6    # "tempIntVal":I
    .end local v8    # "tempValFromConfigFile":J
    .restart local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    :catch_1ca
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_1e7

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException on Parsing Config FILE :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e7
    :goto_1e7
    return-void

    .line 543
    .end local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v8    # "tempValFromConfigFile":J
    :cond_1e8
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_105

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 10s - 3600s, Setting Default mScreenOffActionTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mScreenOffActionTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_105

    .line 552
    :cond_208
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_124

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 86400s, Setting Default mInactivityRepeatTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mInactivityRepeatTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    .line 561
    :cond_228
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_143

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mIntLruCheckInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mIntLruCheckInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 570
    :cond_248
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_161

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mUnusedAutoFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mUnusedAutoFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_161

    .line 579
    .restart local v6    # "tempIntVal":I
    :cond_268
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_174

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 0 - 730 days, Setting Default mUnusedPeriod : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mUnusedPeriod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_174

    .line 588
    :cond_288
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_193

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mLastUsedTimeCollectionInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mLastUsedTimeCollectionInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_193

    .line 604
    :cond_2a8
    sget-boolean v7, APP_FREEZER_LOG:Z

    if-eqz v7, :cond_4c1

    .line 605
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSolnEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mSolnEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mWhiteListAll : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mWhiteListAll:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mWhiteListGCM : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mWhiteListGCM:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mFreezeWithOwnLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mFreezeWithOwnLRU:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mFreezeImmediate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mFreezeImmediate:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mScreenOffActionTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mScreenOffActionTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mInactivityRepeatTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mInactivityRepeatTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mIntLruCheckInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mIntLruCheckInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mUnusedAutoFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mUnusedAutoFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mUnusedPeriod : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mUnusedPeriod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mDisableLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mDisableLRU:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEnableTimeShift : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mEnableTimeShift:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEnableImportanceCheck : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mEnableImportanceCheck:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEnableImportanceFGOnly : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mEnableImportanceFGOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEnableAppStartRestrictionInScreenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mEnableAppStartRestrictionInScreenOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mAutoRunBasedFreeze : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mAutoRunBasedFreeze:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mLastUsedTimeCollectionInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mLastUsedTimeCollectionInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mIncludeInstalledTimeForLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mIncludeInstalledTimeForLRU:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mLruMissedImmediateFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, mLruMissedImmediateFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "tempIntVal":I
    .end local v8    # "tempValFromConfigFile":J
    :cond_4c1
    move-object v1, v2

    .line 626
    .end local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    goto/16 :goto_1e7
.end method

.method private intentReceiverInitialization()V
    .registers 4

    .prologue
    .line 378
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, pkgFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, networkFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    return-void
.end method

.method private isAPICallAllowedForPackages(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 1092
    const/4 v4, 0x0

    .line 1093
    .local v4, "isAllowed":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1094
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1096
    .local v1, "appUid":I
    :try_start_13
    iget-object v8, p0, pm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1098
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v7, :cond_6

    .line 1102
    if-eqz v0, :cond_24

    .line 1103
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_24} :catch_2c

    .line 1109
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1110
    .local v6, "uid":I
    if-ne v6, v1, :cond_6

    move v4, v7

    .line 1116
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appUid":I
    .end local v4    # "isAllowed":Z
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2b
    return v4

    .line 1105
    .restart local v1    # "appUid":I
    .restart local v4    # "isAllowed":Z
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_2c
    move-exception v2

    .line 1106
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_6
.end method

.method private isActiveTrafficExisting(Ljava/lang/String;Z)Z
    .registers 27
    .param p1, "aPackageName"    # Ljava/lang/String;
    .param p2, "isForLRU"    # Z

    .prologue
    .line 1124
    const/16 v18, 0x1

    .line 1141
    .local v18, "retCode":Z
    const/4 v15, 0x0

    .line 1142
    .local v15, "prevTraffic":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 1143
    .local v7, "currTrafficTX":Ljava/lang/Long;
    const/16 v17, 0x0

    .line 1144
    .local v17, "prevTrafficTX":Ljava/lang/Long;
    const/4 v6, 0x0

    .line 1145
    .local v6, "currTrafficRX":Ljava/lang/Long;
    const/16 v16, 0x0

    .line 1147
    .local v16, "prevTrafficRX":Ljava/lang/Long;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, pm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1148
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1149
    .local v5, "currTraffic":Ljava/lang/Long;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1150
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_3e} :catch_e6

    move-result-object v6

    .line 1156
    if-eqz p2, :cond_10d

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, mLRUTrafficMapLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1158
    :try_start_48
    move-object/from16 v0, p0

    iget-object v0, v0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 1160
    monitor-exit v20
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_10a

    .line 1167
    :goto_71
    if-eqz p2, :cond_1a7

    .line 1168
    if-eqz v17, :cond_7b

    if-eqz v7, :cond_7b

    if-eqz v16, :cond_7b

    if-nez v6, :cond_12d

    .line 1169
    :cond_7b
    sget-boolean v19, APP_FREEZER_LOG:Z

    if-eqz v19, :cond_e3

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TrafficForPkg["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_e3
    const/16 v19, 0x0

    .line 1195
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "currTraffic":Ljava/lang/Long;
    :goto_e5
    return v19

    .line 1151
    :catch_e6
    move-exception v14

    .line 1152
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v19, APP_FREEZER_LOG:Z

    if-eqz v19, :cond_107

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NameNotFoundException occurred for package :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_107
    const/16 v19, 0x0

    goto :goto_e5

    .line 1160
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "currTraffic":Ljava/lang/Long;
    :catchall_10a
    move-exception v19

    :try_start_10b
    monitor-exit v20
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v19

    .line 1162
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, mIdleTrafficMapLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1163
    :try_start_114
    move-object/from16 v0, p0

    iget-object v0, v0, mTrafficStatMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    .line 1164
    monitor-exit v20

    goto/16 :goto_71

    :catchall_12a
    move-exception v19

    monitor-exit v20
    :try_end_12c
    .catchall {:try_start_114 .. :try_end_12c} :catchall_12a

    throw v19

    .line 1174
    :cond_12d
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v12, v20, v22

    .line 1175
    .local v12, "diffTX":J
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v10, v20, v22

    .line 1176
    .local v10, "diffRX":J
    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ActiveTraffic[LRU:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " (tx:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", rx:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-eqz v19, :cond_1a1

    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-eqz v19, :cond_1a1

    const-wide/16 v20, 0x400

    cmp-long v19, v12, v20

    if-gez v19, :cond_1a3

    const-wide/16 v20, 0x400

    cmp-long v19, v10, v20

    if-gez v19, :cond_1a3

    .line 1179
    :cond_1a1
    const/16 v18, 0x0

    .end local v10    # "diffRX":J
    .end local v12    # "diffTX":J
    :cond_1a3
    :goto_1a3
    move/from16 v19, v18

    .line 1195
    goto/16 :goto_e5

    .line 1182
    :cond_1a7
    if-eqz v15, :cond_1ab

    if-nez v5, :cond_1fb

    .line 1183
    :cond_1ab
    sget-boolean v19, APP_FREEZER_LOG:Z

    if-eqz v19, :cond_1f7

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TrafficForPkg["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_1f7
    const/16 v19, 0x0

    goto/16 :goto_e5

    .line 1188
    :cond_1fb
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v8, v20, v22

    .line 1189
    .local v8, "diff":J
    sget-boolean v19, APP_FREEZER_LOG:Z

    if-eqz v19, :cond_245

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ActiveTraffic[LRU:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_245
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_1a3

    .line 1192
    const/16 v18, 0x0

    goto/16 :goto_1a3
.end method

.method private isAutoRunBlockedPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 2543
    const/4 v1, 0x0

    .line 2545
    .local v1, "isAutoRunBlocked":Z
    :try_start_1
    iget-object v2, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->isAutoRunBlockedApp(Ljava/lang/String;)Z

    move-result v1

    .line 2546
    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAutoRunBlockedPackage isAutoRunBlocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",processName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 2550
    :cond_2a
    :goto_2a
    return v1

    .line 2547
    :catch_2b
    move-exception v0

    .line 2548
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, APP_FREEZER_LOG:Z

    if-eqz v2, :cond_2a

    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAutoRunBlockedPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private isC2DMPermAvl(Ljava/lang/String;)Z
    .registers 9
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "c2dmPermissionFound":Z
    const/4 v2, 0x0

    .line 477
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_29

    .line 479
    :try_start_6
    iget-object v4, p0, pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 480
    if-eqz v2, :cond_29

    .line 482
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 483
    .local v3, "perms":[Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_29

    .line 484
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_15
    array-length v4, v3

    if-ge v1, v4, :cond_29

    .line 485
    aget-object v4, v3, v1

    if-eqz v4, :cond_4a

    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v5, ".permission.C2D_MESSAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_25} :catch_4d

    move-result v4

    if-eqz v4, :cond_4a

    .line 486
    const/4 v0, 0x1

    .line 495
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_29
    :goto_29
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_49

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C2DM Permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_49
    return v0

    .line 484
    .restart local v1    # "j":I
    .restart local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 492
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :catch_4d
    move-exception v4

    goto :goto_29
.end method

.method private isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1817
    iget-object v3, p0, pm:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_19

    if-eqz p1, :cond_19

    .line 1819
    :try_start_7
    iget-object v3, p0, pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1820
    iget-object v3, p0, pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1821
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_16} :catch_17

    .line 1829
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_16
    return v1

    .line 1823
    :catch_17
    move-exception v2

    .line 1824
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_16

    .line 1827
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    const-string v3, "LpnetManagerService"

    const-string/jumbo v4, "isPackageInstalledAndEnabled called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private isPackageVersionMatching(Ljava/lang/String;)Z
    .registers 9
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "retCode":Z
    const/4 v2, 0x0

    .line 449
    .local v2, "version":I
    iget-object v4, p0, pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_4c

    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_7
    iget-object v4, p0, pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_4c

    .line 454
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 455
    iget-object v4, p0, mVersionDB:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 456
    .local v3, "versionMatchString":Ljava/lang/String;
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_38

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "versionMatchString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_38
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_77

    .line 459
    iget-object v4, p0, mVersionDB:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, versionCheckAgainstDB(Ljava/lang/String;I)Z
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_4b} :catch_79

    move-result v1

    .line 467
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "versionMatchString":Ljava/lang/String;
    :cond_4c
    :goto_4c
    sget-boolean v4, APP_FREEZER_LOG:Z

    if-eqz v4, :cond_76

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VersionMatch?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_76
    return v1

    .line 461
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "versionMatchString":Ljava/lang/String;
    :cond_77
    const/4 v1, 0x1

    goto :goto_4c

    .line 464
    .end local v3    # "versionMatchString":Ljava/lang/String;
    :catch_79
    move-exception v4

    goto :goto_4c
.end method

.method static isSmartManagerDbUpdated()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 1324
    sget-object v3, sSmartManagerDbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1325
    sget-object v3, sSmartManagerDbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1326
    .local v0, "modifiedTime":J
    sget-boolean v3, APP_FREEZER_LOG:Z

    if-eqz v3, :cond_38

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lastTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, sLastModifiedTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_38
    sget-wide v4, sLastModifiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4e

    .line 1328
    sput-wide v0, sLastModifiedTime:J

    .line 1329
    sget-boolean v3, APP_FREEZER_LOG:Z

    if-eqz v3, :cond_4d

    const-string v3, "LpnetManagerService"

    const-string v4, "SMDB has been changed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_4d
    :goto_4d
    return v2

    .line 1331
    :cond_4e
    sget-wide v4, sLastModifiedTime:J

    cmp-long v3, v4, v0

    if-eqz v3, :cond_62

    .line 1332
    sput-wide v0, sLastModifiedTime:J

    .line 1333
    sget-boolean v3, APP_FREEZER_LOG:Z

    if-eqz v3, :cond_4d

    const-string v3, "LpnetManagerService"

    const-string v4, "SMDB has been changed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1337
    :cond_62
    sget-boolean v2, APP_FREEZER_LOG:Z

    if-eqz v2, :cond_6d

    const-string v2, "LpnetManagerService"

    const-string v3, "SMDB has not been changed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_6d
    const/4 v2, 0x0

    goto :goto_4d
.end method

.method private parseEntry(Ljava/lang/String;)[I
    .registers 14
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 390
    const/4 v8, 0x3

    new-array v1, v8, [I

    .line 391
    .local v1, "limits":[I
    aput v10, v1, v9

    .line 392
    if-eqz p1, :cond_5a

    .line 394
    const/4 v8, 0x0

    :try_start_b
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x6d

    if-ne v8, v9, :cond_5b

    .line 395
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v1, v8

    .line 399
    :goto_17
    new-instance v6, Ljava/util/StringTokenizer;

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    if-ne v8, v11, :cond_5a

    .line 401
    const-string v8, "[0-9]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 402
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "lower":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "upper":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 405
    .local v3, "mlower":Ljava/util/regex/Matcher;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 406
    .local v4, "mupper":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 407
    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v8

    .line 408
    const/4 v8, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v8

    .line 415
    .end local v2    # "lower":Ljava/lang/String;
    .end local v3    # "mlower":Ljava/util/regex/Matcher;
    .end local v4    # "mupper":Ljava/util/regex/Matcher;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "upper":Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-object v1

    .line 396
    :cond_5b
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x75

    if-ne v8, v9, :cond_87

    .line 397
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v1, v8
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_68} :catch_69

    goto :goto_17

    .line 411
    :catch_69
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, APP_FREEZER_LOG:Z

    if-eqz v8, :cond_5a

    const-string v8, "LpnetManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " parseEntry Error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_87
    const/4 v8, 0x0

    const/4 v9, -0x1

    :try_start_89
    aput v9, v1, v8
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8b} :catch_69

    goto :goto_17
.end method

.method private screenOffAction(J)V
    .registers 16
    .param p1, "timeToAct"    # J

    .prologue
    .line 1342
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_24

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenOffAction-timeToAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_24
    invoke-static {}, isSmartManagerDbUpdated()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getDBValues(Z)V

    .line 1346
    invoke-direct {p0}, getWhiteListDBValues()V

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, targetPkgInitialization(Z)V

    .line 1351
    :cond_35
    iget-boolean v0, p0, mDataConnectionIsConnected:Z

    if-eqz v0, :cond_3c

    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataConnectivityAtScreenOff:Z

    .line 1354
    :cond_3c
    iget-object v1, p0, mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1355
    :try_start_3f
    iget-object v0, p0, mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1356
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_9a

    .line 1360
    const/4 v9, 0x0

    .line 1361
    .local v9, "nNotForceStoppedAppsSize":I
    const/4 v10, 0x0

    .line 1363
    .local v10, "nTargetAppsSize":I
    iget-object v1, p0, mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1364
    :try_start_4a
    iget-object v0, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1365
    iget-object v0, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_97

    .line 1367
    .local v11, "theApp":Ljava/lang/String;
    :try_start_61
    iget-object v0, p0, pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 1368
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_55

    .line 1369
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    const/high16 v2, 0x200000

    if-eq v0, v2, :cond_55

    .line 1371
    iget-object v0, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_78} :catch_79
    .catchall {:try_start_61 .. :try_end_78} :catchall_97

    goto :goto_55

    .line 1373
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_79
    move-exception v7

    .line 1374
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7a
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_55

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException occurred for package :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1384
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "theApp":Ljava/lang/String;
    :catchall_97
    move-exception v0

    monitor-exit v1
    :try_end_99
    .catchall {:try_start_7a .. :try_end_99} :catchall_97

    throw v0

    .line 1356
    .end local v9    # "nNotForceStoppedAppsSize":I
    .end local v10    # "nTargetAppsSize":I
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0

    .line 1377
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "nNotForceStoppedAppsSize":I
    .restart local v10    # "nTargetAppsSize":I
    :cond_9d
    :try_start_9d
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_dd

    .line 1378
    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target Packages for ForceStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Candidates for ForceStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_dd
    iget-object v0, p0, mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v9

    .line 1383
    iget-object v0, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v10

    .line 1384
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_9d .. :try_end_ea} :catchall_97

    .line 1387
    if-gtz v10, :cond_fc

    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_fc

    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_110

    .line 1390
    :cond_fc
    const-wide/16 v0, 0x7d0

    cmp-long v0, p1, v0

    if-lez v0, :cond_111

    if-lez v9, :cond_111

    .line 1391
    const-string v1, "NETWORK_STAT"

    const-wide/16 v2, 0x7d0

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, setAlarm(Ljava/lang/String;JJ)V

    .line 1396
    :cond_110
    :goto_110
    return-void

    .line 1393
    :cond_111
    const-string v1, "ACTION_TRIGGER_IDLE"

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, setAlarm(Ljava/lang/String;JJ)V

    goto :goto_110
.end method

.method private setAlarm(Ljava/lang/String;JJ)V
    .registers 16
    .param p1, "theIntentString"    # Ljava/lang/String;
    .param p2, "alarmTime"    # J
    .param p4, "delayTolerance"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1402
    .local v0, "intentB":Landroid/content/Intent;
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_46

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now+:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_46
    const-string v1, "NETWORK_STAT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1405
    iget-object v1, p0, mNetworkStatIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_5a

    .line 1406
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mNetworkStatIntent:Landroid/app/PendingIntent;

    .line 1408
    :cond_5a
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mNetworkStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1410
    :cond_66
    const-string v1, "LAST_USED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1411
    iget-object v1, p0, mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_7a

    .line 1412
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    .line 1414
    :cond_7a
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1417
    :cond_86
    const-string v1, "NETWORK_STAT_LRU"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1418
    iget-object v1, p0, mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    if-nez v1, :cond_9a

    .line 1419
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    .line 1421
    :cond_9a
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1428
    :cond_a6
    const-string v1, "ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1429
    iget-object v1, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_ba

    .line 1430
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 1432
    :cond_ba
    cmp-long v1, p4, v8

    if-nez v1, :cond_ef

    .line 1433
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1439
    :cond_ca
    :goto_ca
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1440
    iget-object v1, p0, mLRUIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_de

    .line 1441
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mLRUIntent:Landroid/app/PendingIntent;

    .line 1443
    :cond_de
    cmp-long v1, p4, v8

    if-nez v1, :cond_fc

    .line 1444
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1449
    :cond_ee
    :goto_ee
    return-void

    .line 1435
    :cond_ef
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_ca

    .line 1446
    :cond_fc
    iget-object v1, p0, mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_ee
.end method

.method private targetPkgInitialization(Z)V
    .registers 14
    .param p1, "loadDefaults"    # Z

    .prologue
    .line 630
    iget-object v9, p0, mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 631
    :try_start_3
    iget-object v8, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 632
    iget-boolean v8, p0, mWhiteListAll:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, mWhiteListGCM:Z

    if-eqz v8, :cond_4b

    .line 633
    :cond_10
    sget-boolean v8, APP_FREEZER_LOG:Z

    if-eqz v8, :cond_1c

    const-string v8, "LpnetManagerService"

    const-string/jumbo v10, "mWhiteListAll enabled"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1c
    iget-object v8, p0, pm:Landroid/content/pm/PackageManager;

    if-eqz v8, :cond_4b

    .line 635
    iget-object v8, p0, pm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 636
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_4b

    .line 637
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 639
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_40

    .line 636
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 640
    :cond_40
    iget-object v8, p0, mTargetPackages:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 644
    .end local v1    # "i":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_48
    move-exception v8

    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v8

    :cond_4b
    :try_start_4b
    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    .line 646
    iget-boolean v8, p0, mWhiteListAll:Z

    if-nez v8, :cond_7f

    iget-boolean v8, p0, mWhiteListGCM:Z

    if-nez v8, :cond_7f

    .line 647
    iget-object v9, p0, mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 648
    :try_start_57
    iget-object v8, p0, mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5d
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 649
    .local v6, "theApp":Ljava/lang/String;
    invoke-direct {p0, v6}, isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 650
    invoke-direct {p0, v6}, isPackageVersionMatching(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 651
    iget-object v8, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 654
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "theApp":Ljava/lang/String;
    :catchall_7b
    move-exception v8

    monitor-exit v9
    :try_end_7d
    .catchall {:try_start_57 .. :try_end_7d} :catchall_7b

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7e
    :try_start_7e
    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7b

    .line 657
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7f
    iget-boolean v8, p0, mWhiteListAll:Z

    if-nez v8, :cond_c2

    .line 658
    iget-object v9, p0, mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 659
    :try_start_86
    iget-object v8, p0, mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 660
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8c
    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 661
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 663
    .local v7, "theWhiteListPackage":Ljava/lang/String;
    invoke-direct {p0, v7}, isC2DMPermAvl(Ljava/lang/String;)Z

    move-result v0

    .line 664
    .local v0, "c2dmPermExists":Z
    if-nez v0, :cond_8c

    .line 665
    sget-boolean v8, APP_FREEZER_LOG:Z

    if-eqz v8, :cond_ba

    const-string v8, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " App doesnt have C2DM Permission"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_ba
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_8c

    .line 669
    .end local v0    # "c2dmPermExists":Z
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "theWhiteListPackage":Ljava/lang/String;
    :catchall_be
    move-exception v8

    monitor-exit v9
    :try_end_c0
    .catchall {:try_start_86 .. :try_end_c0} :catchall_be

    throw v8

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c1
    :try_start_c1
    monitor-exit v9
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_be

    .line 672
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c2
    iget-object v8, p0, mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_d5

    .line 673
    iget-object v9, p0, mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    .line 674
    :try_start_cd
    iget-object v8, p0, mTargetPackages:Ljava/util/HashSet;

    iget-object v10, p0, mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 675
    monitor-exit v9

    .line 677
    :cond_d5
    return-void

    .line 675
    :catchall_d6
    move-exception v8

    monitor-exit v9
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_d6

    throw v8
.end method

.method private unFreeze(Ljava/lang/String;)V
    .registers 6
    .param p1, "thePackageName"    # Ljava/lang/String;

    .prologue
    .line 1477
    if-eqz p1, :cond_48

    .line 1480
    :try_start_2
    iget-object v1, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->unFreezeApp(Ljava/lang/String;I)V

    .line 1482
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_28

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unFreezed App :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_28} :catch_29

    .line 1489
    :cond_28
    :goto_28
    return-void

    .line 1483
    :catch_29
    move-exception v0

    .line 1484
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_28

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unFreeze failed for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1487
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_48
    const-string v1, "LpnetManagerService"

    const-string/jumbo v2, "unFreeze called with null param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private updateDB(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceStopped"    # Ljava/lang/String;

    .prologue
    .line 1540
    sget-boolean v0, APP_FREEZER_LOG:Z

    if-eqz v0, :cond_27

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDB called for packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",forceStopped : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_27
    :try_start_27
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-nez v0, :cond_34

    .line 1544
    new-instance v0, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    iput-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    .line 1547
    :cond_34
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-eqz v0, :cond_85

    .line 1548
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    .line 1549
    const/4 v9, 0x0

    .line 1550
    .local v9, "retRows":I
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1551
    if-nez v9, :cond_80

    .line 1552
    const-string v2, "0"

    .line 1553
    .local v2, "dFreeze":Ljava/lang/String;
    iget-object v0, p0, mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1554
    const-string v2, "1"

    .line 1558
    :goto_59
    const-string v3, "0"

    .line 1559
    .local v3, "sFreeze":Ljava/lang/String;
    const-string v7, ""

    .line 1560
    .local v7, "spcmFreeze":Ljava/lang/String;
    iget-object v1, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_60} :catch_8c

    .line 1561
    :try_start_60
    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1562
    const-string v3, "1"

    .line 1564
    :cond_6a
    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1565
    const-string v7, "1"

    .line 1567
    :cond_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_89

    .line 1568
    :try_start_75
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const-string v5, ""

    const-string v6, ""

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1570
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    :cond_80
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V

    .line 1576
    .end local v9    # "retRows":I
    :cond_85
    :goto_85
    return-void

    .line 1556
    .restart local v2    # "dFreeze":Ljava/lang/String;
    .restart local v9    # "retRows":I
    :cond_86
    const-string v2, "0"
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_88} :catch_8c

    goto :goto_59

    .line 1567
    .restart local v3    # "sFreeze":Ljava/lang/String;
    .restart local v7    # "spcmFreeze":Ljava/lang/String;
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8c} :catch_8c

    .line 1572
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    .end local v9    # "retRows":I
    :catch_8c
    move-exception v8

    .line 1573
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handling DB : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85
.end method

.method private updateDBForLRU(Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1492
    .local p1, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v0, "LpnetManagerService"

    const-string/jumbo v4, "updateDBForLRU called"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :try_start_8
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-nez v0, :cond_15

    .line 1496
    new-instance v0, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    iput-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    .line 1499
    :cond_15
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-eqz v0, :cond_bb

    if-eqz p1, :cond_bb

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_bb

    .line 1500
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    .line 1501
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1502
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1503
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 1505
    .local v12, "usedTime":Ljava/lang/Long;
    const/4 v11, 0x0

    .line 1506
    .local v11, "retRows":I
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1508
    if-nez v11, :cond_2e

    .line 1509
    const-string v2, "0"

    .line 1510
    .local v2, "dFreeze":Ljava/lang/String;
    const-string v7, ""

    .line 1511
    .local v7, "spcmFreeze":Ljava/lang/String;
    const-string v3, "0"

    .line 1512
    .local v3, "sFreeze":Ljava/lang/String;
    iget-object v0, p0, mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1513
    const-string v2, "1"

    .line 1517
    :goto_68
    iget-object v4, p0, mPkgLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6b} :catch_8e

    .line 1518
    :try_start_6b
    iget-object v0, p0, mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1519
    const-string v3, "1"

    .line 1521
    :cond_75
    iget-object v0, p0, mSPCMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1522
    const-string v7, "1"

    .line 1524
    :cond_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_6b .. :try_end_80} :catchall_b2

    .line 1526
    :try_start_80
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const-string v4, "0"

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8d} :catch_8e

    goto :goto_2e

    .line 1533
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "retRows":I
    .end local v12    # "usedTime":Ljava/lang/Long;
    :catch_8e
    move-exception v8

    .line 1534
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1537
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_ae
    return-void

    .line 1515
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "dFreeze":Ljava/lang/String;
    .restart local v3    # "sFreeze":Ljava/lang/String;
    .restart local v7    # "spcmFreeze":Ljava/lang/String;
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "retRows":I
    .restart local v12    # "usedTime":Ljava/lang/Long;
    :cond_af
    :try_start_af
    const-string v2, "0"
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b1} :catch_8e

    goto :goto_68

    .line 1524
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v0

    .line 1529
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v7    # "spcmFreeze":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "retRows":I
    .end local v12    # "usedTime":Ljava/lang/Long;
    :cond_b5
    iget-object v0, p0, mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V

    goto :goto_ae

    .line 1531
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_bb
    const-string v0, "LpnetManagerService"

    const-string/jumbo v4, "lruMap null/size 0 (or) mDBMgr : is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c3} :catch_8e

    goto :goto_ae
.end method

.method private versionCheckAgainstDB(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "vEntry"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 419
    sget-boolean v5, APP_FREEZER_LOG:Z

    if-eqz v5, :cond_2a

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "versionCheckAgainstDB:: vEntry-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2a
    const/4 v1, 0x0

    .line 421
    .local v1, "inRange":Z
    if-eqz p1, :cond_80

    .line 422
    const-string v5, "\\s"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 423
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v2, p1, v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 424
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_3c
    :goto_3c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 425
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "element":Ljava/lang/String;
    invoke-direct {p0, v0}, parseEntry(Ljava/lang/String;)[I

    move-result-object v3

    .line 428
    .local v3, "versionInfo":[I
    aget v5, v3, v4

    packed-switch v5, :pswitch_data_82

    goto :goto_3c

    .line 438
    :pswitch_50
    sget-boolean v5, APP_FREEZER_LOG:Z

    if-eqz v5, :cond_3c

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ParseError:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 430
    :pswitch_6d
    aget v5, v3, v8

    if-lt p2, v5, :cond_3c

    aget v5, v3, v9

    if-gt p2, v5, :cond_3c

    .line 443
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "versionInfo":[I
    :goto_75
    return v4

    .line 434
    .restart local v0    # "element":Ljava/lang/String;
    .restart local v2    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "versionInfo":[I
    :pswitch_76
    aget v5, v3, v8

    if-lt p2, v5, :cond_3c

    aget v5, v3, v9

    if-gt p2, v5, :cond_3c

    .line 435
    const/4 v1, 0x1

    goto :goto_3c

    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "versionInfo":[I
    :cond_80
    move v4, v1

    .line 443
    goto :goto_75

    .line 428
    :pswitch_data_82
    .packed-switch -0x1
        :pswitch_50
        :pswitch_6d
        :pswitch_76
    .end packed-switch
.end method


# virtual methods
.method public enableDisableSolution(Z)V
    .registers 2
    .param p1, "pEnableSolution"    # Z

    .prologue
    .line 2114
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "thePackage"    # Ljava/lang/String;

    .prologue
    .line 1453
    if-eqz p1, :cond_50

    .line 1456
    :try_start_2
    iget-object v1, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1466
    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freezed App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_23} :catch_24

    .line 1473
    :cond_23
    :goto_23
    return-void

    .line 1467
    :catch_24
    move-exception v0

    .line 1468
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, APP_FREEZER_LOG:Z

    if-eqz v1, :cond_23

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to Forcestop Package :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception msg is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    const-string v1, "LpnetManagerService"

    const-string/jumbo v2, "forceStopPackage called with null param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public freezeApps(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "aForceStopBundle"    # Landroid/os/Bundle;

    .prologue
    .line 2063
    return-void
.end method

.method public gcmNotificationBroadcast(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2042
    return-void
.end method

.method public getLRUList(I)Ljava/util/Map;
    .registers 3
    .param p1, "unusedPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1988
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagedAppList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2009
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getManagedAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, getManagedAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public runFreezeBasedOnLRU()V
    .registers 3

    .prologue
    .line 2555
    iget-object v0, p0, nHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LpnetManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$8;-><init>(Lcom/android/server/LpnetManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2563
    return-void
.end method

.method public unFreezeApps([Ljava/lang/String;)V
    .registers 2
    .param p1, "aUnFreezeList"    # [Ljava/lang/String;

    .prologue
    .line 2089
    return-void
.end method

.method public updateLruInDB(I)V
    .registers 2
    .param p1, "unusedPeriod"    # I

    .prologue
    .line 1957
    return-void
.end method
