.class public Lcom/android/server/SdpManagerService;
.super Lcom/sec/sdp/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$1;,
        Lcom/android/server/SdpManagerService$EngineMonitor;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$ActionReceiver;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    }
.end annotation


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final CMK_DEBUG:Z = false

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final ENABLE_ENGINE_MONITOR:Z = false

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final KEK_LEN:I = 0x20

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field public static final SDK_CURRENT_VERSION:D = 1.1

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDPK_PWD_LEN:I = 0x20

.field public static final SDP_ACTIVE:I = 0x1

.field public static final SDP_BOOTED:I = 0x1

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_INACTIVE:I = 0x2

.field public static final SDP_LATEST_VERSION:I = 0x4

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private bootComplete:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCMKMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mEnginState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPolicyManager:Lcom/android/server/SdpPolicyManager;

.field private mResetPwdKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mUM:Landroid/os/UserManager;

.field private mWaitForPassword:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-object v0, sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Lcom/sec/sdp/ISdpManagerService$Stub;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mStateMap:Ljava/util/HashMap;

    .line 154
    iput-object v1, p0, mPolicyManager:Lcom/android/server/SdpPolicyManager;

    .line 172
    iput-boolean v2, p0, mWaitForPassword:Z

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSdpEngineDbLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSdpEngineMap:Landroid/util/SparseArray;

    .line 179
    iput-object v1, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 227
    iput-boolean v2, p0, bootComplete:Z

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mEnginState:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mCMKMap:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mResetPwdKeyMap:Ljava/util/Map;

    .line 233
    iput-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 234
    iput-object v1, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 236
    iput-object v1, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 237
    iput-object v1, p0, mUM:Landroid/os/UserManager;

    .line 238
    iput-object v1, p0, mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

    .line 241
    iput-object v1, p0, mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 242
    iput-object v1, p0, handlerThread:Landroid/os/HandlerThread;

    .line 2473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mBinderListeners:Ljava/util/Map;

    .line 250
    sput-object p1, sContext:Landroid/content/Context;

    .line 251
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdpManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, handlerThread:Landroid/os/HandlerThread;

    .line 253
    iget-object v0, p0, handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 254
    new-instance v0, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v1, p0, handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 255
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUM:Landroid/os/UserManager;

    .line 256
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, handleUserAdded(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, handlePkgRemoved(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p0}, checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpServiceKeeper;

    .prologue
    .line 145
    iput-object p1, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object p1
.end method

.method static synthetic access$2900()Landroid/content/Context;
    .registers 1

    .prologue
    .line 145
    sget-object v0, sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 145
    iput-object p1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/TimaHelper;

    .prologue
    .line 145
    iput-object p1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    .line 145
    iput-object p1, p0, mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 145
    iput-object p1, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 145
    iget-object v0, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/SdpManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, bootInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .registers 7
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "x5"    # [B

    .prologue
    .line 145
    invoke-direct/range {p0 .. p5}, addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/SdpManagerService;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 145
    invoke-direct {p0, p1}, zeroOut([B)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/SdpManagerService;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .registers 13
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "cmk"    # [B

    .prologue
    .line 831
    const/4 v5, 0x0

    .line 833
    .local v5, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-nez p4, :cond_5c

    .line 835
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 836
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .restart local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    :goto_e
    if-eqz p5, :cond_61

    .line 848
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, addEngineNative(II[B)Z

    move-result v0

    if-nez v0, :cond_68

    .line 849
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle addEngineNative ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/16 v6, -0xc

    .line 871
    :goto_3c
    return v6

    .line 838
    :cond_3d
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: custom engine requires creation parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/16 v6, -0xb

    goto :goto_3c

    .line 844
    :cond_5c
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_e

    .line 853
    :cond_61
    const-string v0, "SdpManagerService"

    const-string v1, "No cmk for adding engine. :: this must be migration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_68
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/util/List;)I

    move-result v6

    .line 859
    .local v6, "ret":I
    if-nez v6, :cond_aa

    .line 860
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 861
    iget-object v0, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 863
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 864
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 865
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "engine added! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 868
    :cond_aa
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 993
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v1

    .line 995
    .local v1, "id":I
    if-gez v1, :cond_4c

    .line 996
    const/16 v0, 0x3e8

    .line 997
    .local v0, "candidateId":I
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 999
    :goto_13
    :try_start_13
    iget-object v2, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1001
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_49

    .line 1003
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id assigned. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    .end local v0    # "candidateId":I
    :goto_48
    return v0

    .line 1001
    .restart local v0    # "candidateId":I
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    .end local v0    # "candidateId":I
    :cond_4c
    move v0, v1

    .line 1006
    goto :goto_48
.end method

.method private bootInternal(I)I
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 1051
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-direct {p0, p1}, bootNative(I)I

    move-result v0

    return v0
.end method

.method private bootNative(I)I
    .registers 14
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 2299
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2300
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_24

    .line 2307
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2308
    :try_start_c
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2309
    if-eqz v0, :cond_23

    .line 2310
    iget-object v2, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2311
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2312
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2314
    :cond_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_4e

    .line 2317
    :cond_24
    if-nez v0, :cond_c0

    .line 2325
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-nez v2, :cond_51

    .line 2326
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not knox container! boot failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    const/16 v8, -0xb

    .line 2384
    :goto_4d
    return v8

    .line 2314
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v2

    .line 2330
    :cond_51
    const-string v2, "SdpManagerService"

    const-string v3, "Migration from SDP v1(TMR)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2332
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_79

    .line 2333
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: migration attempt failed. unknown userid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    const/16 v8, -0xa

    goto :goto_4d

    .line 2337
    :cond_79
    const-string v2, "SdpManagerService"

    const-string v3, "bootInternal :: SDP user is there but no SdpEngineInfo. This must be SDP v1 -> v1.1 migration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move v2, p1

    move v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2349
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v9, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2351
    :try_start_8d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2353
    .local v8, "ret":I
    monitor-exit v9
    :try_end_9e
    .catchall {:try_start_8d .. :try_end_9e} :catchall_bd

    .line 2355
    if-eqz v8, :cond_c0

    .line 2356
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 2353
    .end local v8    # "ret":I
    :catchall_bd
    move-exception v2

    :try_start_be
    monitor-exit v9
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v2

    .line 2361
    .end local v1    # "alias":Ljava/lang/String;
    :cond_c0
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, nativeOnBoot(II)I

    move-result v2

    if-eqz v2, :cond_ea

    .line 2362
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootNative :: failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const/16 v8, -0xc

    goto/16 :goto_4d

    .line 2366
    :cond_ea
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2367
    const/4 v2, 0x1

    :try_start_ee
    invoke-direct {p0, v0, v2}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2368
    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_140

    .line 2370
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v11, :cond_146

    .line 2371
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: upgrade detected. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-direct {p0, v0, v10}, onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    const/16 v3, -0xd

    if-ne v2, v3, :cond_146

    .line 2375
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2376
    const/4 v2, 0x1

    :try_start_130
    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 2377
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2378
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2379
    monitor-exit v3
    :try_end_13d
    .catchall {:try_start_130 .. :try_end_13d} :catchall_143

    .line 2380
    const/4 v8, -0x4

    goto/16 :goto_4d

    .line 2368
    :catchall_140
    move-exception v2

    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw v2

    .line 2379
    :catchall_143
    move-exception v2

    :try_start_144
    monitor-exit v3
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v2

    .line 2384
    :cond_146
    const/4 v8, 0x0

    goto/16 :goto_4d
.end method

.method private cacheMasterKey(ILjava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "cmk"    # Ljava/lang/String;

    .prologue
    .line 1606
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheMasterKey :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1609
    iget-object v0, p0, mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_29
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v1, "SdpManagerService"

    .line 260
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_57

    .line 261
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

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 264
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 266
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_57
    const/4 v2, 0x0

    return v2
.end method

.method private clearCachedMasterKey(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 1586
    iget-object v1, p0, mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1587
    iget-object v1, p0, mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1589
    .local v0, "cmk":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCachedMasterKey (CMK) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    if-eqz v0, :cond_35

    invoke-direct {p0, v0}, zeroOut(Ljava/lang/String;)V

    .line 1591
    :cond_35
    iget-object v1, p0, mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    .end local v0    # "cmk":Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method private clearResetPasswordKey(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 1596
    iget-object v1, p0, mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1597
    iget-object v1, p0, mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1599
    .local v0, "resetPwdKey":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearResetPasswordKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    if-eqz v0, :cond_35

    invoke-direct {p0, v0}, zeroOut(Ljava/lang/String;)V

    .line 1601
    :cond_35
    iget-object v1, p0, mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    .end local v0    # "resetPwdKey":Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method private createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;

    .prologue
    .line 875
    if-nez p1, :cond_4

    const/4 v1, 0x0

    .line 966
    :goto_3
    return-object v1

    .line 877
    :cond_4
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAdded :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 881
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_92

    .line 882
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseDir exists but not a directory! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v1, 0x0

    goto :goto_3

    .line 886
    :cond_6d
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_92

    .line 887
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 892
    :cond_92
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_107

    .line 893
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object p3

    .line 894
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 896
    .local v3, "entry":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 897
    .local v4, "token":J
    iget-object v6, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_d9

    .line 898
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error in addEngine failed to store resetToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 904
    :cond_d9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    invoke-direct {p0, v3}, zeroOut([B)V

    .line 913
    .end local v3    # "entry":[B
    .end local v4    # "token":J
    :cond_df
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 917
    if-eqz p2, :cond_ed

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_113

    .line 918
    :cond_ed
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "cmk":Ljava/lang/String;
    :goto_fb
    if-nez v1, :cond_11a

    .line 925
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t generate CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 907
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_107
    if-nez p3, :cond_df

    .line 908
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t create keys for MDPFF SDP without RST_TOKEN"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 921
    :cond_113
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cmk":Ljava/lang/String;
    goto :goto_fb

    .line 929
    :cond_11a
    if-eqz p2, :cond_122

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_142

    .line 930
    :cond_122
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_12a
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v1, p3, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_163

    .line 939
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(RST_TOKEN) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 932
    :cond_142
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_12a

    .line 933
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(PW) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 944
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_15a
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateAndStoreCMK(ILjava/lang/String;Ljava/lang/String;)Z

    .line 949
    :cond_163
    const/4 v2, 0x0

    .line 950
    .local v2, "encodedCmk":Ljava/lang/String;
    if-nez p2, :cond_180

    .line 951
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p3, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 958
    :goto_173
    if-nez v2, :cond_18e

    .line 959
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "internal error!, can\'t retrieve CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 954
    :cond_180
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p2, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_173

    .line 963
    :cond_18e
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 964
    .local v1, "cmk":[B
    invoke-direct {p0, v2}, zeroOut(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .registers 7
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3673
    const/4 v0, 0x0

    .line 3674
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3675
    .local v2, "token":J
    iget-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3676
    iget-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3677
    const/4 v0, 0x1

    .line 3679
    :cond_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3680
    return v0
.end method

.method private dumpCache()V
    .registers 1

    .prologue
    .line 1622
    return-void
.end method

.method private enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 3791
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 3792
    .local v1, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 3793
    const/4 v2, -0x5

    .line 3806
    :goto_c
    return v2

    .line 3795
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3796
    const/4 v2, -0x2

    goto :goto_c

    .line 3798
    :cond_15
    const/4 v0, 0x0

    .line 3799
    .local v0, "cmk":Ljava/lang/String;
    iget-object v2, p0, mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3800
    iget-object v2, p0, mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmk":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3801
    .restart local v0    # "cmk":Ljava/lang/String;
    iget-object v2, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3802
    const/4 v2, 0x0

    goto :goto_c

    .line 3804
    :cond_38
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "enrollInternal :: Master key is not found in the map"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    :cond_40
    const/16 v2, -0x63

    goto :goto_c
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 1506
    iget-object v1, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1508
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_23

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "engine map doesn\'t have engine info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_23
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1479
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1480
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1481
    .local v5, "userId":I
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v7

    if-nez v7, :cond_19

    move-object v1, v6

    .line 1502
    .end local v5    # "userId":I
    :cond_18
    :goto_18
    return-object v1

    .line 1484
    .restart local v5    # "userId":I
    :cond_19
    invoke-direct {p0, v5}, getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1485
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_50

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_50

    const/4 v2, 0x1

    .line 1487
    .local v2, "isMP":Z
    :goto_2a
    if-eqz v2, :cond_52

    .line 1488
    invoke-direct {p0, v5}, getManagedProfileAlias(I)Ljava/lang/String;

    move-result-object p1

    .line 1494
    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_30
    :goto_30
    if-eqz p1, :cond_57

    .line 1495
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "nsize":I
    :goto_39
    if-ge v0, v3, :cond_57

    .line 1496
    iget-object v7, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1498
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1495
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1485
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v3    # "nsize":I
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    .restart local v5    # "userId":I
    :cond_50
    const/4 v2, 0x0

    goto :goto_2a

    .line 1490
    .restart local v2    # "isMP":Z
    :cond_52
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_57
    move-object v1, v6

    .line 1502
    goto :goto_18
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1466
    const/4 v1, 0x0

    .line 1467
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1468
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_d

    .line 1469
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 1471
    :cond_d
    return-object v1
.end method

.method private getPadded([BI)[B
    .registers 6
    .param p1, "pw"    # [B
    .param p2, "totalLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 288
    new-array v0, p2, [B

    .line 289
    .local v0, "padded":[B
    invoke-static {v0, v2, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 291
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 293
    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1455
    .local v0, "identity":J
    iget-object v3, p0, mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_12

    iget-object v3, p0, mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1457
    .local v2, "pi":Landroid/content/pm/UserInfo;
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    return-object v2

    .line 1455
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_12
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1251
    if-eqz p1, :cond_6

    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v4, :cond_8

    :cond_6
    const/4 v1, 0x0

    .line 1264
    :goto_7
    return-object v1

    .line 1252
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1253
    .local v2, "token":J
    iget-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 1255
    .local v0, "entry":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    const/4 v1, 0x0

    .line 1257
    .local v1, "resetToken":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 1258
    new-instance v1, Ljava/lang/String;

    .end local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1259
    .restart local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {p0, v0}, zeroOut([B)V

    goto :goto_7

    .line 1261
    :cond_29
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRstTokenFromTima :: entry not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1447
    .local v0, "identity":J
    iget-object v3, p0, mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_12

    iget-object v3, p0, mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1449
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1450
    return-object v2

    .line 1447
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_12
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private handlePkgRemoved(ILjava/lang/String;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3035
    iget-object v6, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z
    invoke-static {v6, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    .line 3038
    iget-object v7, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3039
    :try_start_8
    iget-object v6, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3041
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_e0

    .line 3042
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_e0

    .line 3043
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3045
    .local v3, "id":I
    iget-object v6, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v6, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 3047
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v4, :cond_108

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 3048
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FOUND PACKAGE handlePkgRemoved :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3051
    .local v1, "file":Ljava/io/File;
    iget-object v6, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v8, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10, v4}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v5

    .line 3052
    .local v5, "ret":I
    if-nez v5, :cond_e8

    .line 3053
    iget-object v8, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_e5

    .line 3054
    :try_start_80
    iget-object v6, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 3055
    iget-object v6, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v6, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3056
    iget-object v6, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3058
    invoke-direct {p0, v4}, onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3059
    monitor-exit v8
    :try_end_97
    .catchall {:try_start_80 .. :try_end_97} :catchall_e2

    .line 3060
    :try_start_97
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v8

    invoke-direct {p0, v6, v8}, removeEngineNative(II)I

    move-result v5

    .line 3067
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved engine removed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :goto_c0
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removing dir :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    invoke-direct {p0, v1}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 3081
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :cond_e0
    monitor-exit v7
    :try_end_e1
    .catchall {:try_start_97 .. :try_end_e1} :catchall_e5

    .line 3082
    return-void

    .line 3059
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :catchall_e2
    move-exception v6

    :try_start_e3
    monitor-exit v8
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw v6

    .line 3081
    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :catchall_e5
    move-exception v6

    monitor-exit v7
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e5

    throw v6

    .line 3069
    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :cond_e8
    :try_start_e8
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removeEngine :: failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 3077
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "ret":I
    :cond_108
    const-string v8, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find engine info ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catchall {:try_start_e8 .. :try_end_12c} :catchall_e5

    .line 3042
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11
.end method

.method private handleUserAdded(I)V
    .registers 15
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2924
    if-nez p1, :cond_6

    .line 2990
    :cond_5
    :goto_5
    return-void

    .line 2927
    :cond_6
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2928
    :try_start_9
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2929
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_36

    .line 2931
    if-nez v0, :cond_5

    .line 2937
    invoke-direct {p0, p1}, getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 2938
    .local v11, "ui":Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_39

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2939
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for knox user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2929
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v11    # "ui":Landroid/content/pm/UserInfo;
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2

    .line 2942
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v11    # "ui":Landroid/content/pm/UserInfo;
    :cond_39
    if-eqz v11, :cond_a0

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2943
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is identified as managed profile..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    iget-object v2, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    if-nez v2, :cond_99

    move v8, v7

    .line 2946
    .local v8, "res":Z
    :goto_65
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Base directory has been set up... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Managed profile is not appicable to engine creation... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2944
    .end local v8    # "res":Z
    :cond_99
    iget-object v2, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    move-result v8

    goto :goto_65

    .line 2951
    :cond_a0
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUserAdded for SDP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2953
    .local v1, "alias":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 2957
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/4 v6, 0x4

    move v2, p1

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2966
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v2, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v10

    .line 2967
    .local v10, "rstToken":Ljava/lang/String;
    invoke-direct {p0, v0, v12, v10}, createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 2968
    .local v7, "cmk":[B
    if-nez v7, :cond_f3

    .line 2969
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create keys for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2974
    :cond_f3
    iget-object v12, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2976
    :try_start_f6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v9

    .line 2978
    .local v9, "ret":I
    monitor-exit v12
    :try_end_106
    .catchall {:try_start_f6 .. :try_end_106} :catchall_12d

    .line 2980
    invoke-direct {p0, v7}, zeroOut([B)V

    .line 2982
    if-eqz v9, :cond_130

    .line 2983
    invoke-virtual {p0, v0}, removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2984
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2978
    .end local v9    # "ret":I
    :catchall_12d
    move-exception v2

    :try_start_12e
    monitor-exit v12
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw v2

    .line 2988
    .restart local v9    # "ret":I
    :cond_130
    iget-object v2, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    goto/16 :goto_5
.end method

.method private handleUserRemoved(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2993
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2994
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    :goto_e
    return-void

    .line 2998
    :cond_f
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2999
    :try_start_12
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3000
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_22

    .line 3002
    if-nez v0, :cond_25

    .line 3003
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3000
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2

    .line 3007
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_25
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    iget-object v2, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 3010
    .local v1, "ret":I
    if-nez v1, :cond_a2

    .line 3011
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3012
    :try_start_5d
    iget-object v2, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3013
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3014
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3016
    invoke-direct {p0, v0}, onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3017
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_9f

    .line 3018
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, removeEngineNative(II)I

    move-result v1

    .line 3025
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3017
    :catchall_9f
    move-exception v2

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v2

    .line 3027
    :cond_a2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1668
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isLicensed()Z
    .registers 5

    .prologue
    .line 1657
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1679
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .registers 7

    .prologue
    .line 3607
    sget-object v3, sContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3609
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    .line 3611
    .local v2, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    const/4 v1, 0x0

    .line 3612
    .local v1, "isPwdChangeRequested":Z
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_19

    .line 3614
    const/4 v1, 0x1

    .line 3616
    :cond_19
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    return v1
.end method

.method private isSdpUserZeroSupported()Z
    .registers 2

    .prologue
    .line 1631
    const/4 v0, 0x1

    return v0
.end method

.method private isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1119
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v5

    if-nez v5, :cond_25

    .line 1120
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not a default engine... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :goto_24
    return v3

    .line 1124
    :cond_25
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v2

    .line 1125
    .local v2, "userId":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: User : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    if-nez p2, :cond_78

    move v0, v4

    .line 1128
    .local v0, "noCredential":Z
    :goto_54
    if-eqz v0, :cond_e2

    .line 1132
    iget-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1133
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Lowest security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1134
    goto :goto_24

    .end local v0    # "noCredential":Z
    :cond_78
    move v0, v3

    .line 1127
    goto :goto_54

    .line 1139
    .restart local v0    # "noCredential":Z
    :cond_7a
    iget-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1141
    .local v1, "quality":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: Quality for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    if-nez v1, :cond_bf

    .line 1143
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Very low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1144
    goto/16 :goto_24

    .line 1149
    :cond_bf
    iget-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 1150
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1151
    goto/16 :goto_24

    .line 1154
    .end local v1    # "quality":I
    :cond_e2
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not applicable... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24
.end method

.method private isSupportedDevice()Z
    .registers 2

    .prologue
    .line 1685
    const/4 v0, 0x1

    return v0
.end method

.method private isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .registers 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1641
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .registers 14
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xe

    const/4 v8, 0x1

    .line 1060
    if-nez p1, :cond_8

    const/4 v6, -0x7

    .line 1115
    :goto_7
    return v6

    .line 1062
    :cond_8
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1063
    .local v0, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v5

    .line 1064
    .local v5, "userId":I
    const-string v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lockInternal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-direct {p0, v0, v5}, lockNative(II)I

    move-result v3

    .line 1072
    .local v3, "ret":I
    if-eqz v3, :cond_68

    .line 1073
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed ret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/16 v6, -0xc

    goto :goto_7

    .line 1077
    :cond_68
    invoke-direct {p0, v0}, clearCachedMasterKey(I)V

    .line 1078
    invoke-direct {p0, v0}, clearResetPasswordKey(I)V

    .line 1080
    iget-object v9, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1081
    const/4 v10, 0x1

    :try_start_72
    invoke-direct {p0, p1, v10}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1082
    monitor-exit v9
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_bd

    .line 1084
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 1087
    const/4 v1, 0x0

    .line 1088
    .local v1, "quality":I
    const-string/jumbo v9, "lock_settings"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/LockSettingsService;

    .line 1089
    .local v4, "service":Lcom/android/server/LockSettingsService;
    if-eqz v4, :cond_92

    .line 1091
    :try_start_88
    const-string/jumbo v9, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v9, v10, v11, v0}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_90} :catch_da

    move-result-wide v10

    long-to-int v1, v10

    .line 1097
    :cond_92
    :goto_92
    const v9, 0x61000

    if-eq v1, v9, :cond_99

    if-nez v1, :cond_c0

    :cond_99
    move v2, v8

    .line 1100
    .local v2, "qualityNoPassword":Z
    :goto_9a
    if-eqz v2, :cond_d7

    iget-object v9, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 1102
    iget-object v9, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v9

    if-nez v9, :cond_c2

    .line 1103
    const-string v7, "SdpManagerService"

    const-string v8, "couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1082
    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :catchall_bd
    move-exception v6

    :try_start_be
    monitor-exit v9
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v6

    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_c0
    move v2, v7

    .line 1097
    goto :goto_9a

    .line 1107
    .restart local v2    # "qualityNoPassword":Z
    :cond_c2
    iget-object v9, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v8

    if-nez v8, :cond_d7

    .line 1108
    const-string v7, "SdpManagerService"

    const-string v8, "couldn\'t remove KEK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_d7
    move v6, v7

    .line 1115
    goto/16 :goto_7

    .line 1093
    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :catch_da
    move-exception v9

    goto :goto_92
.end method

.method private lockNative(II)I
    .registers 6
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2396
    invoke-static {p1, p2}, nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 2397
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    const/16 v0, -0xc

    .line 2401
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 2581
    iget-object v6, p0, mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2582
    :try_start_3
    iget-object v5, p0, mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2585
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_13

    monitor-exit v6

    .line 2599
    :goto_12
    return-void

    .line 2587
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_41

    .line 2588
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_35

    .line 2590
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_21
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->onEngineRemoved()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_38
    .catchall {:try_start_21 .. :try_end_26} :catchall_35

    .line 2587
    :goto_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 2591
    :catch_29
    move-exception v4

    .line 2592
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2a
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_26

    .line 2598
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v5

    .line 2594
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_38
    move-exception v1

    .line 2595
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_39
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 2598
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_35

    goto :goto_12
.end method

.method private onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I
    .registers 16
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "cmk"    # [B

    .prologue
    const/4 v12, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 2136
    if-nez p1, :cond_a

    const/16 v10, -0xb

    .line 2249
    :goto_9
    return v10

    .line 2138
    :cond_a
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v7

    .line 2141
    .local v7, "currentVersion":I
    if-ne v7, v12, :cond_48

    .line 2142
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: already up to date. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2143
    goto :goto_9

    .line 2146
    :cond_48
    if-nez v7, :cond_65

    .line 2147
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: SDP previously disabled. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2148
    goto :goto_9

    .line 2156
    :cond_65
    if-ne v7, v3, :cond_e8

    .line 2157
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: MIGRATE from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    sget-object v0, sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v8

    .line 2160
    .local v8, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    new-array v6, v5, [Ljava/lang/String;

    const-string v0, "/data/user/$/com.android.email/databases/EmailProviderBody.db"

    aput-object v0, v6, v11

    const-string v0, "Body"

    aput-object v0, v6, v3

    const-string/jumbo v0, "htmlContent,textContent"

    aput-object v0, v6, v4

    .line 2166
    .local v6, "args":[Ljava/lang/String;
    aget-object v0, v6, v11

    const-string v1, "$"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 2167
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    const-string/jumbo v1, "sdp_db"

    const-string/jumbo v2, "set_sensitive_from_db1"

    invoke-virtual {v8, v0, v1, v2, v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2174
    .local v10, "ret":I
    if-nez v10, :cond_103

    .line 2175
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v1, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2177
    add-int/lit8 v7, v7, 0x1

    .line 2178
    :try_start_df
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2179
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2180
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_df .. :try_end_e8} :catchall_100

    .line 2197
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_e8
    :goto_e8
    if-ne v7, v4, :cond_15a

    .line 2198
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 2 -> 3 not implemented (this is targeted for TMR/KMR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    if-nez p2, :cond_12d

    .line 2200
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: failed, CMK required!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/16 v10, -0xd

    goto/16 :goto_9

    .line 2180
    .restart local v6    # "args":[Ljava/lang/String;
    .restart local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v10    # "ret":I
    :catchall_100
    move-exception v0

    :try_start_101
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw v0

    .line 2182
    :cond_103
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Failed in 1st stage... Skip remaining steps other than termination"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Must make it complete all steps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v1, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2186
    add-int/lit8 v7, v7, 0x3

    .line 2187
    :try_start_120
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2188
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2189
    monitor-exit v1

    goto :goto_e8

    :catchall_12a
    move-exception v0

    monitor-exit v1
    :try_end_12c
    .catchall {:try_start_120 .. :try_end_12c} :catchall_12a

    throw v0

    .line 2204
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_12d
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0}, getPadded([BI)[B

    move-result-object v9

    .line 2205
    .local v9, "paddedCmk":[B
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1, v7, v12, v9}, nativeOnMigration(IIII[B)I

    move-result v10

    .line 2207
    .restart local v10    # "ret":I
    invoke-direct {p0, v9}, zeroOut([B)V

    .line 2209
    if-nez v10, :cond_1b3

    .line 2210
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v1, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2212
    add-int/lit8 v7, v7, 0x1

    .line 2213
    :try_start_151
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2214
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2215
    monitor-exit v1
    :try_end_15a
    .catchall {:try_start_151 .. :try_end_15a} :catchall_1b0

    .line 2225
    .end local v9    # "paddedCmk":[B
    .end local v10    # "ret":I
    :cond_15a
    if-ne v7, v5, :cond_1a5

    .line 2226
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 3 -> 4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/16 v10, -0x63

    .line 2229
    .restart local v10    # "ret":I
    iget-object v12, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2231
    :try_start_169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v10

    .line 2233
    monitor-exit v12
    :try_end_17a
    .catchall {:try_start_169 .. :try_end_17a} :catchall_1be

    .line 2235
    if-eqz v10, :cond_17f

    const/4 v0, -0x6

    if-ne v10, v0, :cond_1c4

    .line 2236
    :cond_17f
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngine ret :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v1, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2238
    add-int/lit8 v7, v7, 0x1

    .line 2239
    :try_start_19c
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2240
    iget-object v0, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2241
    monitor-exit v1
    :try_end_1a5
    .catchall {:try_start_19c .. :try_end_1a5} :catchall_1c1

    .line 2248
    .end local v10    # "ret":I
    :cond_1a5
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2249
    goto/16 :goto_9

    .line 2215
    .restart local v9    # "paddedCmk":[B
    .restart local v10    # "ret":I
    :catchall_1b0
    move-exception v0

    :try_start_1b1
    monitor-exit v1
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_1b0

    throw v0

    .line 2217
    :cond_1b3
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const/4 v10, -0x1

    goto/16 :goto_9

    .line 2233
    .end local v9    # "paddedCmk":[B
    :catchall_1be
    move-exception v0

    :try_start_1bf
    monitor-exit v12
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v0

    .line 2241
    :catchall_1c1
    move-exception v0

    :try_start_1c2
    monitor-exit v1
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v0

    .line 2243
    :cond_1c4
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: failed! can\'t create engine for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method private onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V
    .registers 11
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 2560
    iget-object v6, p0, mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2561
    :try_start_3
    iget-object v5, p0, mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2564
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_13

    monitor-exit v6

    .line 2578
    :goto_12
    return-void

    .line 2566
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_41

    .line 2567
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_35

    .line 2569
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_21
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5, p2}, Lcom/sec/sdp/ISdpListener;->onStateChange(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_38
    .catchall {:try_start_21 .. :try_end_26} :catchall_35

    .line 2566
    :goto_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 2570
    :catch_29
    move-exception v4

    .line 2571
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2a
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_26

    .line 2577
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v5

    .line 2573
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_38
    move-exception v1

    .line 2574
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_39
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 2577
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_35

    goto :goto_12
.end method

.method private registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .registers 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2509
    if-nez p1, :cond_5

    const/4 v3, -0x7

    .line 2533
    :goto_4
    return v3

    .line 2511
    :cond_5
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerListener from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-object v4, p0, mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2516
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v1, :cond_4c

    .line 2517
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2518
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    iget-object v4, p0, mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    :cond_4c
    iget-object v4, p0, mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2522
    :try_start_4f
    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)V
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_6c

    .line 2525
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    .line 2526
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2527
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6a} :catch_6f
    .catchall {:try_start_58 .. :try_end_6a} :catchall_6c

    .line 2531
    :goto_6a
    :try_start_6a
    monitor-exit v4

    goto :goto_4

    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catchall_6c
    move-exception v3

    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6c

    throw v3

    .line 2528
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catch_6f
    move-exception v2

    .line 2529
    .local v2, "rex":Landroid/os/RemoteException;
    :try_start_70
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to link to listener death"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_6c

    goto :goto_6a
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 9
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 3596
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3597
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 3598
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_d
    if-ge v4, v5, :cond_1c

    aget-object v2, v0, v4

    .line 3599
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3600
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 3598
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 3603
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3604
    return-void
.end method

.method private removeEngineNative(II)I
    .registers 6
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2465
    invoke-static {p1, p2}, nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 2466
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngineNative :: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/16 v0, -0xc

    .line 2470
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1381
    if-nez p1, :cond_5

    const/4 v3, -0x7

    .line 1416
    :cond_4
    :goto_4
    return v3

    .line 1384
    :cond_5
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 1385
    .local v1, "engineId":I
    const/4 v2, 0x0

    .line 1389
    .local v2, "rstTokenFromTima":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1390
    invoke-direct {p0, p1}, getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object p2

    .line 1391
    const/4 v2, 0x1

    .line 1394
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1395
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v3, -0x2

    goto :goto_4

    .line 1397
    :cond_23
    iget-object v4, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v5, 0x2

    const/16 v6, 0x20

    invoke-virtual {v4, v1, p2, v5, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "encodedCmk":Ljava/lang/String;
    if-eqz v2, :cond_31

    invoke-direct {p0, p2}, zeroOut(Ljava/lang/String;)V

    .line 1404
    :cond_31
    if-eqz v0, :cond_4

    .line 1408
    iget-object v3, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, p3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1411
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "resetPasswordInternal :: failed to storeCMK"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/16 v3, -0xe

    goto :goto_4

    .line 1415
    :cond_47
    invoke-direct {p0, v1, v0}, cacheMasterKey(ILjava/lang/String;)V

    .line 1416
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private saveTokenInternal(ILjava/lang/String;[B)Z
    .registers 8
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "entry"    # [B

    .prologue
    .line 3649
    const/4 v0, 0x0

    .line 3650
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3651
    .local v2, "token":J
    iget-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v0

    .line 3653
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3654
    return v0
.end method

.method private sendBroadcastForStateChange(III)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "engineId"    # I
    .param p3, "state"    # I

    .prologue
    .line 2610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2612
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2614
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2615
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2616
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2617
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2618
    sget-object v1, sContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2619
    return-void
.end method

.method private setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I
    .registers 11
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 1010
    if-nez p1, :cond_4

    const/4 v7, -0x7

    .line 1040
    :goto_3
    return v7

    .line 1012
    :cond_4
    invoke-virtual {p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 1013
    invoke-direct {p0, p1, p2}, onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V

    .line 1019
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v6

    .line 1020
    .local v6, "userId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1021
    .local v0, "engineId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1023
    .local v4, "token":J
    invoke-direct {p0, v6, v0, p2}, sendBroadcastForStateChange(III)V

    .line 1028
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v7

    if-nez v7, :cond_57

    .line 1029
    iget-object v7, p0, mUM:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1030
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_57

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_57

    .line 1031
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1032
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_37

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v6, :cond_37

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_37

    .line 1034
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v0, p2}, sendBroadcastForStateChange(III)V

    goto :goto_37

    .line 1039
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .registers 13
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1273
    if-nez p1, :cond_4

    const/4 v7, -0x7

    .line 1371
    :goto_3
    return v7

    .line 1280
    :cond_4
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    .line 1281
    .local v3, "isDefaultEngine":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1282
    .local v2, "engineId":I
    invoke-direct {p0}, isPwdChangeRequested()Z

    move-result v4

    .line 1283
    .local v4, "isPwdChangeRequested":Z
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal:: isPwdChangeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    if-nez v3, :cond_36

    if-nez v4, :cond_36

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_36

    .line 1285
    const/4 v7, -0x5

    goto :goto_3

    .line 1287
    :cond_36
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1288
    :cond_3e
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1289
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 1297
    const/4 v7, 0x0

    goto :goto_3

    .line 1300
    :cond_4c
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal:: removing ECMK_PWD"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v7, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 1302
    const-string v7, "SdpManagerService"

    const-string v8, "Couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/16 v7, -0xe

    goto :goto_3

    .line 1308
    :cond_6b
    const/4 v7, -0x2

    goto :goto_3

    .line 1313
    :cond_6d
    const/4 v1, 0x0

    .line 1314
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v7, p0, mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1315
    iget-object v7, p0, mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "encodedCmk":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1339
    .restart local v1    # "encodedCmk":Ljava/lang/String;
    :cond_86
    iget-object v7, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 1342
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal :: failed to storeCMK"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/16 v7, -0xe

    goto/16 :goto_3

    .line 1320
    :cond_9b
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 1322
    invoke-direct {p0, p1}, getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1323
    .local v5, "resetToken":Ljava/lang/String;
    if-nez v5, :cond_aa

    .line 1324
    const/4 v7, -0x1

    goto/16 :goto_3

    .line 1326
    :cond_aa
    iget-object v7, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v7, v2, v5, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1328
    invoke-direct {p0, v5}, zeroOut(Ljava/lang/String;)V

    .line 1330
    if-nez v1, :cond_86

    .line 1331
    const/4 v7, -0x1

    goto/16 :goto_3

    .line 1335
    .end local v5    # "resetToken":Ljava/lang/String;
    :cond_bb
    const/16 v7, -0x63

    goto/16 :goto_3

    .line 1348
    :cond_bf
    if-eqz v4, :cond_11e

    .line 1350
    iget-object v7, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1352
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, unlockNative(I[B)I

    move-result v6

    .line 1353
    .local v6, "ret":I
    if-eqz v6, :cond_10d

    .line 1354
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-direct {p0, v2}, clearCachedMasterKey(I)V

    .line 1357
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 1358
    const/16 v7, -0xc

    goto/16 :goto_3

    .line 1361
    :cond_10d
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 1363
    iget-object v8, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1364
    const/4 v7, 0x2

    :try_start_114
    invoke-direct {p0, p1, v7}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1365
    monitor-exit v8

    .line 1371
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :goto_118
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1365
    .restart local v0    # "cmk":[B
    .restart local v6    # "ret":I
    :catchall_11b
    move-exception v7

    monitor-exit v8
    :try_end_11d
    .catchall {:try_start_114 .. :try_end_11d} :catchall_11b

    throw v7

    .line 1368
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :cond_11e
    invoke-direct {p0, v2, v1}, cacheMasterKey(ILjava/lang/String;)V

    goto :goto_118
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .registers 5
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1159
    iget-object v0, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v6, -0x1

    const/16 v10, 0x20

    const/4 v5, -0x2

    .line 1168
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1169
    .local v2, "engineId":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unlock :: Internal... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v1, 0x0

    .line 1172
    .local v1, "encodedCmk":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1174
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1247
    :cond_31
    :goto_31
    return v5

    .line 1177
    :cond_32
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1179
    if-eqz v1, :cond_31

    .line 1182
    invoke-direct {p0, v2, v1}, cacheMasterKey(ILjava/lang/String;)V

    .line 1231
    :goto_3d
    iget-object v5, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1233
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, unlockNative(I[B)I

    move-result v4

    .line 1234
    .local v4, "ret":I
    if-eqz v4, :cond_f2

    .line 1235
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-direct {p0, v2}, clearCachedMasterKey(I)V

    .line 1238
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 1239
    const/16 v5, -0xc

    goto :goto_31

    .line 1200
    .end local v0    # "cmk":[B
    .end local v4    # "ret":I
    :cond_88
    invoke-direct {p0, p1, p2, p3}, isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 1201
    const-string v5, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked from TIMA "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-direct {p0, p1}, getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, "resetToken":Ljava/lang/String;
    if-nez v3, :cond_b8

    .line 1205
    const-string v5, "SdpManagerService"

    const-string/jumbo v7, "unlock :: Invalid reset token"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1206
    goto/16 :goto_31

    .line 1209
    :cond_b8
    iget-object v5, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v2, v3, v11, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-direct {p0, v3}, zeroOut(Ljava/lang/String;)V

    .line 1213
    if-nez v1, :cond_ed

    move v5, v6

    .line 1214
    goto/16 :goto_31

    .line 1217
    .end local v3    # "resetToken":Ljava/lang/String;
    :cond_c6
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked found ECMK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 1221
    iget-object v6, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1224
    if-eqz v1, :cond_31

    .line 1227
    :cond_ed
    invoke-direct {p0, v2, v1}, cacheMasterKey(ILjava/lang/String;)V

    goto/16 :goto_3d

    .line 1242
    .restart local v0    # "cmk":[B
    .restart local v4    # "ret":I
    :cond_f2
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 1244
    iget-object v6, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1245
    const/4 v5, 0x2

    :try_start_f9
    invoke-direct {p0, p1, v5}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1246
    monitor-exit v6

    .line 1247
    const/4 v5, 0x0

    goto/16 :goto_31

    .line 1246
    :catchall_100
    move-exception v5

    monitor-exit v6
    :try_end_102
    .catchall {:try_start_f9 .. :try_end_102} :catchall_100

    throw v5
.end method

.method private unlockNative(I[B)I
    .registers 6
    .param p1, "id"    # I
    .param p2, "cmk"    # [B

    .prologue
    .line 2414
    if-eqz p2, :cond_7

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_a

    .line 2415
    :cond_7
    const/16 v0, -0xb

    .line 2422
    :goto_9
    return v0

    .line 2417
    :cond_a
    invoke-static {p1, p2}, nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 2418
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/16 v0, -0xc

    goto :goto_9

    .line 2422
    :cond_2c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .registers 11
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, -0x1

    .line 3733
    if-nez p1, :cond_6

    const/4 v4, -0x7

    .line 3760
    :cond_5
    :goto_5
    return v4

    .line 3734
    :cond_6
    if-eqz p2, :cond_5

    .line 3736
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 3737
    .local v2, "engineId":I
    const/4 v1, 0x0

    .line 3739
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v5, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v6, 0x20

    invoke-virtual {v5, v2, p2, v7, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 3741
    if-eqz v1, :cond_5

    .line 3744
    invoke-direct {p0, v2, v1}, cacheMasterKey(ILjava/lang/String;)V

    .line 3746
    iget-object v4, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 3748
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, unlockNative(I[B)I

    move-result v3

    .line 3749
    .local v3, "ret":I
    if-eqz v3, :cond_62

    .line 3750
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 3753
    const/16 v4, -0xc

    goto :goto_5

    .line 3756
    :cond_62
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 3757
    iget-object v5, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3758
    const/4 v4, 0x2

    :try_start_69
    invoke-direct {p0, p1, v4}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 3759
    monitor-exit v5

    .line 3760
    const/4 v4, 0x0

    goto :goto_5

    .line 3759
    :catchall_6f
    move-exception v4

    monitor-exit v5
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_6f

    throw v4
.end method

.method private unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .registers 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2537
    if-nez p1, :cond_5

    const/4 v3, -0x7

    .line 2556
    :goto_4
    return v3

    .line 2539
    :cond_5
    iget-object v4, p0, mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2540
    :try_start_8
    iget-object v5, p0, mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2543
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v2, :cond_1b

    monitor-exit v4

    goto :goto_4

    .line 2554
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catchall_18
    move-exception v3

    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v3

    .line 2545
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    .line 2546
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_1f

    .line 2547
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2548
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1f

    .line 2552
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :cond_47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_56

    .line 2553
    iget-object v5, p0, mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    :cond_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_18

    goto :goto_4
.end method

.method private zeroOut(Ljava/lang/String;)V
    .registers 2
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 305
    if-eqz p1, :cond_6

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 307
    const/4 p1, 0x0

    .line 309
    :cond_6
    return-void
.end method

.method private zeroOut([B)V
    .registers 4
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 297
    if-nez p1, :cond_4

    .line 301
    :goto_3
    return-void

    .line 298
    :cond_4
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 300
    const/4 p1, 0x0

    .line 301
    goto :goto_3
.end method


# virtual methods
.method public addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .registers 29
    .param p1, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "rstToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 369
    .local v6, "userId":I
    invoke-direct/range {p0 .. p0}, isSupportedDevice()Z

    move-result v7

    if-nez v7, :cond_18

    .line 370
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/16 v23, -0x3

    .line 493
    :goto_17
    return v23

    .line 374
    :cond_18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 375
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 376
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 377
    .local v18, "myPid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    .line 378
    .local v19, "myUid":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez p1, :cond_9b

    .line 384
    const-string v7, "SdpManagerService"

    const-string v8, "addEngine :: invalid arg"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v23, -0xb

    goto/16 :goto_17

    .line 388
    :cond_9b
    const-string v7, "SdpManagerService"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 396
    :cond_b4
    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "alias":Ljava/lang/String;
    :goto_b8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c7

    .line 401
    const/16 v23, -0xb

    goto/16 :goto_17

    .line 398
    .end local v4    # "alias":Ljava/lang/String;
    :cond_c2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "alias":Ljava/lang/String;
    goto :goto_b8

    .line 403
    :cond_c7
    const-string v20, ""

    .line 405
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, assignEngineId(Ljava/lang/String;)I

    move-result v5

    .line 406
    .local v5, "newId":I
    sget-object v7, sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 407
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_109

    .line 408
    move-object/from16 v13, v22

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_e2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_109

    aget-object v21, v13, v16

    .line 409
    .local v21, "pkgName":Ljava/lang/String;
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: calling getPackagesForUid  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v20, v21

    .line 408
    add-int/lit8 v16, v16, 0x1

    goto :goto_e2

    .line 414
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "pkgName":Ljava/lang/String;
    :cond_109
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding engine :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, mSdpEngineDbLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 417
    :try_start_132
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v7

    if-eqz v7, :cond_160

    .line 418
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: failed.. engine["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v23, -0x6

    monitor-exit v24

    goto/16 :goto_17

    .line 494
    :catchall_15d
    move-exception v7

    monitor-exit v24
    :try_end_15f
    .catchall {:try_start_132 .. :try_end_15f} :catchall_15d

    throw v7

    .line 426
    :cond_160
    :try_start_160
    new-instance v3, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getFlags()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 435
    .local v3, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_184

    .line 442
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_19e

    .line 443
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_17

    .line 451
    :cond_184
    invoke-direct/range {p0 .. p0}, isLicensed()Z

    move-result v7

    if-nez v7, :cond_19e

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_19e

    .line 453
    const-string v7, "SdpManagerService"

    const-string v8, "Permission denied to invoke engine control API"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_17

    .line 459
    :cond_19e
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_1cc

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-nez v7, :cond_1cc

    .line 460
    if-eqz p2, :cond_1b2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1b7

    .line 461
    :cond_1b2
    const/16 v23, -0x2

    monitor-exit v24

    goto/16 :goto_17

    .line 462
    :cond_1b7
    if-eqz p3, :cond_1c7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1cc

    .line 463
    :cond_1c7
    const/16 v23, -0x1

    monitor-exit v24

    goto/16 :goto_17

    .line 466
    :cond_1cc
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    .line 467
    .local v12, "cmk":[B
    if-nez v12, :cond_1fa

    .line 468
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to create keys for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v23, -0xc

    monitor-exit v24

    goto/16 :goto_17

    .line 472
    :cond_1fa
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v7, p0

    move-object v8, v3

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v23

    .line 476
    .local v23, "ret":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, zeroOut([B)V

    .line 477
    if-eqz v23, :cond_217

    .line 478
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 493
    :cond_217
    monitor-exit v24
    :try_end_218
    .catchall {:try_start_160 .. :try_end_218} :catchall_15d

    goto/16 :goto_17
.end method

.method public addEngineNative(II[B)Z
    .registers 8
    .param p1, "engineId"    # I
    .param p2, "userId"    # I
    .param p3, "cmk"    # [B

    .prologue
    const/4 v0, 0x0

    .line 2262
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2263
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :goto_e
    return v0

    .line 2267
    :cond_f
    if-eqz p3, :cond_16

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2f

    .line 2268
    :cond_16
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: invalid cmk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2272
    :cond_2f
    invoke-static {p1, p2, p3}, nativeOnUserAdded(II[B)I

    move-result v1

    if-eqz v1, :cond_4e

    .line 2273
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: native failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2277
    :cond_4e
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1554
    iget-object v1, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1555
    :try_start_3
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1556
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1557
    if-nez v4, :cond_f

    .line 1558
    const/4 v6, -0x7

    .line 1564
    .local v6, "ret":I
    :goto_b
    return v6

    .line 1556
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0

    .line 1560
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_f
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_b
.end method

.method public boot(I)I
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 581
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_f

    .line 582
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v0, -0x3

    .line 585
    :goto_e
    return v0

    :cond_f
    invoke-direct {p0, p1}, bootInternal(I)I

    move-result v0

    goto :goto_e
.end method

.method public changeCMKNative(I[B[B)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v0, -0xb

    .line 2436
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2437
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/4 v0, -0x3

    .line 2453
    :cond_10
    :goto_10
    return v0

    .line 2440
    :cond_11
    const-string v1, "changeCMKNative"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2442
    if-eqz p2, :cond_10

    .line 2445
    if-eqz p3, :cond_10

    array-length v1, p3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 2448
    invoke-static {p1, p2, p3}, nativeOnChangePassword(I[B[B)I

    move-result v0

    if-eqz v0, :cond_40

    .line 2449
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCMKNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/16 v0, -0xc

    goto :goto_10

    .line 2453
    :cond_40
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2880
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2881
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2900
    :cond_10
    :goto_10
    return v5

    .line 2884
    :cond_11
    new-array v4, v5, [Ljava/lang/String;

    .line 2885
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "cache"

    aput-object v1, v4, v8

    .line 2887
    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2889
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 2890
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 2892
    .local v7, "retExtPart":Z
    if-nez v6, :cond_38

    .line 2893
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2894
    goto :goto_10

    .line 2895
    :cond_38
    if-nez v7, :cond_10

    .line 2896
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2897
    goto :goto_10
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2852
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2853
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :goto_f
    return v5

    .line 2856
    :cond_10
    new-array v4, v8, [Ljava/lang/String;

    .line 2857
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "/"

    aput-object v1, v4, v5

    .line 2859
    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2861
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 2865
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 2867
    .local v7, "retExtPart":Z
    if-nez v6, :cond_36

    .line 2868
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2870
    :cond_36
    if-nez v7, :cond_40

    .line 2871
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_40
    move v5, v8

    .line 2875
    goto :goto_f
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2905
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2906
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const/4 v1, -0x3

    .line 2914
    :goto_e
    return v1

    .line 2909
    :cond_f
    iget-object v1, p0, mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z
    invoke-static {v1, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1700(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v0

    .line 2911
    .local v0, "ret":Z
    if-eqz v0, :cond_19

    .line 2912
    const/4 v1, 0x0

    goto :goto_e

    .line 2914
    :cond_19
    const/16 v1, -0xc

    goto :goto_e
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .registers 6
    .param p1, "nameTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3659
    const-string/jumbo v3, "deleteToeknFromTrusted"

    invoke-static {v3}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3660
    const/16 v1, -0x63

    .line 3661
    .local v1, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3662
    const/16 v3, -0xb

    .line 3669
    :goto_10
    return v3

    .line 3664
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3665
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3667
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3668
    const/4 v1, 0x0

    :cond_31
    move v3, v1

    .line 3669
    goto :goto_10
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1572
    iget-object v1, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1573
    :try_start_3
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1574
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1575
    if-nez v4, :cond_f

    .line 1576
    const/4 v6, -0x7

    .line 1582
    .local v6, "ret":I
    :goto_b
    return v6

    .line 1574
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0

    .line 1578
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_f
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_b
.end method

.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3768
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3769
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    const/4 v1, -0x3

    .line 3787
    :goto_e
    return v1

    .line 3773
    :cond_f
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3774
    :try_start_12
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3775
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_37

    .line 3776
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_e

    .line 3779
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_34

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_37
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 3784
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 3785
    const/4 v1, -0x8

    goto :goto_e

    .line 3787
    :cond_40
    invoke-direct {p0, v0, p2, p3}, enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_e
.end method

.method public exists(Ljava/lang/String;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1530
    const/4 v1, -0x7

    .line 1532
    .local v1, "ret":I
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1533
    :try_start_4
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1534
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3

    .line 1535
    if-eqz v0, :cond_c

    .line 1536
    const/4 v1, -0x6

    .line 1537
    :cond_c
    return v1

    .line 1534
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_d
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2821
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v5

    if-nez v5, :cond_12

    .line 2822
    const-string v5, "SdpManagerService"

    const-string v6, "SDP not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :goto_11
    return-object v2

    .line 2825
    :cond_12
    new-array v0, v6, [Ljava/lang/String;

    .line 2826
    .local v0, "dataCacheArray":[Ljava/lang/String;
    const-string v5, "/"

    aput-object v5, v0, v11

    .line 2827
    const-string v5, "cache"

    aput-object v5, v0, v10

    .line 2829
    sget-object v5, sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    .line 2831
    .local v1, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v3

    .line 2832
    .local v3, "retDataPartInfo":[J
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v4

    .line 2834
    .local v4, "retExtPartInfo":[J
    if-eqz v3, :cond_38

    if-eqz v4, :cond_38

    array-length v5, v3

    if-ne v5, v6, :cond_38

    array-length v5, v4

    if-eq v5, v6, :cond_40

    .line 2836
    :cond_38
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to get size info!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2840
    :cond_40
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 2842
    .local v2, "pStats":Landroid/content/pm/PackageStats;
    aget-wide v6, v3, v11

    aget-wide v8, v3, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 2843
    aget-wide v6, v3, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 2844
    aget-wide v6, v4, v11

    aget-wide v8, v4, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 2845
    aget-wide v6, v4, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    goto :goto_11
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 567
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, 0x0

    .line 577
    :goto_e
    return-object v0

    .line 573
    :cond_f
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 574
    :try_start_12
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 575
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    goto :goto_e

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getSupportedSDKVersion()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1542
    const-wide/16 v0, 0x0

    .line 1543
    .local v0, "ret":D
    invoke-direct {p0}, isSdpUserZeroSupported()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1544
    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 1546
    :cond_d
    return-wide v0
.end method

.method public isLicensed(Ljava/lang/String;)I
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1519
    invoke-direct {p0}, isLicensed()Z

    move-result v0

    .line 1520
    .local v0, "res":Z
    if-eqz v0, :cond_8

    .line 1521
    const/4 v1, 0x0

    .line 1523
    :goto_7
    return v1

    :cond_8
    const/16 v1, -0x63

    goto :goto_7
.end method

.method public isLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1424
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1425
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v1, -0x3

    .line 1442
    :cond_f
    :goto_f
    return v1

    .line 1432
    :cond_10
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1433
    :try_start_13
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1434
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    .line 1436
    if-nez v0, :cond_1f

    .line 1437
    const/4 v1, -0x7

    goto :goto_f

    .line 1434
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v1

    .line 1439
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1f
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v2

    if-ne v2, v1, :cond_f

    .line 1440
    const/4 v1, -0x5

    goto :goto_f
.end method

.method public isSDPEnabled(I)Z
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_8

    .line 319
    :cond_7
    :goto_7
    return v0

    .line 316
    :cond_8
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 317
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSdpMigrating(I)Z
    .registers 6
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_f

    .line 344
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_e
    return v1

    .line 348
    :cond_f
    const-string/jumbo v2, "isSdpMigrating"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 350
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_18
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 352
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_23

    monitor-exit v2

    goto :goto_e

    .line 355
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v1

    .line 354
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_23
    :try_start_23
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMigrating()Z

    move-result v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    goto :goto_e
.end method

.method public isSdpSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1627
    invoke-direct {p0}, isSdpUserZeroSupported()Z

    move-result v0

    return v0
.end method

.method public lock(Ljava/lang/String;)I
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 591
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_10

    .line 592
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, -0x3

    .line 628
    :cond_f
    :goto_f
    return v1

    .line 597
    :cond_10
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 598
    :try_start_13
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 599
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_38

    .line 600
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_f

    .line 603
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_35

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 605
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 610
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 628
    :cond_45
    invoke-direct {p0, v0}, lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    goto :goto_f

    .line 620
    :cond_4a
    invoke-direct {p0, v0}, isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 623
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public migrate(Ljava/lang/String;)I
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 807
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_f

    .line 808
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v0, -0x3

    .line 812
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public onBoot(I)I
    .registers 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/sdp/exception/SdpVersionException;
        }
    .end annotation

    .prologue
    .line 2624
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2625
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const/4 v1, -0x3

    .line 2640
    :goto_e
    return v1

    .line 2628
    :cond_f
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBoot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    const-string/jumbo v1, "onBoot"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2631
    invoke-direct {p0, p1}, bootNative(I)I

    move-result v0

    .line 2632
    .local v0, "ret":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_3b

    .line 2634
    new-instance v1, Lcom/android/sdp/exception/SdpVersionException;

    invoke-direct {v1}, Lcom/android/sdp/exception/SdpVersionException;-><init>()V

    throw v1

    .line 2637
    :cond_3b
    if-nez v0, :cond_3f

    .line 2638
    const/4 v1, 0x0

    goto :goto_e

    .line 2640
    :cond_3f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public onChangePassword(I[B[B)Z
    .registers 10
    .param p1, "personaId"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 2698
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2699
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :goto_10
    return v2

    .line 2702
    :cond_11
    const-string/jumbo v3, "onChangePassword"

    invoke-static {v3}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2704
    invoke-direct {p0, p2, v4}, getPadded([BI)[B

    move-result-object v1

    .line 2705
    .local v1, "paddedOldCmk":[B
    invoke-direct {p0, p3, v4}, getPadded([BI)[B

    move-result-object v0

    .line 2707
    .local v0, "paddedNewCmk":[B
    invoke-static {p1, v1, v0}, nativeOnChangePassword(I[B[B)I

    move-result v3

    if-eqz v3, :cond_44

    .line 2708
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle onChangePassword [persona : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2711
    :cond_44
    invoke-direct {p0, v1}, zeroOut([B)V

    .line 2712
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 2714
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public onDeviceLocked(I)Z
    .registers 9
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2645
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2646
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :goto_f
    return v2

    .line 2649
    :cond_10
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const-string/jumbo v4, "onDeviceLocked"

    invoke-static {v4}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2652
    invoke-direct {p0, p1, p1}, lockNative(II)I

    move-result v1

    .line 2653
    .local v1, "ret":I
    if-eqz v1, :cond_4f

    .line 2654
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockInternal failed ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2658
    :cond_4f
    iget-object v4, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2659
    :try_start_52
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2660
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_5d

    monitor-exit v4

    goto :goto_f

    .line 2662
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_5a
    move-exception v2

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v2

    .line 2661
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_5d
    const/4 v2, 0x1

    :try_start_5e
    invoke-direct {p0, v0, v2}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2662
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_5a

    move v2, v3

    .line 2664
    goto :goto_f
.end method

.method public onDeviceUnlocked(I[B)Z
    .registers 10
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2669
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2670
    const-string v4, "SdpManagerService"

    const-string v5, "SDP not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :goto_e
    return v3

    .line 2673
    :cond_f
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceUnLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    const-string/jumbo v4, "onDeviceUnlocked"

    invoke-static {v4}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2676
    const/16 v4, 0x20

    invoke-direct {p0, p2, v4}, getPadded([BI)[B

    move-result-object v1

    .line 2678
    .local v1, "paddedCmk":[B
    invoke-direct {p0, p1, v1}, unlockNative(I[B)I

    move-result v2

    .line 2679
    .local v2, "ret":I
    if-eqz v2, :cond_54

    .line 2680
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative failed ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2684
    :cond_54
    invoke-direct {p0, v1}, zeroOut([B)V

    .line 2686
    iget-object v4, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2687
    :try_start_5a
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2688
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_65

    monitor-exit v4

    goto :goto_e

    .line 2690
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_62

    throw v3

    .line 2689
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_65
    const/4 v3, 0x2

    :try_start_66
    invoke-direct {p0, v0, v3}, setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2690
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_62

    .line 2692
    const/4 v3, 0x1

    goto :goto_e
.end method

.method public onMigration(IZ[B)Z
    .registers 8
    .param p1, "personaId"    # I
    .param p2, "isMinor"    # Z
    .param p3, "cmk"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2796
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2797
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :goto_e
    return v1

    .line 2802
    :cond_f
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2803
    :try_start_12
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2804
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_21

    .line 2805
    if-nez v0, :cond_24

    .line 2806
    const-string v2, "SdpManagerService"

    const-string v3, "can\'t find SDP INFO xml. Migration failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2804
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 2810
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_24
    invoke-direct {p0, v0, p3}, onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_33

    .line 2811
    const-string v1, "SdpManagerService"

    const-string v2, "Migration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/4 v1, 0x1

    goto :goto_e

    .line 2815
    :cond_33
    const-string v2, "SdpManagerService"

    const-string v3, "Migration OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public onUserAdded(I[BI)Z
    .registers 13
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B
    .param p3, "flags"    # I

    .prologue
    .line 2719
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2720
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const/4 v2, 0x0

    .line 2754
    :goto_e
    return v2

    .line 2723
    :cond_f
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserAdded :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    const-string/jumbo v2, "onUserAdded"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2726
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2727
    .local v1, "alias":Ljava/lang/String;
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v2, p1

    move v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2743
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/16 v2, 0x20

    invoke-direct {p0, p2, v2}, getPadded([BI)[B

    move-result-object v7

    .line 2746
    .local v7, "paddedCmk":[B
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2750
    .local v8, "ret":I
    invoke-direct {p0, v7}, zeroOut([B)V

    .line 2751
    if-eqz v8, :cond_59

    .line 2752
    const/4 v2, 0x0

    goto :goto_e

    .line 2754
    :cond_59
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public onUserRemoved(I)Z
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2760
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2761
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :goto_e
    return v2

    .line 2764
    :cond_f
    const-string/jumbo v3, "onUserRemoved"

    invoke-static {v3}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2765
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUserRemoved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2769
    :try_start_31
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2770
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_41

    .line 2771
    if-nez v0, :cond_44

    .line 2772
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onUserRemoved :: no engine found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2770
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2

    .line 2776
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_44
    iget-object v2, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 2777
    .local v1, "ret":I
    if-nez v1, :cond_9e

    .line 2778
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2779
    :try_start_59
    iget-object v2, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2780
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2781
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2783
    invoke-direct {p0, v0}, onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2784
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_9b

    .line 2786
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, removeEngineNative(II)I

    .line 2787
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :goto_98
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 2784
    :catchall_9b
    move-exception v2

    :try_start_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v2

    .line 2789
    :cond_9e
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98
.end method

.method public registerListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 764
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v1, -0x3

    .line 780
    :goto_e
    return v1

    .line 768
    :cond_f
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 775
    :try_start_1a
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 776
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_26

    .line 777
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_e

    .line 778
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 780
    invoke-direct {p0, v0, p2}, registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_e
.end method

.method public removeEngine(Ljava/lang/String;)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x8

    .line 499
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_10

    .line 500
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, -0x3

    .line 561
    :cond_f
    :goto_f
    return v1

    .line 505
    :cond_10
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 506
    :try_start_13
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 507
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_24

    .line 508
    if-nez v0, :cond_27

    .line 509
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v1, -0x7

    goto :goto_f

    .line 507
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 513
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_27
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 518
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 534
    :cond_33
    iget-object v2, p0, mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 535
    .local v1, "ret":I
    if-nez v1, :cond_a4

    .line 536
    iget-object v3, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 537
    :try_start_48
    iget-object v2, p0, mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 538
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 539
    iget-object v2, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 541
    invoke-direct {p0, v0}, onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 542
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_a1

    .line 543
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, removeEngineNative(II)I

    move-result v1

    .line 554
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_88
    invoke-virtual {p0, v0}, removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    goto :goto_f

    .line 527
    .end local v1    # "ret":I
    :cond_8c
    invoke-direct {p0, v0}, isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 529
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 542
    .restart local v1    # "ret":I
    :catchall_a1
    move-exception v2

    :try_start_a2
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v2

    .line 556
    :cond_a4
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88
.end method

.method removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .registers 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 970
    if-eqz p1, :cond_9a

    .line 971
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_6e

    .line 974
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 975
    .local v2, "type":I
    iget-object v3, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 976
    iget-object v3, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    .line 977
    iget-object v3, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    .line 978
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: Key pair of #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 981
    .end local v2    # "type":I
    :cond_6e
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_99

    .line 982
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 983
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 987
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_99
    :goto_99
    return-void

    .line 986
    :cond_9a
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "removeKeys :: Failed. info null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "rstToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 720
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_10

    .line 721
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v1, -0x3

    .line 757
    :cond_f
    :goto_f
    return v1

    .line 726
    :cond_10
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 727
    :try_start_13
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 728
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_38

    .line 729
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_f

    .line 732
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_35

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 734
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 739
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 757
    :cond_45
    invoke-direct {p0, v0, p2, p3}, resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_f

    .line 749
    :cond_4a
    invoke-direct {p0, v0}, isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 752
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3631
    const-string/jumbo v4, "saveTokenIntoTrusted"

    invoke-static {v4}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3633
    const/16 v2, -0x63

    .line 3634
    .local v2, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3635
    :cond_14
    const/16 v4, -0xb

    .line 3645
    :goto_16
    return v4

    .line 3637
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3638
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3639
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3641
    .local v1, "entry":[B
    invoke-direct {p0, v3, v0}, deleteTokenInternal(ILjava/lang/String;)Z

    .line 3643
    invoke-direct {p0, v3, v0, v1}, saveTokenInternal(ILjava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3644
    const/4 v2, 0x0

    :cond_3e
    move v4, v2

    .line 3645
    goto :goto_16
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 677
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_10

    .line 678
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, -0x3

    .line 714
    :cond_f
    :goto_f
    return v1

    .line 683
    :cond_10
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 684
    :try_start_13
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 685
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_38

    .line 686
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_f

    .line 689
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_35

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 691
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 696
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 714
    :cond_45
    invoke-direct {p0, v0, p2}, setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v1

    goto :goto_f

    .line 706
    :cond_4a
    invoke-direct {p0, v0}, isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 709
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setSDPMigrating(IZ)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "isSdpMigrating"    # Z

    .prologue
    .line 323
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_e

    .line 324
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_d
    return-void

    .line 328
    :cond_e
    const-string/jumbo v1, "setSDPMigrating"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 329
    iput-boolean p2, p0, mWaitForPassword:Z

    .line 331
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_19
    invoke-direct {p0, p1}, getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 333
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_24

    monitor-exit v2

    goto :goto_d

    .line 337
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v1

    .line 335
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_24
    :try_start_24
    invoke-virtual {v0, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 336
    iget-object v1, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 337
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    .line 339
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSDPMigrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 271
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 272
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_e
    return-void

    .line 276
    :cond_f
    const-string v1, "SdpManagerService"

    const-string v2, "SdpManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    iput-object v1, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 279
    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 280
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 634
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_10

    .line 635
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v1, -0x3

    .line 671
    :cond_f
    :goto_f
    return v1

    .line 640
    :cond_10
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 641
    :try_start_13
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 642
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_38

    .line 643
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_f

    .line 646
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_35

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 648
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 653
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 671
    :cond_45
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v1

    goto :goto_f

    .line 663
    :cond_4b
    invoke-direct {p0, v0}, isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 666
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "engineAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x8

    .line 3686
    const-string/jumbo v8, "unlockViaTrusted"

    invoke-static {v8}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3688
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v8

    if-nez v8, :cond_16

    .line 3689
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    const/4 v7, -0x3

    .line 3729
    :cond_15
    :goto_15
    return v7

    .line 3694
    :cond_16
    iget-object v8, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3695
    :try_start_19
    invoke-direct {p0, p2}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 3696
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v2, :cond_3e

    .line 3697
    const-string v7, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Couldn\'t find engine info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    const/4 v7, -0x7

    monitor-exit v8

    goto :goto_15

    .line 3700
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_3b
    move-exception v7

    monitor-exit v8
    :try_end_3d
    .catchall {:try_start_19 .. :try_end_3d} :catchall_3b

    throw v7

    .restart local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_3e
    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    .line 3708
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v8

    if-nez v8, :cond_15

    .line 3711
    invoke-direct {p0, v2}, isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_5f

    invoke-direct {p0, v2}, isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_5f

    invoke-direct {p0, v2}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 3714
    const-string v8, "SdpManagerService"

    const-string v9, "Permission denied to invoke engine control API"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3719
    :cond_5f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3720
    .local v6, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3721
    .local v0, "alias":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3723
    .local v3, "resetToken":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3724
    .local v4, "token":J
    iget-object v7, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3725
    .local v1, "entry":[B
    if-eqz v1, :cond_8a

    .line 3726
    new-instance v3, Ljava/lang/String;

    .end local v3    # "resetToken":Ljava/lang/String;
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 3728
    .restart local v3    # "resetToken":Ljava/lang/String;
    :cond_8a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3729
    invoke-direct {p0, v2, v3}, unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v7

    goto :goto_15
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 787
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v1, -0x3

    .line 803
    :goto_e
    return v1

    .line 791
    :cond_f
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "unregisterListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 798
    :try_start_1a
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 799
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_26

    .line 800
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_e

    .line 801
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 803
    invoke-direct {p0, v0, p2}, unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_e
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3814
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3815
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    const/4 v1, -0x3

    .line 3833
    :goto_e
    return v1

    .line 3819
    :cond_f
    iget-object v2, p0, mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3820
    :try_start_12
    invoke-direct {p0, p1}, getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3821
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_37

    .line 3822
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_e

    .line 3825
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_34

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_37
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 3830
    invoke-direct {p0, v0}, isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 3831
    const/4 v1, -0x8

    goto :goto_e

    .line 3833
    :cond_40
    invoke-direct {p0, v0, p2, p3}, unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_e
.end method
