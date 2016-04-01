.class public Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/BridgeProxy$BridgeLog;,
        Lcom/android/server/bridge/BridgeProxy$PolicyChanged;,
        Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;,
        Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$RunnableCallback;,
        Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;,
        Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;,
        Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;,
        Lcom/android/server/bridge/BridgeProxy$IncomingHandler;,
        Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$PackageReceiver;,
        Lcom/android/server/bridge/BridgeProxy$Apps;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x1b58L

.field private static final DIR_FILEPATH:Ljava/lang/String; = "/data/misc/BridgeProxy"

.field private static final DST_FILENAME:Ljava/lang/String; = "dstCreateFile"

.field private static final FILE_EXPORT_POLICY_TYPE:I = 0x1

.field private static final FILE_IMPORT_POLICY_TYPE:I = 0x2

.field private static final KNOX_DEBUG:Z

.field private static final MAX_INIT_COUNT:I = 0xa

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_INTERNALSD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_USB:Ljava/lang/String; = "/storage/"

.field private static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final SRC_FILENAME:Ljava/lang/String; = "srcCreateFile"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

.field private badgeCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cb:Landroid/os/IRunnableCallback;

.field private dbObserver:Lcom/android/server/bridge/operations/DbObserver;

.field private mAccountChanged:Z

.field private mBridgeContext:Landroid/content/Context;

.field private mBridgePackage:Ljava/lang/String;

.field private final mBridgeProviderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerInfoResult:Landroid/content/CustomCursor;

.field private mContext:Landroid/content/Context;

.field private mCurrentInvalidKnoxName:Ljava/lang/String;

.field private mDelegateUserHandle:Landroid/os/UserHandle;

.field private mDelegateUserId:I

.field private mFirstTimePrefName:Ljava/lang/String;

.field private final mHandlerDoSync:Landroid/os/Handler;

.field private mHandlerPolicyChanged:Landroid/os/Handler;

.field private final mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

.field private final mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

.field private final mIBridgeProvider:Landroid/content/IProviderCallBack;

.field private final mIBridgeSync:Landroid/content/ISyncCallBack;

.field private final mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

.field private final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field private final mListPolicyChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/bridge/BridgeProxy$PolicyChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

.field private mPm:Landroid/os/PersonaManager;

.field private mProviderPrefName:Ljava/lang/String;

.field private mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field private mSyncerPrefName:Ljava/lang/String;

.field private final mThreadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mbridge:Landroid/os/RCPManager;

.field private policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

.field private preInstalledAppsMinusEmail:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

.field private result:Landroid/content/CustomCursor;

.field private final resultLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 111
    const-class v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, KNOX_DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "bridgePackage"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    iput-object v0, p0, ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

    .line 96
    iput-object v2, p0, mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    .line 116
    iput-object v2, p0, result:Landroid/content/CustomCursor;

    .line 117
    iput-object v2, p0, mCallerInfoResult:Landroid/content/CustomCursor;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, resultLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    .line 121
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, mIBridgeProvider:Landroid/content/IProviderCallBack;

    .line 122
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, mIBridgeSync:Landroid/content/ISyncCallBack;

    .line 123
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    .line 124
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    .line 125
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 127
    iput-object v2, p0, mbridge:Landroid/os/RCPManager;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mBridgeProviderList:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mThreadMap:Ljava/util/HashMap;

    .line 132
    iput-object v2, p0, mPm:Landroid/os/PersonaManager;

    .line 140
    iput-object v2, p0, policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 141
    iput-object v2, p0, mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListPolicyChanged:Ljava/util/List;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandlerDoSync:Landroid/os/Handler;

    .line 145
    iput-boolean v1, p0, mAccountChanged:Z

    .line 146
    iput-object v2, p0, mCurrentInvalidKnoxName:Ljava/lang/String;

    .line 155
    iput v1, p0, mDelegateUserId:I

    .line 156
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iput-object v0, p0, mDelegateUserHandle:Landroid/os/UserHandle;

    .line 157
    const-string v0, "com.samsung.knox.rcp.components"

    iput-object v0, p0, mBridgePackage:Ljava/lang/String;

    .line 159
    iput-object v2, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 160
    iput-object v2, p0, processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 161
    iput-object v2, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 162
    iput-object v2, p0, mFirstTimePrefName:Ljava/lang/String;

    .line 163
    iput-object v2, p0, mSyncerPrefName:Ljava/lang/String;

    .line 164
    iput-object v2, p0, mProviderPrefName:Ljava/lang/String;

    .line 166
    iput-object v2, p0, mBridgeContext:Landroid/content/Context;

    .line 1285
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, mMessenger:Landroid/os/Messenger;

    .line 2229
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, cb:Landroid/os/IRunnableCallback;

    .line 200
    iput p1, p0, mDelegateUserId:I

    .line 201
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, mDelegateUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, mDelegateUserHandle:Landroid/os/UserHandle;

    .line 202
    iput-object p2, p0, mBridgePackage:Ljava/lang/String;

    .line 203
    iput-object p3, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FIRST_TIME_PREF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDelegateUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mFirstTimePrefName:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYNCER_PREFS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDelegateUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSyncerPrefName:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROVIDER_PREFS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDelegateUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mProviderPrefName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    invoke-direct {p0}, doSyncForAllSyncers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mBridgeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 91
    iput-object p1, p0, mBridgeContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    invoke-direct {p0}, getBridgeContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/bridge/BridgeProxy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, initBadgeDataAndObserver(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mSyncerPrefName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mProviderPrefName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, policyChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, resultLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, result:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/CustomCursor;

    .prologue
    .line 91
    iput-object p1, p0, result:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mCallerInfoResult:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/CustomCursor;

    .prologue
    .line 91
    iput-object p1, p0, mCallerInfoResult:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, doSyncForSyncer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mHandlerDoSync:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    invoke-direct {p0}, getSyncPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mbridge:Landroid/os/RCPManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mBridgeProviderList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mBridgePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/bridge/BridgeProxy;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, getFilesPolicy(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, getBridgeStringResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, getBridgeStringResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/CustomCursor;
    .param p2, "x2"    # Landroid/content/CustomCursor;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    return-object v0
.end method

.method static synthetic access$4200(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, isBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/bridge/BridgeProxy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, mAccountChanged:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/IProviderCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mIBridgeProvider:Landroid/content/IProviderCallBack;

    return-object v0
.end method

.method static synthetic access$4900()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/bridge/BridgeProxy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget v0, p0, mDelegateUserId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mPm:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, mDelegateUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .param p1, "bdl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2377
    const-string v1, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2378
    .local v7, "cmd":Ljava/lang/String;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bridgeCmd() , cmd :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    if-eqz v1, :cond_1b1

    .line 2380
    const-string v1, "contactsquery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 2381
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2382
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "projection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2383
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2384
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2385
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "sortOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2387
    .local v6, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2389
    .local v11, "mCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v13

    .line 2462
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :goto_73
    return-object v13

    .line 2391
    :cond_74
    const-string v1, "contactsinsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 2392
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2393
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2395
    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 2396
    .local v14, "result":Landroid/net/Uri;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2397
    .local v13, "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_73

    .line 2400
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_aa
    const-string v1, "contactsdelete"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 2401
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2402
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2403
    .restart local v4    # "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2405
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2408
    .local v14, "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2409
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_73

    .line 2412
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    :cond_e7
    const-string v1, "contactsupdate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2413
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2414
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2415
    .restart local v15    # "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2416
    .restart local v4    # "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2418
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2421
    .restart local v14    # "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2422
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_73

    .line 2425
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_130
    const-string v1, "contactsbulkInsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 2426
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2427
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v15

    .line 2429
    .local v15, "values":[Landroid/os/Parcelable;
    const/4 v8, 0x0

    .line 2430
    .local v8, "content":[Landroid/content/ContentValues;
    if-eqz v15, :cond_15f

    .line 2431
    array-length v1, v15

    new-array v8, v1, [Landroid/content/ContentValues;

    .line 2432
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_153
    array-length v1, v15

    if-ge v10, v1, :cond_15f

    .line 2433
    aget-object v1, v15, v10

    check-cast v1, Landroid/content/ContentValues;

    aput-object v1, v8, v10

    .line 2432
    add-int/lit8 v10, v10, 0x1

    goto :goto_153

    .line 2436
    .end local v10    # "i":I
    :cond_15f
    if-eqz v8, :cond_17a

    .line 2437
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v14

    .line 2438
    .restart local v14    # "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2439
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_73

    .line 2442
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    :cond_17a
    const/4 v13, 0x0

    goto/16 :goto_73

    .line 2444
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "content":[Landroid/content/ContentValues;
    .end local v15    # "values":[Landroid/os/Parcelable;
    :cond_17d
    const-string v1, "contactsapplyBatch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    .line 2445
    const-string/jumbo v1, "operations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2448
    .local v12, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 2450
    .local v14, "result":[Landroid/content/ContentProviderResult;
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v1, v0, mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v16, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_19e
    .catch Landroid/content/OperationApplicationException; {:try_start_18f .. :try_end_19e} :catch_1ac

    move-result-object v14

    .line 2456
    :goto_19f
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2457
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_73

    .line 2452
    .end local v13    # "resp":Landroid/os/Bundle;
    :catch_1ac
    move-exception v9

    .line 2453
    .local v9, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_19f

    .line 2462
    .end local v9    # "e":Landroid/content/OperationApplicationException;
    .end local v12    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v14    # "result":[Landroid/content/ContentProviderResult;
    :cond_1b1
    const/4 v13, 0x0

    goto/16 :goto_73
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v1, "Proxy"

    .line 185
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor, ServiceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , MethodName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, p1}, Lcom/sec/enterprise/knox/seams/SEAMS;->forceAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_80

    .line 188
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 194
    throw v0

    .line 196
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_80
    const/4 v2, 0x0

    return v2
.end method

.method private checkHandler()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, mHandlerPolicyChanged:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 781
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, " onReceive RCP_POLICY_CHANGED removeCallbacksAndMessages "

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, mHandlerPolicyChanged:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 783
    iput-object v2, p0, mHandlerPolicyChanged:Landroid/os/Handler;

    .line 785
    :cond_13
    return-void
.end method

.method private doSyncForAllSyncers()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 1102
    iget v10, p0, mDelegateUserId:I

    if-eqz v10, :cond_136

    .line 1103
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , currentUserID :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mDelegateUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v10, p0, mContext:Landroid/content/Context;

    iget-object v11, p0, mSyncerPrefName:Ljava/lang/String;

    invoke-virtual {v10, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1106
    .local v9, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 1107
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1109
    .local v1, "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_136

    .line 1110
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1111
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v10, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    iget v11, p0, mDelegateUserId:I

    invoke-virtual {v10, v11}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1114
    .local v5, "persona_info":Landroid/os/Bundle;
    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_136

    .line 1116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1117
    .local v4, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1118
    .local v8, "syncerName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1120
    .local v7, "serviceName":Ljava/lang/String;
    if-eqz v8, :cond_63

    if-nez v7, :cond_86

    .line 1121
    :cond_63
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Issue doSyncForAllSyncers(); skipping null values: syncerName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; serviceName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1127
    :cond_86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1128
    .local v0, "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 1129
    .local v6, "policyValue":Ljava/lang/String;
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Sync during switch package+service == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " syncerName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const-string v10, "Contacts"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_be

    const-string v10, "Calendar"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 1135
    :cond_be
    const-string/jumbo v10, "knox-import-data"

    invoke-direct {p0, v8, v10}, getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1137
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , IMPORT_DATA policyValue  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    if-eqz v6, :cond_12a

    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12a

    .line 1139
    iget-object v10, p0, mbridge:Landroid/os/RCPManager;

    invoke-virtual {v10, v8, v13}, Landroid/os/RCPManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 1143
    :goto_ee
    invoke-direct {p0, v8, v13}, doSyncForSyncer(Ljava/lang/String;I)V

    .line 1145
    const-string/jumbo v10, "knox-export-data"

    invoke-direct {p0, v8, v10}, getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , EXPORT_DATA policyValue  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    if-eqz v6, :cond_130

    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_130

    .line 1149
    iget-object v10, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v10, v8}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 1153
    :goto_121
    iget-object v10, p0, mbridge:Landroid/os/RCPManager;

    iget v11, p0, mDelegateUserId:I

    invoke-virtual {v10, v8, v11}, Landroid/os/RCPManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_47

    .line 1141
    :cond_12a
    iget-object v10, p0, mbridge:Landroid/os/RCPManager;

    invoke-virtual {v10, v8, v13}, Landroid/os/RCPManager;->registerObserver(Ljava/lang/String;I)V

    goto :goto_ee

    .line 1151
    :cond_130
    iget-object v10, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v10, v8}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_121

    .line 1159
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    .end local v5    # "persona_info":Landroid/os/Bundle;
    .end local v6    # "policyValue":Ljava/lang/String;
    .end local v7    # "serviceName":Ljava/lang/String;
    .end local v8    # "syncerName":Ljava/lang/String;
    .end local v9    # "syncerPreferences":Landroid/content/SharedPreferences;
    :cond_136
    return-void
.end method

.method private doSyncForSyncer(Ljava/lang/String;I)V
    .registers 21
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "mUserID"    # I

    .prologue
    .line 1029
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " doSyncForSyncer, syncerName :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , mUserID :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, mSyncerPrefName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1032
    .local v14, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 1033
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 1035
    .local v12, "serviceName":Ljava/lang/String;
    if-eqz v8, :cond_165

    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_165

    .line 1036
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "serviceName":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1041
    .restart local v12    # "serviceName":Ljava/lang/String;
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Sync during switch package+service == "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " syncerName is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",Provider ID : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1045
    .local v6, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 1046
    .local v10, "policyValue":Ljava/lang/String;
    if-nez p2, :cond_166

    .line 1047
    const-string/jumbo v15, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1061
    :goto_9a
    if-eqz v10, :cond_19d

    const-string/jumbo v15, "false"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19d

    .line 1063
    const-string/jumbo v15, "dowhat"

    const-string v16, "DELETE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const-string/jumbo v15, "delete_synced_data_of_user"

    move/from16 v0, p2

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " delete synced data policyName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " providerID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " SyncerID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " syncerName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :goto_ff
    new-instance v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1079
    .local v13, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v5, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1080
    .local v5, "fullServiceName":Ljava/lang/String;
    iget-object v9, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1081
    .local v9, "packageName":Ljava/lang/String;
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "startRCPComponentsService = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for syncer "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1087
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1088
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v7, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v15, v0, mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v7, v15}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1089
    .local v7, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v15, "proxy"

    invoke-virtual {v2, v15, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1090
    const-string v15, "binderBundle"

    invoke-virtual {v6, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1092
    :try_start_156
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_165} :catch_1e2

    .line 1098
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "fullServiceName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mProxyMessenger":Landroid/os/Messenger;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "policyValue":Ljava/lang/String;
    .end local v13    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :cond_165
    :goto_165
    return-void

    .line 1051
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v10    # "policyValue":Ljava/lang/String;
    :cond_166
    :try_start_166
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1052
    .local v11, "req":Landroid/os/Bundle;
    const-string/jumbo v15, "syncerName"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v15, "action"

    const-string v16, "GetExportPolicy"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v15, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v11}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1055
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v15, "policyValue"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_194} :catch_197

    move-result-object v10

    goto/16 :goto_9a

    .line 1056
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "req":Landroid/os/Bundle;
    :catch_197
    move-exception v4

    .line 1057
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_9a

    .line 1072
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_19d
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " start syncing for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "for policy name ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from provider"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string/jumbo v15, "syncing_from_user"

    move/from16 v0, p2

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_ff

    .line 1093
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v5    # "fullServiceName":Ljava/lang/String;
    .restart local v7    # "mProxyMessenger":Landroid/os/Messenger;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v13    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catch_1e2
    move-exception v4

    .line 1094
    .local v4, "e":Ljava/lang/Exception;
    sget-object v15, TAG:Ljava/lang/String;

    const-string v16, "Unable to start service"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_165
.end method

.method private enableComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "compName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 584
    :try_start_1
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 586
    .local v3, "iPM":Landroid/content/pm/IPackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v0, "componentName":Landroid/content/ComponentName;
    iget v5, p0, mDelegateUserId:I

    invoke-interface {v3, v0, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 588
    .local v4, "setting":I
    if-eq v4, v6, :cond_20

    .line 589
    const/4 v5, 0x1

    const/4 v6, 0x1

    iget v7, p0, mDelegateUserId:I

    invoke-interface {v3, v0, v5, v6, v7}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_20} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_4c

    .line 598
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v4    # "setting":I
    :cond_20
    :goto_20
    return-void

    .line 593
    :catch_21
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", component :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not installed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 595
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4c
    move-exception v2

    .line 596
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20
.end method

.method private fillPreInstalledAppsMap()V
    .registers 3

    .prologue
    .line 408
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstalled apps start"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.infraware.polarisviewer5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.browser.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.setupwizard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gsf.login"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.feedback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.partnersetup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.street"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.backuptransport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.configupdater"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.gd.mobicore.pa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.baidu.map.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.amap.android.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.locationhistory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.soundalive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.myfiles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.osp.app.signin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.billing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.sprextension"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.gallery3d"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.mdm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.fingerprint.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.externalstorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.everglades.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.videoplayer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.SamsungContentsAgent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.app.pinboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.enterprise.mdm.vpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.helphub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstall apps end"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private getBridgeContext()Landroid/content/Context;
    .registers 7

    .prologue
    .line 2707
    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBridgePackage:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 2712
    :goto_b
    return-object v0

    .line 2710
    :catch_c
    move-exception v1

    .line 2711
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getBridgeStringResource(I)Ljava/lang/String;
    .registers 7
    .param p1, "resId"    # I

    .prologue
    .line 2730
    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, mBridgePackage:Ljava/lang/String;

    iget v4, p0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2732
    .local v1, "packageResources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v2

    .line 2735
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :goto_12
    return-object v2

    .line 2733
    :catch_13
    move-exception v0

    .line 2734
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "resId"    # I
    .param p2, "mCurrentInvalidKnoxName"    # Ljava/lang/String;

    .prologue
    .line 2741
    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, mBridgePackage:Ljava/lang/String;

    iget v4, p0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2743
    .local v1, "packageResources":Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v2

    .line 2746
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :goto_18
    return-object v2

    .line 2744
    :catch_19
    move-exception v0

    .line 2745
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    .line 2718
    :try_start_0
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, mBridgePackage:Ljava/lang/String;

    iget v5, p0, mDelegateUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2720
    .local v1, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v3, "string"

    iget-object v4, p0, mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2721
    .local v2, "resId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v3

    .line 2724
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    :goto_1b
    return-object v3

    .line 2722
    :catch_1c
    move-exception v0

    .line 2723
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "bridge package not found: "

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private getBridgeStringResourceId(Ljava/lang/String;)I
    .registers 7
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    .line 2752
    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, mBridgePackage:Ljava/lang/String;

    iget v4, p0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2754
    .local v1, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v2, "string"

    iget-object v3, p0, mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_18

    move-result v2

    .line 2757
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :goto_17
    return v2

    .line 2755
    :catch_18
    move-exception v0

    .line 2756
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const/4 v2, -0x1

    goto :goto_17
.end method

.method private getFilesPolicy(II)I
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "policyType"    # I

    .prologue
    .line 1025
    const/4 v0, 0x0

    return v0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 964
    const/4 v4, 0x0

    .line 967
    .local v4, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 970
    .local v2, "ident":J
    :try_start_5
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v5, p0, mPm:Landroid/os/PersonaManager;

    const-string/jumbo v6, "persona_policy"

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 974
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    iget v5, p0, mDelegateUserId:I

    invoke-virtual {v1, v5, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_56

    move-result-object v4

    .line 980
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-object v4

    .line 976
    :catch_56
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "mUserID"    # I

    .prologue
    .line 986
    const/4 v4, 0x0

    .line 987
    .local v4, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 990
    .local v2, "ident":J
    :try_start_5
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mUserID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v5, p0, mPm:Landroid/os/PersonaManager;

    const-string/jumbo v6, "persona_policy"

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 994
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v1, p3, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_5e

    move-result-object v4

    .line 1000
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :goto_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    return-object v4

    .line 996
    :catch_5e
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;
    .registers 7
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    .line 2356
    const/4 v1, 0x0

    .line 2357
    .local v1, "remoteCursor":Landroid/content/CustomCursor;
    if-eqz p1, :cond_29

    .line 2358
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2359
    new-instance v3, Landroid/database/CursorWindow;

    const-string v4, "contactsquery"

    invoke-direct {v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 2361
    .local v3, "window":Landroid/database/CursorWindow;
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2362
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursorWrapper;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/database/CrossProcessCursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 2364
    new-instance v1, Landroid/content/CustomCursor;

    .end local v1    # "remoteCursor":Landroid/content/CustomCursor;
    invoke-direct {v1, v3}, Landroid/content/CustomCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 2365
    .restart local v1    # "remoteCursor":Landroid/content/CustomCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setColumnNames([Ljava/lang/String;)V

    .line 2366
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setAutoClose(Z)V

    .line 2368
    invoke-virtual {v0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 2371
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursorWrapper;
    .end local v3    # "window":Landroid/database/CursorWindow;
    :cond_29
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2372
    .local v2, "resp":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2373
    return-object v2
.end method

.method private getSyncPolicy()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1006
    const/4 v2, 0x0

    .line 1008
    .local v2, "policy":Ljava/lang/String;
    :try_start_1
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSyncPolicy() called"

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v3, p0, mPm:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 1011
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    const-string v3, "Contacts"

    invoke-virtual {v1, v3}, Landroid/os/PersonaPolicyManager;->getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_34

    move-result-object v2

    .line 1016
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :goto_1a
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): policy value returned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    return-object v2

    .line 1012
    :catch_34
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private initBadgeDataAndObserver(I)V
    .registers 9
    .param p1, "initCount"    # I

    .prologue
    .line 378
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initBadgeDataAndObserver  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, mBridgeContext:Landroid/content/Context;

    if-eqz v0, :cond_66

    .line 380
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v1, p0, mBridgeContext:Landroid/content/Context;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget v4, p0, mDelegateUserId:I

    iget-object v5, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/bridge/operations/ProcessBadgeData;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/server/bridge/BridgeProxy;ILcom/android/server/bridge/operations/SimplePersonaInfos;)V

    iput-object v0, p0, processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 381
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver;

    iget-object v1, p0, mBridgeContext:Landroid/content/Context;

    iget v2, p0, mDelegateUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/DbObserver;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 383
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "intitalize the badge count hash map"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, initializeShortcutBadgeCountMap()V

    .line 387
    :try_start_4f
    iget-object v0, p0, processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    if-eqz v0, :cond_60

    iget v0, p0, mDelegateUserId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_60

    .line 388
    iget-object v0, p0, processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget v1, p0, mDelegateUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->requestTrySync(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_61

    .line 405
    :cond_60
    :goto_60
    return-void

    .line 390
    :catch_61
    move-exception v6

    .line 391
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    .line 394
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_66
    const/16 v0, 0xa

    if-gt p1, v0, :cond_60

    .line 395
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "initBadgeDataAndObserver postDelayed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, mHandlerDoSync:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$2;-><init>(Lcom/android/server/bridge/BridgeProxy;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_60
.end method

.method private initializeShortcutBadgeCountMap()V
    .registers 12

    .prologue
    .line 509
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "Initializing hash map"

    invoke-static {v0, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v7, 0x0

    .line 511
    .local v7, "badgeCursor":Landroid/database/Cursor;
    const-string v6, "content://com.sec.badge/apps"

    .line 512
    .local v6, "BADGE_PROVIDER_URI":Ljava/lang/String;
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 513
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, badgeCountMap:Ljava/util/Map;

    .line 514
    const-string/jumbo v10, "|"

    .line 517
    .local v10, "separator":Ljava/lang/String;
    invoke-direct {p0}, getBridgeContext()Landroid/content/Context;

    move-result-object v8

    .line 520
    .local v8, "mBridgeCtx":Landroid/content/Context;
    if-eqz v8, :cond_fb

    .line 521
    :try_start_20
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 525
    iget v0, p0, mDelegateUserId:I

    if-eqz v0, :cond_fb

    .line 526
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER IS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mDelegateUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz v7, :cond_fb

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_fb

    .line 529
    :goto_64
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 531
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "badgecount"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "class"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, "packageClassAppended":Ljava/lang/String;
    iget-object v0, p0, badgeCountMap:Ljava/util/Map;

    const-string v2, "badgecount"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f2
    .catchall {:try_start_20 .. :try_end_f2} :catchall_f4

    goto/16 :goto_64

    .line 552
    .end local v9    # "packageClassAppended":Ljava/lang/String;
    :catchall_f4
    move-exception v0

    if-eqz v7, :cond_fa

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_fa
    throw v0

    .line 552
    :cond_fb
    if-eqz v7, :cond_100

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_100
    return-void
.end method

.method private insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;
    .registers 22
    .param p1, "raw_contact"    # Landroid/content/CustomCursor;
    .param p2, "contact_data"    # Landroid/content/CustomCursor;

    .prologue
    .line 2576
    const-string/jumbo v3, "vnd.sec.contact.phone"

    .line 2577
    .local v3, "ACCOUNT_TYPE":Ljava/lang/String;
    const-string/jumbo v2, "vnd.sec.contact.phone"

    .line 2578
    .local v2, "ACCOUNT_NAME_STR":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2579
    .local v5, "CON_RAW_CONTACTS_URI":Landroid/net/Uri;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2581
    .local v4, "CON_DATA_URI":Landroid/net/Uri;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2582
    .local v7, "bundle":Landroid/os/Bundle;
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertContact() START"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    if-eqz p1, :cond_1b

    if-nez p2, :cond_3f

    .line 2585
    :cond_1b
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "raw_contact OR contact_data is null. Do nothing"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    if-eqz p1, :cond_28

    .line 2587
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->close()V

    .line 2589
    :cond_28
    if-eqz p2, :cond_2d

    .line 2590
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->close()V

    .line 2593
    :cond_2d
    :try_start_2d
    const-string/jumbo v16, "result"

    const-string/jumbo v17, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_3b

    .line 2702
    :goto_3a
    return-object v7

    .line 2595
    :catch_3b
    move-exception v10

    .line 2596
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2601
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_1f0

    .line 2608
    const-string v16, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getLong(I)J

    move-result-wide v14

    .line 2610
    .local v14, "s_id":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2611
    .local v13, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string v17, "account_type"

    const-string/jumbo v18, "vnd.sec.contact.phone"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string v17, "account_name"

    const-string/jumbo v18, "vnd.sec.contact.phone"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string/jumbo v17, "starred"

    const-string/jumbo v18, "starred"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string/jumbo v17, "display_name_source"

    const-string/jumbo v18, "display_name_source"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string/jumbo v17, "raw_contact_is_read_only"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    if-eqz p2, :cond_221

    :try_start_c2
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->getCount()I

    move-result v16

    if-eqz v16, :cond_221

    .line 2631
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToFirst()Z

    .line 2634
    :cond_cb
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 2637
    .local v6, "builder_data":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "mimetype"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2640
    .local v12, "mimetype":Ljava/lang/String;
    const-string/jumbo v16, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2642
    const-string/jumbo v16, "is_primary"

    const-string/jumbo v17, "is_primary"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2645
    const-string/jumbo v16, "is_super_primary"

    const-string/jumbo v17, "is_super_primary"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2651
    const-string/jumbo v16, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f8

    .line 2653
    const-string/jumbo v16, "data14"

    const-string/jumbo v17, "data14"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2657
    const-string/jumbo v16, "data15"

    const-string/jumbo v17, "data15"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getBlob(I)[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2677
    :cond_171
    const-string/jumbo v16, "is_read_only"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2678
    const-string/jumbo v16, "raw_contact_id"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2680
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    :cond_196
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToNext()Z
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_199} :catch_22a

    move-result v16

    if-nez v16, :cond_cb

    .line 2691
    .end local v6    # "builder_data":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "mimetype":Ljava/lang/String;
    :goto_19c
    :try_start_19c
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "InsertContacts , mDelegateUserHandle : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ,UserHandle.myUserId() :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, mBridgeContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "com.android.contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 2694
    .local v9, "cpr":[Landroid/content/ContentProviderResult;
    const-string/jumbo v16, "result"

    const-string/jumbo v17, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    sget-object v16, TAG:Ljava/lang/String;

    const-string v17, "Contact inserted successfully"

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1f0} :catch_233

    .line 2700
    .end local v9    # "cpr":[Landroid/content/ContentProviderResult;
    .end local v13    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v14    # "s_id":J
    :cond_1f0
    :goto_1f0
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->close()V

    .line 2701
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->close()V

    goto/16 :goto_3a

    .line 2661
    .restart local v6    # "builder_data":Landroid/content/ContentProviderOperation$Builder;
    .restart local v12    # "mimetype":Ljava/lang/String;
    .restart local v13    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v14    # "s_id":J
    :cond_1f8
    :try_start_1f8
    const-string/jumbo v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_196

    .line 2665
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v8

    .line 2667
    .local v8, "column_names":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_208
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_171

    .line 2668
    aget-object v16, v8, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2667
    add-int/lit8 v11, v11, 0x1

    goto :goto_208

    .line 2684
    .end local v6    # "builder_data":Landroid/content/ContentProviderOperation$Builder;
    .end local v8    # "column_names":[Ljava/lang/String;
    .end local v11    # "k":I
    .end local v12    # "mimetype":Ljava/lang/String;
    :cond_221
    sget-object v16, TAG:Ljava/lang/String;

    const-string v17, "contact data is null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_228} :catch_22a

    goto/16 :goto_19c

    .line 2686
    :catch_22a
    move-exception v10

    .line 2687
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2688
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->moveToNext()Z

    goto/16 :goto_19c

    .line 2696
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_233
    move-exception v10

    .line 2697
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f0
.end method

.method private static isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    .registers 11
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2486
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "com.android.providers.contacts"

    aput-object v7, v0, v5

    const-string v7, "com.android.systemui"

    aput-object v7, v0, v6

    .line 2490
    .local v0, "allowedPackages":[Ljava/lang/String;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAllowedPackagesForBridgeCmd : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    if-nez p0, :cond_29

    .line 2502
    :cond_28
    :goto_28
    return v5

    .line 2496
    :cond_29
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2c
    if-ge v2, v3, :cond_28

    aget-object v4, v1, v2

    .line 2497
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    move v5, v6

    .line 2498
    goto :goto_28

    .line 2496
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c
.end method

.method private static isBridgeCmd(Ljava/lang/String;)Z
    .registers 10
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2466
    const/4 v7, 0x6

    new-array v1, v7, [Ljava/lang/String;

    const-string v7, "contactsquery"

    aput-object v7, v1, v5

    const-string v7, "contactsinsert"

    aput-object v7, v1, v6

    const/4 v7, 0x2

    const-string v8, "contactsdelete"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "contactsupdate"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "contactsbulkInsert"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "contactsapplyBatch"

    aput-object v8, v1, v7

    .line 2471
    .local v1, "cmdList":[Ljava/lang/String;
    if-nez p0, :cond_24

    .line 2482
    :goto_23
    return v5

    .line 2475
    :cond_24
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_27
    if-ge v2, v3, :cond_36

    aget-object v4, v0, v2

    .line 2476
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    move v5, v6

    .line 2477
    goto :goto_23

    .line 2475
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 2481
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_36
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isBridgeCmd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method private kioskSetup()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 566
    new-array v2, v9, [[Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "com.android.settings"

    aput-object v6, v5, v7

    const-string v6, "com.android.settings.TetherSettings"

    aput-object v6, v5, v8

    aput-object v5, v2, v7

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "com.android.settings"

    aput-object v6, v5, v7

    const-string v6, "com.android.settings.Settings$TetherSettingsActivity"

    aput-object v6, v5, v8

    aput-object v5, v2, v8

    .line 576
    .local v2, "enableComponents_com":[[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_20
    if-ge v3, v4, :cond_2e

    aget-object v0, v1, v3

    .line 577
    .local v0, "anEnableComponents_com":[Ljava/lang/String;
    aget-object v5, v0, v7

    aget-object v6, v0, v8

    invoke-direct {p0, v5, v6}, enableComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 580
    .end local v0    # "anEnableComponents_com":[Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 26
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyChangedForUser"    # I

    .prologue
    .line 789
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "policyChanged , syncerName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , policyname :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , policyChangedForUser : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,mDelegateUserId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, mDelegateUserId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget v6, v0, mDelegateUserId:I

    .line 792
    .local v6, "currentUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mSyncerPrefName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 794
    .local v17, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 796
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v14

    .line 798
    .local v14, "parent":I
    move/from16 v0, p3

    if-ne v14, v0, :cond_7e

    .line 799
    sget-object v18, TAG:Ljava/lang/String;

    const-string/jumbo v19, "parent == policyChangedForUser so retur"

    invoke-static/range {v18 .. v19}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_7d
    :goto_7d
    return-void

    .line 803
    :cond_7e
    if-eqz v12, :cond_7d

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_7d

    .line 804
    new-instance v16, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 805
    .local v16, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 806
    .local v8, "fullServiceName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 808
    .local v13, "packageName":Ljava/lang/String;
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " policyChanged, package == "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; service == "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .local v5, "cn":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 812
    .local v9, "mIntent":Landroid/content/Intent;
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 814
    const/4 v15, 0x0

    .line 816
    .local v15, "policyValue":Ljava/lang/String;
    const-string/jumbo v18, "knox-import-data"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24c

    .line 818
    const-string/jumbo v18, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 821
    if-eqz v15, :cond_1ea

    const-string/jumbo v18, "false"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1ea

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v18

    if-eqz v18, :cond_168

    .line 823
    const-string/jumbo v18, "dowhat"

    const-string v19, "DELETE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string/jumbo v18, "delete_synced_data_of_user"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " delete synced data policyName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " userId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " parent = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " syncerName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_168
    move-object/from16 v0, p0

    iget-object v0, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 841
    :goto_179
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 842
    .local v4, "bundle":Landroid/os/Bundle;
    new-instance v11, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v0, v0, mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 843
    .local v11, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v18, "proxy"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 844
    const-string v18, "binderBundle"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 847
    if-eqz p3, :cond_1ac

    .line 848
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v10

    .line 849
    .local v10, "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v10, :cond_7d

    .line 852
    .end local v10    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1ac
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " RCP_POLICY_CHANGED started for sync/delete ComponentName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1db} :catch_1dd

    goto/16 :goto_7d

    .line 856
    :catch_1dd
    move-exception v7

    .line 857
    .local v7, "e":Ljava/lang/Exception;
    sget-object v18, TAG:Ljava/lang/String;

    const-string v19, "Unable to start service"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7d

    .line 832
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "mProxyMessenger":Landroid/os/Messenger;
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, mPm:Landroid/os/PersonaManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v18

    if-eqz v18, :cond_239

    .line 833
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " start syncing provider "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "for policy name ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for syncer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string/jumbo v18, "syncing_from_user"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    :cond_239
    move-object/from16 v0, p0

    iget-object v0, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->registerObserver(Ljava/lang/String;I)V

    goto/16 :goto_179

    .line 861
    :cond_24c
    const-string/jumbo v18, "knox-export-data"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 863
    const-string/jumbo v18, "knox-export-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 865
    if-eqz v15, :cond_293

    const-string/jumbo v18, "false"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_293

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 871
    :goto_282
    move-object/from16 v0, p0

    iget-object v0, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_7d

    .line 868
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_282
.end method


# virtual methods
.method public getBadgeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, badgeCountMap:Ljava/util/Map;

    return-object v0
.end method

.method public registerObserver(Ljava/lang/String;)V
    .registers 3
    .param p1, "mSyncer"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v0, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_9

    .line 602
    iget-object v0, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    .line 604
    :cond_9
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 212
    invoke-direct/range {p0 .. p0}, getBridgeContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mBridgeContext:Landroid/content/Context;

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, mDelegateUserId:I

    move/from16 v25, v0

    .line 214
    .local v25, "uid":I
    move-object/from16 v0, p0

    iget v8, v0, mDelegateUserId:I

    .line 215
    .local v8, "UserId":I
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy is starting for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mFirstTimePrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 219
    .local v13, "firstTimePreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    move-object/from16 v0, p0

    iput-object v2, v0, mPm:Landroid/os/PersonaManager;

    .line 221
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy user id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, initBadgeDataAndObserver(I)V

    .line 225
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, preInstalledAppsMinusEmail:Ljava/util/Set;

    .line 226
    invoke-direct/range {p0 .. p0}, fillPreInstalledAppsMap()V

    .line 228
    const-string v2, "FIRST_TIME"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18c

    .line 231
    const/16 v14, 0x80

    .line 232
    .local v14, "flags":I
    :try_start_91
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 234
    .local v17, "iPM":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget v2, v0, mDelegateUserId:I

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v22

    .line 236
    .local v22, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 238
    .local v10, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mProviderPrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 240
    .local v20, "providerPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mSyncerPrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 243
    .local v24, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_c8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 244
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 246
    .local v11, "bundle":Landroid/os/Bundle;
    if-eqz v11, :cond_c8

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 249
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_e6
    :goto_e6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 250
    .local v18, "key":Ljava/lang/String;
    if-eqz v18, :cond_e6

    .line 253
    const-string v2, "RCPSyncerName_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cb

    .line 255
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 256
    .local v21, "serviceName":Ljava/lang/String;
    const-string v2, "RCPSyncerName_"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 257
    .local v23, "syncerName":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; syncerName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz v21, :cond_e6

    .line 260
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding syncer for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 263
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_186
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_186} :catch_188

    goto/16 :goto_e6

    .line 285
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "providerPreferences":Landroid/content/SharedPreferences;
    .end local v21    # "serviceName":Ljava/lang/String;
    .end local v22    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "syncerName":Ljava/lang/String;
    .end local v24    # "syncerPreferences":Landroid/content/SharedPreferences;
    :catch_188
    move-exception v12

    .line 286
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    .line 290
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v14    # "flags":I
    :cond_18c
    :goto_18c
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iput-object v2, v0, mbridge:Landroid/os/RCPManager;

    .line 292
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, " BridgeProxy onCreate"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, mbridge:Landroid/os/RCPManager;

    const-string v3, "ALL_PROVIDERS"

    move-object/from16 v0, p0

    iget-object v4, v0, mIBridgeProvider:Landroid/content/IProviderCallBack;

    move-object/from16 v0, p0

    iget v6, v0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/RCPManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mIBridgeSync:Landroid/content/ISyncCallBack;

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerSync(Landroid/content/ISyncCallBack;I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 301
    :try_start_1f1
    move-object/from16 v0, p0

    iget-object v2, v0, mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, cb:Landroid/os/IRunnableCallback;

    move-object/from16 v0, p0

    iget v6, v0, mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/RCPManager;->registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_204} :catch_36f

    .line 307
    :goto_204
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 313
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iget-object v4, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    iget-object v4, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 324
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 329
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_2ba

    move-object/from16 v0, p0

    iget v2, v0, mDelegateUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2ba

    .line 334
    invoke-direct/range {p0 .. p0}, kioskSetup()V

    .line 337
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v2, v0, mHandlerDoSync:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$1;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    .line 266
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v11    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "flags":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "iPM":Landroid/content/pm/IPackageManager;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "providerPreferences":Landroid/content/SharedPreferences;
    .restart local v22    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v24    # "syncerPreferences":Landroid/content/SharedPreferences;
    :cond_2cb
    :try_start_2cb
    const-string v2, "RCPProviderName_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 269
    .restart local v21    # "serviceName":Ljava/lang/String;
    const-string v2, "RCPProviderName_"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 270
    .local v19, "providerName":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; providerName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-eqz v21, :cond_e6

    .line 273
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding provider for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 277
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_e6

    .line 283
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "providerName":Ljava/lang/String;
    .end local v21    # "serviceName":Ljava/lang/String;
    :cond_35f
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "FIRST_TIME"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_36d
    .catch Landroid/os/RemoteException; {:try_start_2cb .. :try_end_36d} :catch_188

    goto/16 :goto_18c

    .line 302
    .end local v10    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "flags":I
    .end local v17    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v20    # "providerPreferences":Landroid/content/SharedPreferences;
    .end local v22    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "syncerPreferences":Landroid/content/SharedPreferences;
    :catch_36f
    move-exception v12

    .line 303
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_204
.end method

.method public stop()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 879
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "----- stop called -----"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :try_start_8
    iget-object v4, p0, policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    if-eqz v4, :cond_13

    .line 883
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 885
    :cond_13
    iget-object v4, p0, mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    if-eqz v4, :cond_1e

    .line 886
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 887
    :cond_1e
    iget-object v4, p0, mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    if-eqz v4, :cond_29

    .line 888
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_29} :catch_a7

    .line 894
    :cond_29
    :goto_29
    iget-object v4, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v4, :cond_33

    .line 895
    iget-object v4, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 897
    :cond_33
    iget-object v4, p0, processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/bridge/operations/ProcessBadgeData;->clear(Landroid/content/Context;)V

    .line 899
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mFirstTimePrefName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 900
    .local v1, "firstPrefs":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 901
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mFirstTimePrefName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 903
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 906
    :cond_5e
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mSyncerPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 907
    .local v3, "syncerPrefs":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 908
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mSyncerPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 913
    :cond_82
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mProviderPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 914
    .local v2, "providerPrefs":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 915
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mProviderPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 917
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 919
    :cond_a6
    return-void

    .line 890
    .end local v1    # "firstPrefs":Ljava/io/File;
    .end local v2    # "providerPrefs":Ljava/io/File;
    .end local v3    # "syncerPrefs":Ljava/io/File;
    :catch_a7
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_29
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .registers 3
    .param p1, "mSyncer"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v0, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_9

    .line 608
    iget-object v0, p0, dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 610
    :cond_9
    return-void
.end method
